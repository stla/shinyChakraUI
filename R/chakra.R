#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
chakraInput <- function(inputId, configuration, default = NULL) {
  reactR::createReactShinyInput(
    inputId,
    "chakra",
    htmltools::htmlDependency(
      name = "chakra-input",
      version = "1.0.0",
      src = "www/shinyChakraUI/chakra",
      package = "shinyChakraUI",
      script = "chakra.js"
    ),
    default,
    configuration = configuration,
    htmltools::tags$div
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
