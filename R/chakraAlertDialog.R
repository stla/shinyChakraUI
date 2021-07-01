#' @title Alert dialog options
#' @description Options for the alert dialog widget
#'   (\code{\link{chakraAlertDialog}}).
#'
#' @param closeOnEsc whether to close the modal on pressing the 'esc' key
#' @param colorScheme a chakra color scheme
#' @param isCentered whether to center the modal on screen
#' @param motionPreset transition that should be used for the modal; one of
#'   \code{"scale"}, \code{"none"}, \code{"slideInBottom"}, or
#'   \code{"slideInRight"}
#' @param size modal size, \code{"sm"}, \code{"md"}, \code{"lg"}, \code{"xl"},
#'   \code{"2xl"}, \code{"full"}, \code{"xs"}, \code{"3xl"}, \code{"4xl"},
#'   \code{"5xl"}, or \code{"6xl"}
#' @param ... other attributes
#'
#' @return A named list, for usage in \code{\link{chakraAlertDialog}}.
#' @export
chakraAlertDialogOptions <- function(
  closeOnEsc = TRUE,
  colorScheme = "red",
  isCentered = TRUE,
  motionPreset = "scale",
  size = "md",
  ...
){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  stopifnot(isBoolean(closeOnEsc))
  stopifnot(isBoolean(isCentered))
  list(
    closeOnEsc = closeOnEsc,
    colorScheme = match.arg(colorScheme, chakraColorSchemes()),
    isCentered = isCentered,
    motionPreset = match.arg(
      motionPreset,
      c("scale", "none", "slideInBottom", "slideInRight")
    ),
    size = match.arg(
      size,
      c("sm", "md", "lg", "xl", "2xl", "full", "xs", "3xl", "4xl", "5xl", "6xl")
    ),
    ...
  )
}


#' @title Alert dialog widget
#' @description An alert dialog widget.
#'
#' @param inputId widget id
#' @param options named list of options created with
#'   \code{\link{chakraAlertDialogOptions}}
#' @param openButton a Chakra button to open the alert dialog
#' @param header an \code{AlertDialogHeader} element
#' @param body an \code{AlertDialogBody} element
#' @param footerButtons a Chakra button or a list of chakra buttons
#'
#' @return A widget that can be used in \code{\link{chakraComponent}}.
#' @export
#'
#' @details You can use an \code{action} attribute and a \code{value}
#'   attribute to the Chakra buttons you put in the widget. For example, if
#'   you include the Chakra button
#'   \code{Tag$Button("Cancel", action = "cancel", value = "CANCEL")}, clicking
#'   this button will cancel the alert dialog and will set the Shiny value
#'   \code{"CANCEL"}. Other possible action attributes are \code{"close"} to
#'   close the alert dialog, \code{"disable"} to disable the alert dialog, and
#'   \code{"remove"} to entirely remove the widget.
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
#'     chakraAlertDialog(
#'       inputId = "alertDialog",
#'       openButton = Tag$Button(
#'         leftIcon = Tag$DeleteIcon(),
#'         colorScheme = "red",
#'         "Delete customer"
#'       ),
#'       header = Tag$AlertDialogHeader(
#'         fontSize = "lg",
#'         fontWeight = "bold",
#'         "Delete customer?"
#'       ),
#'       body = Tag$AlertDialogBody(
#'         "Are you sure? You can't undo this action afterwards."
#'       ),
#'       footerButtons = list(
#'         Tag$Button(
#'           action = "cancel",
#'           value = "CANCEL",
#'           "Cancel"
#'         ),
#'         Tag$Button(
#'           action = "disable",
#'           value = "DISABLE",
#'           colorScheme = "red",
#'           ml = 3,
#'           "Disable"
#'         ),
#'         Tag$Button(
#'           action = "remove",
#'           value = "REMOVE",
#'           ml = 3,
#'           "Remove"
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
#'     print(input[["alertDialog"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraAlertDialog <- function(
  inputId,
  options = chakraAlertDialogOptions(),
  openButton,
  header,
  body,
  footerButtons = Tag$Button("Cancel", action = "cancel", value = "cancel")
){
  stopifnot(isChakraButton(openButton))
  openButton[["attribs"]][["action"]] <- "open"
  # openButton[["name"]] <- switch(
  #   openButton[["name"]],
  #   Button = "OpenButton",
  #   IconButton = "OpenIconButton"
  # )
  if(isChakraButton(footerButtons)){
    footerButtons <- list(footerButtons)
  }else{
    isListOfButtons <-
      all(vapply(footerButtons, isChakraButton, FUN.VALUE = logical(1L)))
    if(!isListOfButtons){
      stop(
        "`footerButtons` must be a chakra button or a list of chakra buttons.",
        call. = TRUE
      )
    }
  }
  stopifnot(isReactComponent(header))
  stopifnot(isReactComponent(body))
  if(header[["name"]] != "AlertDialogHeader"){
    stop("`header` must be an `AlertDialogHeader` element.", call. = TRUE)
  }
  if(body[["name"]] != "AlertDialogBody"){
    stop("`body` must be an `AlertDialogBody` element.", call. = TRUE)
  }
  component <- tags$div(
    id = inputId,
    Tag$Fragment(
      openButton,
      shinyTag(
        name = "AlertDialog",
        attribs = options,
        children = list(
          Tag$AlertDialogOverlay(
            Tag$AlertDialogContent(
              header,
              body,
              shinyTag(
                name = "AlertDialogFooter",
                attribs = emptyNamedList,
                children = footerButtons
              )
            )
          )
        )
      )
    )
  )
  component[["widget"]] <- "alertdialog"
  component
}

