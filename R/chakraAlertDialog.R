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
#' @return A named list.
#' @export
chakraAlertDialogOptions <- function(
  closeOnEsc = TRUE,
  colorScheme = "red",
  isCentered = TRUE,
  motionPreset = "scale",
  size = "md",
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


#' Title
#'
#' @param inputId
#'
#' @return
#' @export
#'
#' @examples
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
      stop("")
    }
  }
  stopifnot(isReactComponent(header))
  stopifnot(isReactComponent(body))
  if(header[["name"]] != "AlertDialogHeader"){
    stop("")
  }
  if(body[["name"]] != "AlertDialogBody"){
    stop("")
  }
  component <- tags$div(
    id = inputId,
    Tag$Fragment(
      openButton,
      Tag$AlertDialog(
        Tag$AlertDialogOverlay(
          Tag$AlertDialogContent(
            header,
            body,
            asShinyTag(
              list(
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





#' Title
#'
#' @param inputId
#'
#' @return
#' @export
#'
#' @examples
chakraAlertDialogInput <- function(
  inputId,
  options = chakraAlertDialogOptions(),
  openButton,
  header,
  body,
  footerButtons = chakraButton("Cancel", action = "cancel", value = "cancel")
){
  stopifnot(isChakraButton(openButton))
  openButton[["name"]] <- "OpenButton"
  # if(!is.null(cancelButton)){
  #   if(!isChakraButton(cancelButton)){
  #     stop("")
  #   }
  #   cancelButton[["element"]] <- "CancelButton"
  # }
  if(isChakraButton(footerButtons)){
    footerButtons <- list(footerButtons)
  }else{
    isListOfButtons <-
      all(vapply(footerButtons, isChakraButton, FUN.VALUE = logical(1L)))
    if(!isListOfButtons){
      stop("")
    }
  }
  #footerButtons <- lapply(footerButtons, unclass)
  if(!isChakraBox(header)){
    stop("")
  }
  if(!isChakraBox(body)){
    stop("")
  }
  header[["name"]] <- "AlertDialogHeader"
  body[["name"]] <- "AlertDialogBody"
  component <- Tag$Fragment(
    openButton,
    Tag$AlertDialog(
      Tag$AlertDialogOverlay(
        Tag$AlertDialogContent(
          header,
          body,
          asShinyTag(
            list(
              name = "AlertDialogFooter",
              attribs = list(),
              children = footerButtons
            )
          )
        )
      )
    )
  )
  chakraInput(
    inputId = inputId,
    configuration = list(
      widget = "alertdialog",
      component = unclassComponent(component),
      inputId = inputId
    )
  )
}
