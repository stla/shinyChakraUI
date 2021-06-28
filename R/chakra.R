#' @title Set a React state
#' @description Set a React state from the Shiny server.
#'
#' @param session Shiny session object
#' @param componentId the id of the \code{\link{chakraComponent}} which
#'   contains the state to be changed
#' @param stateName the name of the state to be set
#' @param value the new value of the state
#'
#' @export
#' @importFrom utils URLencode
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
#'     Tag$Button(
#'       id = "button",
#'       className = "action-button",
#'       colorScheme = "facebook",
#'       display = "block",
#'       onClick = jseval("(event) => {event.target.disabled = true}"),
#'       "Click me to change the content of the container"
#'     ),
#'
#'     br(),
#'     Tag$Divider(),
#'     br(),
#'
#'     withStates(
#'
#'       Tag$Container(
#'         maxW = "xl",
#'         centerContent = TRUE,
#'         bg = "yellow.100",
#'         getState("containerContent")
#'       ),
#'
#'       states = list(containerContent = "I am the container content.")
#'
#'     )
#'
#'   )
#'
#' )
#'
#' server <- function(input, output, session){
#'
#'   observeEvent(input[["button"]], {
#'
#'     setReactState(
#'       session = session,
#'       componentId = "mycomponent",
#'       stateName = "containerContent",
#'       value = Tag$Box(
#'         padding = "4",
#'         maxW = "3xl",
#'         fontStyle = "italic",
#'         fontWeight = "bold",
#'         borderWidth = "2px",
#'         "I am the new container content, included in a Box."
#'       )
#'     )
#'
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
setReactState <- function(session, componentId, stateName, value){
  if(is.null(statesEnvir[[componentId]])){
    rm(list = ls(statesEnvir), envir = statesEnvir)
    stop(
      sprintf("Unknown component '%s'.", componentId),
      call. = TRUE
    )
  }
  if(is.na(statesEnvir[[componentId]][stateName])){
    rm(list = ls(statesEnvir), envir = statesEnvir)
    stop(
      sprintf("Unknown state '%s'.", stateName),
      call. = TRUE
    )
  }
  if(statesEnvir[[componentId]][stateName] == ""){
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
  }else if(isShinyTag(value)){
    type <- "component"
    value[["attribs"]][["shinyValue"]] <- FALSE
    value <- unclassComponent(value, NULL, "setReactState")[["component"]]
    value[["hasStates"]] <- TRUE
    value[["force"]] <- TRUE
  }else if(isJSX(value)){
    type <- "jsx"
  }
  session$sendCustomMessage(
    statesEnvir[[componentId]][[stateName]],
    list(state = stateName, value = value, type = type)
  )
}

#' @title Component with states or hooks
#' @description Create a component with React states and/or hooks.
#'
#' @param component a React component
#' @param states list of states
#'
#' @return A component to use in \code{\link{chakraComponent}}.
#' @export
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

