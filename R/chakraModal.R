#' @title Modal options
#' @description Options for the modal widget (\code{\link{chakraModal}}).
#'
#' @param closeOnEsc whether to close the modal on pressing the 'esc' key
#' @param isCentered whether to center the modal on screen
#' @param motionPreset transition that should be used for the modal; one of
#'   \code{"scale"}, \code{"none"}, \code{"slideInBottom"}, or
#'   \code{"slideInRight"}
#' @param size modal size, \code{"sm"}, \code{"md"}, \code{"lg"}, \code{"xl"},
#'   \code{"2xl"}, \code{"full"}, \code{"xs"}, \code{"3xl"}, \code{"4xl"},
#'   \code{"5xl"}, or \code{"6xl"}
#' @param ... other attributes of \code{Modal}
#'
#' @return A named list, for usage in \code{\link{chakraModal}}.
#' @export
chakraModalOptions <- function(
  closeOnEsc = TRUE,
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

#' @title Modal widget
#' @description A modal widget.
#'
#' @param inputId widget id
#' @param options named list of options created with
#'   \code{\link{chakraModalOptions}}
#' @param openButton a Chakra button to open the modal
#' @param isOpen whether the modal is initially open
#' @param header a \code{ModalHeader} element
#' @param body a \code{ModalBody} element
#' @param footer a \code{ModalFooter} element; usually it contains
#'   some Chakra buttons (that you can group with \code{Tag$ButtonGroup(...)})
#'
#' @return A widget that can be used in \code{\link{chakraComponent}}.
#' @export
#'
#' @details You can use an \code{action} attribute and a \code{value}
#'   attribute to the Chakra buttons you put in the widget. For example, if
#'   you include the Chakra button
#'   \code{Tag$Button("Close", action = "close", value = "CLOSE")}, clicking
#'   this button will close the modal and will set the Shiny value
#'   \code{"CLOSE"}. Other possible action attributes are \code{"cancel"} to
#'   cancel, \code{"disable"} to disable the modal, and
#'   \code{"remove"} to entirely remove the modal.
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
#'     chakraModal(
#'       inputId = "modal",
#'       openButton = Tag$Button(
#'         colorScheme = "orange",
#'         "Open Modal"
#'       ),
#'       header = Tag$ModalHeader(
#'         fontSize = "lg",
#'         fontWeight = "bold",
#'         "Modal title"
#'       ),
#'       body = Tag$ModalBody(
#'         "Sit nulla est ex deserunt exercitation anim occaecat."
#'       ),
#'       footer = Tag$ModalFooter(
#'         Tag$ButtonGroup(
#'           spacing = "3",
#'           Tag$Button(
#'             action = "close",
#'             value = "CLOSE",
#'             "Close"
#'           ),
#'           Tag$Button(
#'             action = "cancel",
#'             colorScheme = "red",
#'             "Cancel"
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
#'     print(input[["modal"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraModal <- function(
  inputId,
  options = chakraModalOptions(),
  openButton,
  isOpen = FALSE,
  header,
  body,
  footer
){
  stopifnot(isChakraButton(openButton))
  openButton[["attribs"]][["action"]] <- "open"
  stopifnot(isBoolean(isOpen))
  stopifnot(isReactComponent(header))
  stopifnot(isReactComponent(body))
  stopifnot(isReactComponent(footer))
  if(header[["name"]] != "ModalHeader"){
    stop("`header` must be a `ModalHeader` element.", call. = TRUE)
  }
  if(body[["name"]] != "ModalBody"){
    stop("`body` must be a `ModalBody` element.", call. = TRUE)
  }
  if(footer[["name"]] != "ModalFooter"){
    stop("`footer` must be a `ModalFooter` element.", call. = TRUE)
  }
  component <- tags$div(
    id = inputId,
    Tag$Fragment(
      openButton,
      shinyTag(
        name = "Modal",
        attribs = options,
        children = list(
          Tag$ModalOverlay(),
          Tag$ModalContent(
            header,
            Tag$ModalCloseButton(),
            body,
            footer
          )
        )
      )
    )
  )
  component[["widget"]] <- "modal"
  component[["isOpen"]] <- isOpen
  component
}

