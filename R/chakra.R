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
    container = tags$div
  )
}

#' Title
#'
#' @param text
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraBox <- function(
  text, as = NULL, onHover = NULL, onActive = NULL, onFocus = NULL, ...
){
  stopifnot(isNamedList(onHover))
  stopifnot(isNamedList(onActive))
  stopifnot(isNamedList(onFocus))
  stopifnot(isNamedList(list(...)))
  box <- list(
    element = "Box",
    props = dropNulls(list(
      as = as, "_hover" = onHover, "_active" = onActive, "_focus" = onFocus, ...
    )),
    children = list(text)
  )
  class(box) <- "box"
  box
}

#' Title
#'
#' @param icon
#' @param boxSize
#' @param color
#'
#' @return
#' @export
#'
#' @examples
chakraIcon <- function(icon, boxSize = "1em", color = "currentColor"){
  icon <- match.arg(icon, chakraIcons())
  icon <- list(
    element = paste0(icon, "Icon"),
    props = list(
      boxSize = boxSize,
      color = color
    )
  )
  class(icon) <- "icon"
  icon
}

#' Title
#'
#' @param text
#' @param id
#' @param colorScheme
#' @param isFullWidth
#' @param leftIcon
#' @param rightIcon
#' @param size
#' @param variant
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraButton <- function(
  text,
  id = NULL,
  action = "none",
  colorScheme = "gray",
  isFullWidth = FALSE,
  leftIcon = NULL,
  rightIcon = NULL,
  size = "md",
  variant = "solid",
  onHover = NULL,
  onActive = NULL,
  onFocus = NULL,
  ...
){
  action <- match.arg(action, c("none", "cancel", "disable", "unmount"))
  stopifnot(isNamedList(onHover))
  stopifnot(isNamedList(onActive))
  stopifnot(isNamedList(onFocus))
  stopifnot(isNamedList(list(...)))
  if(!is.null(leftIcon)){
    stopifnot(isChakraIcon(leftIcon))
  }
  if(!is.null(rightIcon)){
    stopifnot(isChakraIcon(rightIcon))
  }
  boxprops <- dropNulls(
    list("_hover" = onHover, "_active" = onActive, "_focus" = onFocus, ...)
  )
  element <- switch(
    action,
    none = "Button",
    cancel = "CancelButton",
    disable = "DisableButton",
    unmount = "UnmountingButton"
  )
  button <- list(
    element = element,
    props = append(
      boxprops,
      dropNulls(list(
        id = id,
        colorScheme = match.arg(colorScheme, chakraColorSchemes()),
        isFullWidth = isFullWidth,
        leftIcon = unclass(leftIcon),
        rightIcon = unclass(rightIcon),
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
#' @param icon
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraIconButton <- function(icon, ...){
  stopifnot(isChakraIcon(icon))
  button <- chakraButton(...)
  button[["element"]] <- sub("Button", "IconButton", button[["element"]])
  button[["props"]][["icon"]] <- unclass(icon)
  button
}

#' Title
#'
#' @param textWhenOpen
#' @param textWhenClose
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraMenuButton <- function(textWhenOpen, textWhenClose = textWhenOpen, ...){
  button <- chakraButton(
    text = list(textWhenOpen = textWhenOpen, textWhenClose = textWhenClose),
    ...
  )
  button[["element"]] <- "MenuButton"
  button[["children"]] = unlist(button[["children"]], recursive = FALSE)
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

#' Title
#'
#' @param closeOnEsc
#' @param colorScheme
#' @param isCentered
#' @param motionPreset
#' @param size
#'
#' @return
#' @export
#'
#' @examples
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
  footerButtons = chakraButton("Cancel", action = "cancel", id = "cancel")
){
  if(!isChakraButton(openButton)){
    stop("")
  }
  openButton[["element"]] <- "OpenButton"
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
  footerButtons <- lapply(footerButtons, unclass)
  if(!isChakraBox(header)){
    stop("")
  }
  if(!isChakraBox(body)){
    stop("")
  }
  header[["element"]] <- "AlertDialogHeader"
  body[["element"]] <- "AlertDialogBody"
  component <- list(
    element = "Fragment",
    props = list(),
    children = list(
      unclass(openButton),
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
                  unclass(header),
                  unclass(body),
                  list(
                    element = "AlertDialogFooter",
                    props = list(),
                    children = footerButtons
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
    configuration =
      list(widget = "alertdialog", component = component, inputId = inputId)
  )
}

#' Title
#'
#' @param inputId
#' @param menuButton
#'
#' @return
#' @export
#'
#' @examples
chakraMenuInput <- function(inputId, menuButton){
  component <- list(
    element = "Fragment",
    props = list(),
    children = list(
      unclass(menuButton),
      list(
        element = "MenuList",
        props = list(),
        children = list(
          list(
            element = "MenuItem",
            props = list(),
            children = list(
              "Download"
            )
          )
        )
      )
    )
  )
  chakraInput(
    inputId = inputId,
    configuration =
      list(widget = "menu", component = component, text = menuButton[["children"]])
  )
}

# chakraAlertDialogInput <- function(inputId){
#   component <- list(
#     element = "Fragment",
#     props = list(),
#     children = list(
#       list(
#         element = "OpenButton",
#         props = list(
#           colorScheme = "red"
#         ),
#         children = list(
#           "Delete customer"
#         )
#       ),
#       list(
#         element = "AlertDialog",
#         props = list(),
#         children = list(
#           list(
#             element = "AlertDialogOverlay",
#             props = list(),
#             children = list(
#               list(
#                 element = "AlertDialogContent",
#                 props = list(),
#                 children = list(
#                   list(
#                     element = "AlertDialogHeader",
#                     props = list(
#                       fontSize = "lg",
#                       fontWeight = "bold"
#                     ),
#                     children = list(
#                       "Delete customer"
#                     )
#                   ),
#                   list(
#                     element = "AlertDialogBody",
#                     props = list(),
#                     children = list(
#                       "Are you sure? You can't undo this action afterwards"
#                     )
#                   ),
#                   list(
#                     element = "AlertDialogFooter",
#                     props = list(),
#                     children = list(
#                       list(
#                         element = "CancelButton",
#                         props = list(
#                           id = "cancel"
#                         ),
#                         children = list(
#                           "Cancel"
#                         )
#                       ),
#                       list(
#                         element = "Button",
#                         props = list(
#                           id = "delete",
#                           colorScheme = "red",
#                           ml = 3
#                         ),
#                         children = list(
#                           "Delete"
#                         )
#                       )
#                     )
#                   )
#                 )
#               )
#             )
#           )
#         )
#       )
#     )
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration = list(widget = "alertdialog", component = component)
#   )
# }

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
