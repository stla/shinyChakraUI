#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#' @noRd
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
    default = list(value = default, widget = configuration[["widget"]]),
    configuration = configuration,
    container = tags$div
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#' @export
chakraComponent <- function(inputId, component){
  createReactShinyInput(
    inputId = inputId,
    class = "chakracomponent",
    dependencies = htmlDependency(
      name = "chakra-input",
      version = "1.0.0",
      src = "www/shinyChakraUI/chakra",
      package = "shinyChakraUI",
      script = "chakra.js"
    ),
    default = NULL,
    configuration = component,
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
    name = "Box",
    attribs = dropNulls(list(
      as = as, "_hover" = onHover, "_active" = onActive, "_focus" = onFocus, ...
    )),
    children = encode(text)
  )
  class(box) <- c("box", "shiny.tag")
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
    name = paste0(icon, "Icon"),
    attribs = list(
      boxSize = boxSize,
      color = color
    ),
    children = list()
  )
  class(icon) <- c("icon", "shiny.tag")
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
  value = text,
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
  stopifnot(is.character(value))
  action <- match.arg(
    action, c("none", "cancel", "disable", "unmount", "close")
  )
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
    unmount = "UnmountingButton",
    close = "CloseButton"
  )
  button <- list(
    name = element,
    attribs = append(
      boxprops,
      dropNulls(list(
        "data-val" = URLencode(value),
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
    children = encode(text)
  )
  class(button) <- c("button", "shiny.tag")
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
  button <- chakraButton(text = "", ...)
  button[["name"]] <- sub("Button", "IconButton", button[["name"]])
  button[["attribs"]][["icon"]] <- unclass(icon)
  button[["children"]] <- NULL
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
  button <- chakraButton(text = "", ...)
  button[["name"]] <- "MenuButton"
  button[["children"]] <- list()
  attr(button, "text") <- list(
    textWhenOpen = URLencode(textWhenOpen),
    textWhenClose = URLencode(textWhenClose)
  )
  button
}

#' Title
#'
#' @param content
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraMenuList <- function(content, ...){
  box <- chakraBox(text = "", ...)
  box[["name"]] <- "MenuList"
  box[["children"]] <- content
  box
}

#' Title
#'
#' @param text
#' @param icon
#'
#' @return
#' @export
#'
#' @examples
chakraMenuItem <- function(text, value = text, icon = NULL){
  stopifnot(is.character(value))
  if(!is.null(icon)){
    stopifnot(isChakraIcon(icon))
  }
  menuitem <- list(
    name = "MenuItem",
    attribs = dropNulls(list("data-val" = URLencode(value), icon = icon)),
    children = encode(text)
  )
  class(menuitem) <- "shiny.tag"
  menuitem
}

#' Title
#'
#' @param title
#' @param items
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraMenuGroup <- function(title, items, ...){
  box <- chakraBox(text = "", ...)
  box[["children"]] <- items
  box[["attribs"]][["title"]] <- title
  box[["name"]] <- "MenuGroup"
  box
}

#' Title
#'
#' @param title
#' @param multiple
#' @param items
#'
#' @return
#' @export
#'
#' @examples
chakraMenuOptionGroup <- function(title, multiple = FALSE, items){
  itemclasses <- vapply(items, `[[`, FUN.VALUE = character(1L), "name")
  if(!all(itemclasses %in% c("MenuItemOption", "MenuDivider"))){
    stop("Invalid items.", call. = TRUE)
  }
  menuitemoptions <- items[itemclasses == "MenuItemOption"]
  values <- as.list(
    Filter(Negate(is.na), vapply(menuitemoptions, function(item){
      itemprops <- item[["attribs"]]
      if(itemprops[["isChecked"]]){
        URLdecode(itemprops[["value"]])
      }else{
        NA_character_
      }
    }, FUN.VALUE = character(1L)))
  )
  group <- list(
    name = "MenuOptionGroup",
    attribs = list(
      title = title,
      type = ifelse(multiple, "checkbox", "radio")
    ),
    children = items
  )
  class(group) <- c("menuoptiongroup", "shiny.tag")
  attr(group, "values") <- values
  group
}

#' Title
#'
#' @param text
#' @param value
#' @param checked
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraMenuItemOption <- function(text, value = text, checked = FALSE, ...){
  stopifnot(is.character(value))
  box <- chakraBox(text = text, ...)
  box[["name"]] <- "MenuItemOption"
  box[["attribs"]] <- append(
    box[["attribs"]],
    list(value = URLencode(value), isChecked = checked)
  )
  class(box) <- c("menuitemoption", "shiny.tag")
  box
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
chakraMenuDivider <- function(){
  divider <- list(
    name = "MenuDivider",
    attribs = list(),
    children = list()
  )
  class(divider) <- c("menudivider", "shiny.tag")
  divider
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
  component <- React$Fragment(
    openButton,
    React$AlertDialog(
      React$AlertDialogOverlay(
        React$AlertDialogContent(
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

#' Title
#'
#' @param inputId
#' @param menuButton
#'
#' @return
#' @export
#'
#' @examples
chakraMenuInput <- function(inputId, menuButton, menuList, closeOnSelect = TRUE){
  content <- menuList[["children"]]
  elements <- vapply(content, `[[`, FUN.VALUE = character(1L), "name")
  menuoptiongroups <- which(elements == "MenuOptionGroup")
  if(length(menuoptiongroups)){
    values <- lapply(content[menuoptiongroups], function(optiongroup){
      attr(optiongroup, "values")
    })
    titles <- lapply(content[menuoptiongroups], function(optiongroup){
      optiongroup[["attribs"]][["title"]]
    })
    names(values) <- titles
  }
  menuList[["children"]] <- content
  component <- list(
    name = "Fragment",
    attribs = list(),
    children = list(
      menuButton,
      menuList
      # list(
      #   element = "MenuList",
      #   props = list(),
      #   children = list(
      #     list(
      #       element = "MenuItem",
      #       props = list(),
      #       children = list(
      #         "Download"
      #       )
      #     )
      #   )
      # )
    )
  )
  chakraInput(
    inputId = inputId,
    configuration =
      list(
        widget = if(length(menuoptiongroups)) "menuWithGroups" else "menu",
        component = unclassComponent(component),
        text = attr(menuButton, "text"),
        closeOnSelect = closeOnSelect,
        optiongroups =
          if(length(menuoptiongroups)) as.list(menuoptiongroups - 1L)
      ),
    default = if(length(menuoptiongroups)) values
  )
}

#' Title
#'
#' @param closeOnEsc
#' @param closeOnOverlayClick
#' @param colorScheme
#' @param id
#' @param isCentered
#' @param isFullHeight
#' @param motionPreset
#' @param placement
#' @param size
#'
#' @return
#' @export
#'
#' @examples
chakraDrawerOptions <- function(
  closeOnEsc = TRUE,
  closeOnOverlayClick = TRUE,
  colorScheme = NULL,
  id = NULL,
  isCentered = FALSE,
  isFullHeight = FALSE,
  motionPreset = "scale",
  placement = "right",
  size = "xs"
){
  dropNulls(list(
    closeOnEsc = closeOnEsc,
    closeOnOverlayClick = closeOnOverlayClick,
    colorScheme =
      if(!is.null(colorScheme)) match.arg(colorScheme, chakraColorSchemes()),
    id = id,
    isCentered = isCentered,
    isFullHeight = isFullHeight,
    motionPreset = match.arg(
      motionPreset, c("scale", "none", "slideInBottom", "slideInRight")
    ),
    placement = match.arg(placement, c("bottom", "left", "right", "top")),
    size = match.arg(
      size,
      c("sm", "md", "lg", "xl", "2xl", "full", "xs", "3xl", "4xl", "5xl", "6xl")
    )
  ))
}


#' Title
#'
#' @param inputId
#' @param openButton
#' @param options
#' @param closeButton
#' @param header
#' @param body
#' @param footer
#'
#' @return
#' @export
#'
#' @examples
chakraDrawerInput <- function(
  inputId, openButton, options = chakraDrawerOptions(),
  closeButton = TRUE, header, body, footer
){
  openButton[["name"]] <- "OpenButton"
  drawer <- list(
    name = "Drawer",
    attribs = options,
    children = list(
      React$DrawerOverlay(),
      React$DrawerContent(
        if(closeButton) React$DrawerCloseButton(),
        header,
        body,
        footer
      )
    )
  )
  class(drawer) <- "shiny.tag"
  component <- React$Fragment(
    openButton,
    drawer
  )
  chakraInput(
    inputId = inputId,
    configuration =
      list(
        widget = "drawer",
        component = unclassComponent(component)
      )
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
