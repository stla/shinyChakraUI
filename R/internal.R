dropNulls <- function(x){
  Filter(Negate(is.null), x)
}

isNamedList <- function(x){
  is.null(x) || identical(x, list()) ||
    (is.list(x) && !is.null(names(x)) && all(names(x) != ""))
}

isChakraBox <- function(x){
  inherits(x, "box") || x[["name"]] == "Box"
}

isChakraButton <- function(x){
  inherits(x, "button") ||
    identical(x[["name"]], "Button") ||
    identical(x[["name"]], "IconButton")
}

isChakraIcon <- function(x){
  inherits(x, "icon") || x[["name"]] == "Icon"
}

isChakraCheckbox <- function(x){
  inherits(x, "shiny.tag") && x[["name"]] == "Checkbox"
}

isReactComponent <- function(x){
  inherits(x, "reactR_component")
}

encode <- function(x){
  if(inherits(x, "shiny.tag")){
    list(x)
  }else if(inherits(x, "html")){
    list(list(html = URLencode(as.character(x))))
  }else if(is.list(x) && is.null(names(x))){
    x
  }else{
    list(x)
  }
}

asShinyTag <- function(x){
  class(x) <- "shiny.tag"
  x
}

isSlider <- function(x){
  inherits(x, "shiny.tag") &&
    length(x[["children"]]) == 2L &&
    identical(x[["children"]][[2]][["attribs"]][["class"]], "js-range-slider")
}

sliderDependencies <- function(){
  htmlDependencies(shiny::sliderInput("id", "label", 0, 2, 1))
  # list(structure(list(name = "ionrangeslider-javascript", version = "2.3.1",
  #                     src = list(href = "shared/ionrangeslider"), meta = NULL,
  #                     script = "js/ion.rangeSlider.min.js", stylesheet = NULL,
  #                     head = NULL, attachment = NULL, package = NULL, all_files = TRUE), class = "html_dependency"),
  #      structure(list(name = "strftime", version = "0.9.2", src = list(
  #        href = "shared/strftime"), meta = NULL, script = "strftime-min.js",
  #        stylesheet = NULL, head = NULL, attachment = NULL, package = NULL,
  #        all_files = TRUE), class = "html_dependency"), structure(function ()
  #        {
  #          if (is_shiny_app()) {
  #            register_theme_dependency(func)
  #            return(func(get_current_theme()))
  #          }
  #          func(bs_global_get())
  #        }, class = "shiny.tag.function"))
}

evalHtmlDependencies <- function(x){
  lapply(x, function(dep){
    if(inherits(dep, "shiny.tag.function")){
      dep()
    }else{
      dep
    }
  })
}

makeScriptTag <- function(script){
  if(inherits(script, "shiny.tag")){
    script[["name"]] <- "ScriptTag"
    script[["attribs"]][["dangerouslySetInnerHTML"]] <-
      list("__html" = URLencode(script[["children"]][[1L]]))
    script[["children"]] <- list()
    script
  }else{
    React$ScriptTag(
      dangerouslySetInnerHTML = list("__html" = URLencode(script))
    )
  }
}

#' @importFrom htmltools htmlDependencies
#' @noRd
unclassComponent <- function(component){
  if(inherits(component, "shiny.tag.list")){
    component <- do.call(React$Fragment, component)
  }
  if(!isChakraIcon(component) && grepl("Icon$", component[["name"]])){
    if(!is.element(component[["name"]], paste0(chakraIcons(), "Icon"))){
      stop(
        sprintf("Invalid icon '%s'.", component[["name"]]),
        call. = FALSE
      )
    }
  }
  if(
    "icon" %in% names(component[["attribs"]]) &&
    !isChakraIcon(icon <- component[["attribs"]][["icon"]])
  ){
    if(!isReactComponent(icon)){
      stop(
        sprintf("Invalid `icon` attribute in component '%s'.", component[["name"]]),
        call. = FALSE
      )
    }
    if(!grepl("Icon$", icon[["name"]])){
      stop(
        sprintf("Invalid `icon` attribute in component '%s'.", component[["name"]]),
        call. = FALSE
      )
    }
    if(!is.element(icon[["name"]], paste0(chakraIcons(), "Icon"))){
      stop(
        sprintf("Invalid `icon` attribute in component '%s'.", component[["name"]]),
        sprintf("'%s' is not the name of a chakra icon.", icon[["name"]]),
        call. = FALSE
      )
    }
  }
  for(attrib in component[["attribs"]]){
    if(isReactComponent(attrib) && grepl("Icon$", attrib[["name"]])){
      if(!is.element(attrib[["name"]], paste0(chakraIcons(), "Icon"))){
        stop(
          sprintf("Invalid icon '%s'.", attrib[["name"]]),
          call. = FALSE
        )
      }
    }
  }
  if(!is.null(component[["attribs"]][["children"]])){
    component[["children"]] <-
      c(component[["children"]], list(component[["attribs"]][["children"]]))
    component[["attribs"]][["children"]] <- NULL
  }
  component[["attribs"]] <- lapply(component[["attribs"]], unclass)
  attribs <- component[["attribs"]]
  attribsNames <- names(attribs)
  if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "className" %in% attribsNames &&
    grepl("action-button", attribs[["className"]])
  ){
    if(!is.element("id", attribsNames)){
      stop(
        "Buttons with 'action-button' class must have an `id` attribute.",
        call. = FALSE
      )
    }
  }else if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "value" %in% attribsNames
  ){
    component[["attribs"]][["data-val"]] <- URLencode(attribs[["value"]])
    component[["attribs"]][["value"]] <- NULL
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "action" %in% attribsNames
  ){
    iconbutton <- component[["name"]] == "IconButton"
    component[["name"]] <- switch(
      attribs[["action"]],
      none = "Button",
      open = "OpenButton",
      cancel = "CancelButton",
      disable = "DisableButton",
      unmount = "UnmountingButton",
      close = "ClosingButton",
      remove = "RemoveButton",
      "Button"
    )
    if(iconbutton)
      component[["name"]] <- sub("Button", "IconButton", component[["name"]])
    component[["attribs"]][["action"]] <- NULL
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  if(
    "value" %in% attribsNames &&
    is.character(value <- attribs[["value"]])
  ){
    component[["attribs"]][["value"]] <- attribs[["value"]] <- URLencode(value)
  }
  if("onClick" %in% attribsNames){
    component[["attribs"]][["onClick"]] <- URLencode(attribs[["onClick"]])
  }
  if("title" %in% attribsNames){
    component[["attribs"]][["title"]] <- URLencode(attribs[["title"]])
  }
  if(component[["name"]] == "MenuItem"){
    if(!is.element("value", attribsNames)){
      stop(
        "`MenuItem` requires a `value` attribute.", call. = FALSE
      )
    }
    component[["attribs"]][["data-val"]] <- attribs[["value"]]
    component[["attribs"]][["value"]] <- NULL
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  if(sum(attribsNames == "class") > 1L){
    component[["attribs"]][which(attribsNames == "class")] <- NULL
    component[["attribs"]][["class"]] <-
      do.call(paste, attribs[attribsNames == "class"])
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  Checkboxes <- RadioGroups <- dependencies <- NULL
  shinyOutput <- FALSE
  if("class" %in% attribsNames && grepl("-output", attribs[["class"]])){
    shinyOutput <- TRUE
  }
  if(isSlider(component)){
    dependencies <- evalHtmlDependencies(htmlDependencies(component))
    # sliders <- list(list(id = component[["children"]][[2]][["attribs"]][["id"]]))
    # component[["children"]][[2]][["attribs"]][["class"]] <- NULL
    id <- component[["children"]][[2]][["attribs"]][["id"]]
    script <- sprintf(
      "Shiny.inputBindings.bindingNames['shiny.sliderInput'].binding.initialize(document.getElementById('%s'));",
      id
    )
    component <- React$Fragment(
      list(html = URLencode(as.character(component))),
      makeScriptTag(script)
    )
  }else if(
    inherits(component, "shiny.tag") && !is.null(htmlDependencies(component))
  ){
    dependencies <- evalHtmlDependencies(htmlDependencies(component))
    depnames <- vapply(dependencies, `[[`, FUN.VALUE = character(1L), "name")
    if("selectize" %in% depnames){
      id <- component[["children"]][[2L]][["children"]][[1L]][["attribs"]][["id"]]
      script <- sprintf(
        "Shiny.inputBindings.bindingNames['shiny.selectInput'].binding.initialize(document.getElementById('%s'));",
        id
      )
      htmltools::htmlDependencies(component) <- NULL
      component <- React$Fragment(
        component, makeScriptTag(script)
      )
    }else{
      component <- list(html = URLencode(as.character(component)))
    }
  }else if(
    component[["name"]] == "input" &&
    attribs[["type"]] %in% c("text", "number") &&
    !is.null(attribs[["value"]])
  ){
    # warning(
    #   "It is not possible to set an initial value to an `input` element; ",
    #   sprintf("deleting value of input element \"%s\".", attribs[["id"]]),
    #   call. = FALSE
    # )
    # inputs <- list(list(id = attribs[["id"]], value = attribs[["value"]]))
    script <- sprintf(
      '$("#%s").val("%s");', attribs[["id"]], URLdecode(attribs[["value"]])
    )
    component[["attribs"]][["value"]] <- NULL
    component <- React$Fragment(
      component, makeScriptTag(script)
    )
  }else if(
    component[["name"]] == "Checkbox" && !is.null(attribs[["id"]])
  ){
    Checkboxes <- list(isTRUE(attribs[["isChecked"]]))
    names(Checkboxes) <- attribs[["id"]]
    #component[["attribs"]][["isChecked"]] <- NULL
  }else if(
    component[["name"]] == "CheckboxGroup" &&
    is.null(attr(component, "processed"))
  ){
    if(is.null(attribs[["id"]])){
      stop(
        "Please provide an `id` attribute for the `CheckboxGroup`.",
        call. = FALSE
      )
    }
    if(!is.null(defaultValue <- attribs[["defaultValue"]])){
      defaultValue <- as.list(defaultValue)
      x <- unlist(component[["children"]])
      values <- as.list(x[grep("value$", names(x))])
      defaultValue <- intersect(defaultValue, values)
      if(length(defaultValue)){
        component[["attribs"]][["defaultValue"]] <-
          defaultValue <- lapply(defaultValue, URLencode)
        script <- sprintf(
          "setTimeout(function(){Shiny.setInputValue('%s', [%s].map(decodeURI))});",
          attribs[["id"]], toString(paste0("'", defaultValue, "'"))
        )
        attr(component, "processed") <- TRUE
        component <- React$Fragment(
          component, makeScriptTag(script)
        )
      }
    }
  }else if(
    component[["name"]] == "RadioGroup" && !is.null(attribs[["value"]])
  ){
    script <- sprintf(
      "setTimeout(function(){Shiny.setInputValue('%s', '%s')});",
      attribs[["id"]], URLdecode(attribs[["value"]])
    )
    RadioGroups <- list(attribs[["value"]])
    names(RadioGroups) <- attribs[["id"]]
    component[["attribs"]][["value"]] <- NULL
    component <- React$Fragment(
      component, makeScriptTag(script)
    )
  }else if(
    component[["name"]] == "script"
  ){
    component <- makeScriptTag(component)
  }else if(
    component[["name"]] == "InputGroup" &&
    is.null(attr(component, "processed"))
  ){
    attr(component, "processed") <- TRUE
    children <- vapply(component[["children"]], `[[`, character(1L), "name")
    inputs <- which(children == "Input")
    script <- ""
    for(i in inputs){
      attr(component[["children"]][[i]], "processed") <- TRUE
      input <- component[["children"]][[i]]
      if(is.null(input[["attribs"]][["id"]])){
        stop(
          "Please provide an `id` attribute to `Input` components.",
          call. = FALSE
        )
      }
      if(is.null(input[["attribs"]][["value"]])){
        value <- ""
        component[["children"]][[i]][["attribs"]][["value"]] <- ""
      }else{
        value <- URLdecode(input[["attribs"]][["value"]])
      }
      script <- paste0(script, sprintf(
        "Shiny.setInputValue('%s', '%s');",
        input[["attribs"]][["id"]], value
      ))
    }
    script <- sprintf("setTimeout(function(){%s})", script)
    component <- React$Fragment(
      component, makeScriptTag(script)
    )
  }else if(
    component[["name"]] == "Tabs" &&
    is.null(attr(component, "processed")) &&
    all(c("id", "defaultIndex") %in% attribsNames)
  ){
    attr(component, "processed") <- TRUE
    script <- sprintf(
      "setTimeout(function(){Shiny.setInputValue('%s', %s)})",
      attribs[["id"]], attribs[["defaultIndex"]]
    )
    component <- React$Fragment(
      component, makeScriptTag(script)
    )
  }else if(component[["name"]] == "Menu"){
    children <- vapply(component[["children"]], `[[`, character(1L), "name")
    if(!identical(children, c("MenuButton", "MenuList"))){
      stop(
        "Invalid `Menu` component.",
        call. = TRUE
      )
    }
    if(!is.element("id", attribsNames)){
      stop(
        "A `Menu` component must have an `id` attribute.",
        call. = FALSE
      )
      # menulist <- component[["children"]][[2L]]
      # children <- vapply(menulist[["children"]], `[[`, character(1L), "name")
      # if("MenuOptionGroup" %in% children){
      #   stop(
      #     "A `Menu` component containing `MenuOptionGroup` components must have an `id` attribute.",
      #     call. = FALSE
      #   )
      # }
    }
  }else if(component[["name"]] == "MenuButton" && "text" %in% attribsNames){
    text <- attribs[["text"]]
    check <- is.list(text) &&
      identical(sort(names(text)), c("textWhenClose", "textWhenOpen"))
    if(!check){
      stop(
        "Invalid `text` attribute of `MenuButton`.",
        call. = TRUE
      )
    }
    component[["attribs"]][["text"]] <- lapply(text, URLencode)
  }else if(
    component[["name"]] == "Input" &&
    is.null(attr(component, "processed"))
  ){
    if(is.null(attribs[["id"]])){
      stop(
        "Please provide an `id` attribute to `Input` components.",
        call. = FALSE
      )
    }
    attr(component, "processed") <- TRUE
    if(is.null(attribs[["value"]])){
      value <- ""
      component[["attribs"]][["value"]] <- ""
    }else{
      value <- URLdecode(attribs[["value"]])
    }
    script <- sprintf(
      "setTimeout(function(){Shiny.setInputValue('%s', '%s')});",
      attribs[["id"]], value
    )
    component <- React$Fragment(
      component, makeScriptTag(script)
    )
  }
  if(length(component[["children"]])){
    component[["children"]] <- lapply(component[["children"]], function(child){
      if(
        is.list(child) &&
        !inherits(child, "shiny.tag") &&
        is.null(child[["html"]])
      ){
        unlist(child) # this handles actionButton
      }else if(inherits(child, "shiny.tag")){
        x <- unclassComponent(child)
        #inputs <<- c(inputs, x[["inputs"]])
        shinyOutput <<- x[["shinyOutput"]] || shinyOutput
        Checkboxes <<- c(x[["Checkboxes"]], Checkboxes)
        RadioGroups <<- c(x[["RadioGroups"]], RadioGroups)
        dependencies <<- c(x[["dependencies"]], dependencies)
        x[["component"]]
      }else if(inherits(child, "html")){
        list(html = URLencode(as.character(child)))
      }else if(is.character(child)){
        URLencode(child)
      }else{
        child
      }
    })
  }
  # if(length(component[["attribs"]])){
  #   component[["attribs"]] <- lapply(component[["attribs"]], unclass)
  # }
  list(
    component = unclass(component),
    shinyOutput = shinyOutput,
    Checkboxes = Checkboxes,
    RadioGroups = RadioGroups,
    dependencies = dependencies
  )
}

chakraIcons <- function(){
  c(
    "Add",
    "ArrowBack",
    "ArrowDown",
    "ArrowForward",
    "ArrowLeft",
    "ArrowRight",
    "ArrowUp",
    "ArrowUpDown",
    "AtSign",
    "Attachment",
    "Bell",
    "Calendar",
    "Chat",
    "Check",
    "CheckCircle",
    "ChevronDown",
    "ChevronLeft",
    "ChevronRight",
    "ChevronUp",
    "Close",
    "Copy",
    "Delete",
    "Download",
    "DragHandle",
    "Edit",
    "Email",
    "ExternalLink",
    "Hamburger",
    "Info",
    "InfoOutline",
    "Link",
    "Lock",
    "Minus",
    "Moon",
    "NotAllowed",
    "Phone",
    "PlusSquare",
    "Question",
    "QuestionOutline",
    "Repeat",
    "RepeatClock",
    "Search",
    "Search2",
    "Settings",
    "SmallAdd",
    "SmallClose",
    "Spinner",
    "Star",
    "Sun",
    "Time",
    "TriangleDown",
    "TriangleUp",
    "Unlock",
    "UpDown",
    "View",
    "ViewOff",
    "Warning",
    "WarningTwo"
  )
}

chakraColorSchemes <- function(){
  c(
    "whiteAlpha",
    "blackAlpha",
    "gray",
    "red",
    "orange",
    "yellow",
    "green",
    "teal",
    "blue",
    "cyan",
    "purple",
    "pink",
    "linkedin",
    "facebook",
    "messenger",
    "whatsapp",
    "twitter",
    "telegram"
  )
}
