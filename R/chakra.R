#' Title
#'
#' @param code
#'
#' @return
#' @export
#'
#' @examples
jseval <- function(code){
  stopifnot(is.character(code))
  list("__eval" = URLencode(code))
}

#' Title
#'
#' @param state
#'
#' @return
#' @export
#'
#' @examples
getState <- function(state){
  assign(state, NULL, envir = usedStatesEnvir)
  jseval(sprintf("getState('%s')", state))
}


Function <- function(arguments = list(), body){
  jseval(sprintf("(%s) => {%s}", toString(arguments), body))
}

#' Title
#'
#' @param state
#' @param value
#'
#' @return
#' @export
#'
#' @examples
setState <- function(state, value){
  if(is.list(value) && identical(names(value), "eval")){
    list(eval = sprintf("states.%s.set(%s)", state, value[["eval"]]))
  }else{
    sprintf("states.%s.set(%s)", state)
  }
}

#' Title
#'
#' @param value
#'
#' @return
#' @export
#'
#' @examples
useClipboard <- function(value){
  if(is.character(value)){
    value <- paste0("'", value, "'")
  }else{
    value <- value[["__eval"]]
  }
  list(
    "__hook" = sprintf("Hooks['useClipboard'](%s)", value)
  )
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
useRef <- function(){
  jseval("React.useRef()")
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
useDisclosure <- function(defaultIsOpen = FALSE){
  list(
    "__hook" = sprintf(
      "Hooks['useDisclosure']({defaultIsOpen: %s})",
      ifelse(defaultIsOpen, "true", "false")
    )
  )
}

#' Title
#'
#' @param state
#' @param value
#'
#' @return
#' @export
#'
#' @examples
getHookProperty <- function(state, value){
  assign(state, NULL, envir = usedStatesEnvir)
  #jseval(sprintf("states.%s.%s", state, value))
  jseval(sprintf("getHookProperty('%s', '%s')", state, value))
}

#' Title
#'
#' @param session
#' @param componentId
#' @param stateName
#' @param value
#'
#' @return
#' @export
#'
#' @examples
setReactState <- function(session, inputId, stateName, value){
  if(is.null(statesEnvir[[inputId]])){
    rm(list = ls(statesEnvir), envir = statesEnvir)
    stop(
      sprintf("Unknown component '%s'.", inputId),
      call. = TRUE
    )
  }
  if(is.na(statesEnvir[[inputId]][stateName])){
    rm(list = ls(statesEnvir), envir = statesEnvir)
    stop(
      sprintf("Unknown state '%s'.", stateName),
      call. = TRUE
    )
  }
  if(statesEnvir[[inputId]][stateName] == ""){
    rm(list = ls(statesEnvir), envir = statesEnvir)
    stop(
      sprintf("You cannot set a value to state '%s'.", stateName),
      call. = TRUE
    )
  }
  type <- "value"
  if(inherits(value, "html")){
    type <- "html"
    value <- URLencode(as.character(value))
  }else if(inherits(value, "shiny.tag")){
    type <- "component"
    value[["attribs"]][["shinyValue"]] <- FALSE
    value <- unclassComponent(value, NULL, "setReactState")[["component"]]
    value[["hasStates"]] <- TRUE
    value[["force"]] <- TRUE
  }
  session$sendCustomMessage(
    statesEnvir[[inputId]][[stateName]],
    list(state = stateName, value = value, type = type)
  )
}

#' Title
#'
#' @param component
#'
#' @return
#' @export
#' @importFrom jsonlite toJSON
#'
#' @examples
withStates <- function(component, states){
  #print(ls(sys.frame(-1)))
  #print(lapply(sys.frames(),ls))
  if(component[["name"]] == "Menu"){
    component <- Tag$Fragment(component)
  }
  # component[["states"]] <-
  #   URLencode(as.character(toJSON(states, auto_unbox = TRUE)))
  statesGroup <- paste0("setState_", randomString(15))
  component[["statesGroup"]] <- statesGroup
  component[["states"]] <- states
  # for(state in names(states)){
  #   s <- states[[state]]
  #   if(!(is.list(s) && identical(names(s), "eval"))){
  #     assign(state, statesGroup, envir = statesEnvir)
  #   }
  # }
  component
}

#' Title
#'
#' @param component
#'
#' @return
#' @export
#'
#' @examples
withDisclosure <- function(component){
  component[["withDisclosure"]] <- TRUE
  attr(component, "withDisclosure") <- TRUE
  component
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom htmltools htmlDependency tags attachDependencies
#' @export
chakraPage <- function(...){
  attachDependencies(
    tags$div(class = "container-fluid", ...),
    list(
      htmlDependency(
        name = "bootstrap",
        version = "3.4.1",
        src = "www/shared/bootstrap/js",
        script = "bootstrap.min.js",
        package = "shiny"
      ),
      htmlDependency(
        name = "chakra.css",
        version = "1.0.0",
        src = "www/css",
        stylesheet = "chakra.css",
        package = "shinyChakraUI"
      )
    )
  )
}

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
#' @importFrom htmltools htmlDependency tags attachDependencies
#' @export
chakraComponent <- function(inputId, ...){
  component <- list(...)
  if(length(names(component))){
    stop(
      "The arguments given in `...` must be unnamed.",
      call. = TRUE
    )
  }
  states <- ls(statesEnvir)
  usedStates <- ls(usedStatesEnvir)
  # for(usedState in usedStates){
  #   if(!is.element(usedState, states)){
  #     rm(list = states, envir = statesEnvir)
  #     rm(list = usedStates, envir = usedStatesEnvir)
  #     stop(
  #       sprintf("Unknown state '%s'.", usedState),
  #       call. = FALSE
  #     )
  #   }
  # }
  # rm(list = usedStates, envir = usedStatesEnvir)
  configuration <- unclassComponent(
    Tag$ChakraProvider(do.call(Tag$Fragment, component)),
    inputId,
    "chakraComponent"
  )
  if(configuration[["shinyOutput"]]){
    configuration[["component"]][["children"]] <- c(
      configuration[["component"]][["children"]],
      list(unclass(makeScriptTag("setTimeout(function(){Shiny.bindAll()})")))
    )
  }
  dependencies <- configuration[["dependencies"]]
  # dependencies <- c(
  #   dependencies,
  #   list(htmlDependency(
  #     name = "chakraBinding",
  #     version = "1.0.0",
  #     src = "www/bindings",
  #     script = "chakraBindings.js",
  #     package = "shinyChakraUI"
  #   ))
  # )
  configuration[["dependencies"]] <- NULL
  configuration[["inputId"]] <- inputId
  # configuration[["states"]] <-
  #   URLencode(as.character(toJSON(configuration[["states"]], auto_unbox = TRUE)))
  attachDependencies(createReactShinyInput(
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
    configuration = configuration,
    container = tags$div
  ), dependencies)
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
        itemprops[["value"]]
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
chakraDrawer <- function(
  inputId, openButton, options = chakraDrawerOptions(),
  closeButton = TRUE, header, body, footer
){
  stopifnot(isChakraButton(openButton))
  openButton[["attribs"]][["action"]] <- "open"
  stopifnot(isReactComponent(header))
  stopifnot(isReactComponent(body))
  stopifnot(isReactComponent(footer))
  if(header[["name"]] != "DrawerHeader"){
    stop("")
  }
  if(body[["name"]] != "DrawerBody"){
    stop("")
  }
  if(footer[["name"]] != "DrawerFooter"){
    stop("")
  }
  drawer <- list(
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
  )
  class(drawer) <- "shiny.tag"
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
      Tag$DrawerOverlay(),
      Tag$DrawerContent(
        if(closeButton) Tag$DrawerCloseButton(),
        header,
        body,
        footer
      )
    )
  )
  class(drawer) <- "shiny.tag"
  component <- Tag$Fragment(
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

#' Title
#'
#' @param inputId
#' @param parentCheckbox
#' @param ...
#' @param stackAttributes
#'
#' @return
#' @export
#' @importFrom htmltools tags
#'
#' @examples
chakraCheckboxWithChildren <- function(
  inputId, parentCheckbox, ..., stackAttributes = list(pl=6, mt=1, spacing=1)
){
  stopifnot(isChakraCheckbox(parentCheckbox))
  if(!isNamedList(stackAttributes)){
    stop(
      "Invalid `stackAttributes` argument; it must be a named list.",
      call. = TRUE
    )
  }
  checkboxes <- list(...)
  if(
    length(checkboxes) == 0L ||
    !all(vapply(checkboxes, isChakraCheckbox, logical(1L)))
  ){
    stop(
      "You must provide some checkboxes in the `...` argument.",
      call. = TRUE
    )
  }
  tags$div(
    id = inputId,
    class = "checkboxWithChildren",
    parentCheckbox,
    asShinyTag(
      list(
        name = "Stack",
        attribs = stackAttributes,
        children = checkboxes
      )
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
