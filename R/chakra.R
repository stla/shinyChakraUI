#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
chakraInput <- function(inputId, configuration, default = NULL) {
  createReactShinyInput(
    inputId = inputId,
    class = "chakra",
    dependencies = htmlDependency(
      name = "chakra-input",
      version = "1.0.0",
      src = "www/shinyChakraUI/chakra",
      package = "shinyChakraUI",
      script = "chakra.js"
    ),
    default = default,
    configuration = configuration,
    container = htmltools::tags$div
  )
}

chakraBox <- function(text, ...){
  box <- list(
    props = list(...),
    children = list(text)
  )
  class(box) <- "box"
  box
}

isChakraBox <- function(x){
  inherits(x, "box")
}

chakraIcon <- function(icon, boxSize = "1em", color = "currentColor"){
  icon <- match.arg(icon, chakraIcons())
  list(
    element = paste0(icon, "Icon"),
    props = list(
      boxSize = boxSize,
      color = color
    )
  )
}

chakraButton <- function(
  text,
  id = NULL,
  colorScheme = "gray",
  isFullWidth = FALSE,
  leftIcon = NULL,
  rightIcon = NULL,
  size = "md",
  variant = "solid",
  ...
){
  boxprops <- list(...)
  button <- list(
    element = "Button",
    props = append(
      boxprops,
      dropNulls(list(
        id = id,
        colorScheme = match.arg(colorScheme, chakraColorSchemes()),
        isFullWidth = isFullWidth,
        leftIcon = leftIcon,
        rightIcon = rightIcon,
        size = match.arg(size, c("sm", "md", "lg", "xs")),
        variant = match.arg(
          variant, c("link", "outline", "solid", "ghost", "unstyled")
        )
      ))
    ),
    children = list(text)
  )
  class(button) <- "button"
  button
}

#' Title
#'
#' @param inputId
#'
#' @return
#' @export
#'
#' @examples
chakraAlertInput <- function(inputId) {
  component <- list(
    element = "Alert",
    props = list(
      status = "success",
      variant = "subtle",
      flexDirection = "column",
      alignItems = "center",
      justifyContent = "center",
      textAlign = "center",
      height = "200px"
    ),
    children = list(
      list(
        element = "AlertIcon",
        props = list(
          boxSize = "40px",
          mr = 0
        )
      ),
      list(
        element = "AlertTitle",
        props = list(
          mt = 4,
          mb = 1,
          fontSize = "lg"
        ),
        children = list(
          "Application submitted!"
        )
      ),
      list(
        element = "AlertDescription",
        props = list(
          maxWidth = "sm"
        ),
        children = list(
          "Thanks for submitting your application. Our team will get back to you soon."
        )
      )
    )
  )
  chakraInput(
    inputId = inputId,
    configuration = list(widget = "alert", component = component)
  )
}

chakraAlertDialogOptions <- function(
  closeOnEsc = TRUE,
  colorScheme = "red",
  isCentered = TRUE,
  motionPreset = "scale",
  size = "md"
){
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
    )
  )
}

chakraAlertDialog <- function(
  options = chakraAlertDialogOptions(),
  openButton,
  header,
  body,
  cancelButton = chakraButton("Cancel", id = "cancel"),
  otherFooterButtons = NULL
){
  if(!inherits(openButton, "button")){
    stop("")
  }
  openButton[["element"]] <- "OpenButton"
  if(!is.null(cancelButton)){
    if(!inherits(cancelButton, "button")){
      stop("")
    }
    cancelButton[["element"]] <- "CancelButton"
  }
  if(!is.null(otherFooterButtons)){
    if(inherits(otherFooterButtons, "button")){
      otherFooterButtons <- list(otherFooterButtons)
    }else{
      isListOfButtons <- all(vapply(otherFooterButtons, function(x){
        inherits(x, "button")
      }, FUN.VALUE = logical(1L)))
      if(!isListOfButtons){
        stop("")
      }
    }
  }
  if(!isChakraBox(header)){
    stop("")
  }
  if(!isChakraBox(body)){
    stop("")
  }
  header[["element"]] <- "AlertDialogHeader"
  body[["element"]] <- "AlertDialogBody"
  list(
    element = "Fragment",
    props = list(),
    children = list(
      openButton,
      list(
        element = "AlertDialog",
        props = list(),
        children = list(
          list(
            element = "AlertDialogOverlay",
            props = list(),
            children = list(
              list(
                element = "AlertDialogContent",
                props = list(),
                children = list(
                  header,
                  body,
                  list(
                    element = "AlertDialogFooter",
                    props = list(),
                    children = append(
                      otherFooterButtons,
                      dropNulls(list(cancelButton))
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
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
chakraAlertDialogInput <- function(inputId){
  component <- list(
    element = "Fragment",
    props = list(),
    children = list(
      list(
        element = "OpenButton",
        props = list(
          colorScheme = "red"
        ),
        children = list(
          "Delete customer"
        )
      ),
      list(
        element = "AlertDialog",
        props = list(),
        children = list(
          list(
            element = "AlertDialogOverlay",
            props = list(),
            children = list(
              list(
                element = "AlertDialogContent",
                props = list(),
                children = list(
                  list(
                    element = "AlertDialogHeader",
                    props = list(
                      fontSize = "lg",
                      fontWeight = "bold"
                    ),
                    children = list(
                      "Delete customer"
                    )
                  ),
                  list(
                    element = "AlertDialogBody",
                    props = list(),
                    children = list(
                      "Are you sure? You can't undo this action afterwards"
                    )
                  ),
                  list(
                    element = "AlertDialogFooter",
                    props = list(),
                    children = list(
                      list(
                        element = "CancelButton",
                        props = list(
                          id = "cancel"
                        ),
                        children = list(
                          "Cancel"
                        )
                      ),
                      list(
                        element = "Button",
                        props = list(
                          id = "delete",
                          colorScheme = "red",
                          ml = 3
                        ),
                        children = list(
                          "Delete"
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
  chakraInput(
    inputId = inputId,
    configuration = list(widget = "alertdialog", component = component)
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateChakraInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
