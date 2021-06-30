#' @title Drawer options
#' @description Options for the drawer widget
#'   (\code{\link{chakraDrawer}}).
#'
#' @param closeOnEsc whether to close the panel on pressing the 'esc' key
#' @param closeOnOverlayClick whether to close the panel on clicking the overlay
#' @param colorScheme a chakra color scheme
#' @param isCentered whether to center the modal on screen
#' @param isFullHeight if \code{TRUE} and drawer's placement is \code{"top"}
#'   or \code{"bottom"}, the drawer will occupy the viewport height
#' @param motionPreset transition that should be used for the modal; one of
#'   \code{"scale"}, \code{"none"}, \code{"slideInBottom"}, or
#'   \code{"slideInRight"}
#' @param placement placement of the drawer, \code{"top"}, \code{"right"},
#'   \code{"bottom"}, or \code{"left"}
#' @param size modal size, \code{"sm"}, \code{"md"}, \code{"lg"}, \code{"xl"},
#'   \code{"2xl"}, \code{"full"}, \code{"xs"}, \code{"3xl"}, \code{"4xl"},
#'   \code{"5xl"}, or \code{"6xl"}
#' @param ... other attributes
#'
#' @return A named list, for usage in \code{\link{chakraDrawer}}.
#' @export
chakraDrawerOptions <- function(
  closeOnEsc = TRUE,
  closeOnOverlayClick = TRUE,
  colorScheme = NULL,
  isCentered = FALSE,
  isFullHeight = FALSE,
  motionPreset = "scale",
  placement = "right",
  size = "xs",
  ...
){
  if(length(dots <- list(...))){
    namesDots <- names(dots)
    if(is.null(namesDots) || ("" %in% namesDots)){
      stop(
        "The arguments given in `...` must be named.", call. = TRUE
      )
    }
  }
  stopifnot(isBoolean(closeOnEsc))
  stopifnot(isBoolean(closeOnOverlayClick))
  stopifnot(isBoolean(isCentered))
  stopifnot(isBoolean(isFullHeight))
  dropNulls(list(
    closeOnEsc = closeOnEsc,
    closeOnOverlayClick = closeOnOverlayClick,
    colorScheme =
      if(!is.null(colorScheme)) match.arg(colorScheme, chakraColorSchemes()),
    #    id = id,
    isCentered = isCentered,
    isFullHeight = isFullHeight,
    motionPreset = match.arg(
      motionPreset, c("scale", "none", "slideInBottom", "slideInRight")
    ),
    placement = match.arg(placement, c("bottom", "left", "right", "top")),
    size = match.arg(
      size,
      c("sm", "md", "lg", "xl", "2xl", "full", "xs", "3xl", "4xl", "5xl", "6xl")
    ),
    ...
  ))
}

#' @title Drawer widget
#' @description Create a drawer widget, a panel that slides out from the edge
#'   of the screen.
#'
#' @param inputId widget id
#' @param openButton a Chakra button to open the drawer
#' @param options list of options created with \code{\link{chakraDrawerOptions}}
#' @param closeButton Boolean, whether to include a closing button
#' @param header a \code{DrawerHeader} element
#' @param body a \code{DrawerBody} element
#' @param footer a \code{DrawerFooter} element
#'
#' @return A widget to use in \code{\link{chakraComponent}}.
#' @export
#'
#' @details Similarly to \code{\link{chakraAlertDialog}}, you can set an
#'   action attribute and a value attribute to the Chakra buttons you include
#'   in the Chakra drawer.
#'
#' @examples
#' library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'
#'   br(),
#'
#'   chakraComponent(
#'     "mycomponent",
#'
#'     chakraDrawer(
#'       "drawer",
#'       openButton = Tag$Button("Open Drawer"),
#'       options = chakraDrawerOptions(placement = "right"),
#'       header = Tag$DrawerHeader("I'm the header"),
#'       body = Tag$DrawerBody(
#'         Tag$Box("I'm the body")
#'       ),
#'       footer = Tag$DrawerFooter(
#'         Tag$ButtonGroup(
#'           spacing = "6",
#'           Tag$Button(
#'             value = "try me",
#'             "Try me"
#'           ),
#'           Tag$Button(
#'             action = "close",
#'             variant = "outline",
#'             "Close"
#'           )
#'         )
#'       )
#'     )
#'
#'   )
#'
#' )
#'
#' server <- function(input, output, session){
#'
#'   observe({
#'     print(input[["drawer"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraDrawer <- function(
  inputId, openButton, options = chakraDrawerOptions(),
  closeButton = TRUE, header, body, footer
){
  stopifnot(isChakraButton(openButton))
  openButton[["attribs"]][["action"]] <- "open"
  stopifnot(isBoolean(closeButton))
  stopifnot(isReactComponent(header))
  stopifnot(isReactComponent(body))
  stopifnot(isReactComponent(footer))
  if(header[["name"]] != "DrawerHeader"){
    stop("`header` must be a `DrawerHeader` element.", call. = TRUE)
  }
  if(body[["name"]] != "DrawerBody"){
    stop("`body` must be a `DrawerBody` element.", call. = TRUE)
  }
  if(footer[["name"]] != "DrawerFooter"){
    stop("`footer` must be a `DrawerFooter` element.", call. = TRUE)
  }
  drawer <- asShinyTag(list(
    name = "Drawer",
    attribs = options,
    children = list(
      Tag$DrawerOverlay(),
      Tag$DrawerContent(
        if(closeButton) Tag$DrawerCloseButton(),
        header,
        body,
        footer
      )
    )
  ))
  component <- tags$div(
    id = inputId,
    Tag$Fragment(
      openButton,
      drawer
    )
  )
  component[["widget"]] <- "drawer"
  component
}

