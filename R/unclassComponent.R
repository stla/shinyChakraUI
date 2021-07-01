initializeShinyInput <- function(shinyInput, elementId){
  sprintf(
    "Shiny.inputBindings.bindingNames['shiny.%s'].binding.initialize(%s);",
    shinyInput, sprintf("document.getElementById('%s')", elementId)
  )
}

isSlider <- function(x){
  inherits(x, "shiny.tag") &&
    length(x[["children"]]) == 2L &&
    inherits(x[["children"]][[2L]], "shiny.tag") &&
    identical(x[["children"]][[2L]][["attribs"]][["class"]], "js-range-slider")
}

# sliderDependencies <- function(){
#   htmlDependencies(shiny::sliderInput("id", "label", 0, 2, 1))
# }

evalHtmlDependencies <- function(x){
  lapply(x, function(dep){
    if(inherits(dep, "shiny.tag.function")) dep() else dep
  })
}

makeScriptTag <- function(script){
  if(inherits(script, "shiny.tag")){
    shinyTag(
      name = "ScriptTag",
      attribs = c(
        script[["attribs"]],
        list(dangerouslySetInnerHTML =
               list("__html" = URLencode(script[["children"]][[1L]])))
      )
    )
    # script[["name"]] <- "ScriptTag"
    # script[["attribs"]][["dangerouslySetInnerHTML"]] <-
    #   list("__html" = URLencode(script[["children"]][[1L]]))
    # script[["children"]] <- list()
    # script
  }else{ # script is a string
    Tag$ScriptTag(
      dangerouslySetInnerHTML = list("__html" = URLencode(script))
    )
  }
}

#' @importFrom htmltools htmlDependencies
#' @noRd
unclassComponent <- function(component, inputId, call){
  if(!is.null(statesGroup <- component[["statesGroup"]])){
    if(call == "setReactState"){
      stop(
        "You cannot use a component with states in `setReactState`.",
        call. = FALSE
      )
    }
    states <- component[["states"]]
    for(stateName in names(states)){
      state <- states[[stateName]]
      if(!isJseval(state) && !isHook(state) && !isJSX(state)){
        if(inherits(state, "html")){
          states[[stateName]] <- list("__html" = URLencode(as.character(state)))
        }else if(isShinyTag(state)){
          states[[stateName]] <-
            unclassComponent(state, inputId, "unclassComponent")[["component"]]
        }
      }
    }
    component[["states"]] <-
      URLencode(as.character(
        toJSON(states, auto_unbox = TRUE, null = "null", digits = NA)
      ))
    x <- vapply(states, function(s){
      if(isJseval(s) || isHook(s) || isJSX(s)) "" else statesGroup
    }, character(1L))
    x <- c(x, statesEnvir[[inputId]])
    assign(inputId, x, envir = statesEnvir)
    # for(state in names(states)){
    #   s <- states[[state]]
    #   if(!(is.list(s) && identical(names(s), "eval"))){
    #     assign(state, statesGroup, envir = statesEnvir)
    #   }
    # }
  }
  if(inherits(component, "shiny.tag.list")){
    component <- do.call(Tag$Fragment, component)
  }
  RadioGroups <- dependencies <- NULL
  shinyOutput <- FALSE
  if(isSlider(component)){
    dependencies <- evalHtmlDependencies(htmlDependencies(component))
    id <- component[["children"]][[2L]][["attribs"]][["id"]]
    script <- initializeShinyInput("sliderInput", id)
    component <- Tag$Fragment(
      list("__html" = URLencode(as.character(component))),
      makeScriptTag(script)
    )
  }else if(
    isShinyTag(component) &&
    "class" %in% names(component[["attribs"]]) &&
    grepl("shiny-date-input", component[["attribs"]][["class"]]) &&
    !isTRUE(component[["dontprocess"]])
  ){
    dependencies <-
      evalHtmlDependencies(component[["children"]][[3L]])
    component[["children"]] <- component[["children"]][c(1L,2L)]
    script <- initializeShinyInput("dateInput", component[["attribs"]][["id"]])
    component[["dontprocess"]] <- TRUE
    component <- Tag$Fragment(
      component, makeScriptTag(script)
    )
  }else if(
    inherits(component, "shiny.tag") && !is.null(htmlDependencies(component))
  ){
    dependencies <- evalHtmlDependencies(htmlDependencies(component))
    depnames <- vapply(dependencies, `[[`, FUN.VALUE = character(1L), "name")
    if("selectize" %in% depnames){
      id <-
        component[["children"]][[2L]][["children"]][[1L]][["attribs"]][["id"]]
      script <- initializeShinyInput("selectInput", id)
      htmltools::htmlDependencies(component) <- NULL
      component <- Tag$Fragment(
        component, makeScriptTag(script)
      )
    }else if(
      grepl("shiny-date-range-input", component[["attribs"]][["class"]])
    ){
      script <- initializeShinyInput(
        "dateRangeInput", component[["attribs"]][["id"]]
      )
      htmltools::htmlDependencies(component) <- NULL
      component <- Tag$Fragment(
        component, makeScriptTag(script)
      )
    }else{
      component <- list("__html" = URLencode(as.character(component)))
    }
  }else if(!isChakraIcon(component) && grepl("Icon$", component[["name"]])){
    if(component[["name"]] %notin% chakraIcons()){
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
        sprintf(
          "Invalid `icon` attribute in component '%s'.", component[["name"]]
        ),
        call. = FALSE
      )
    }
    if(!grepl("Icon$", icon[["name"]])){
      stop(
        sprintf(
          "Invalid `icon` attribute in component '%s'.", component[["name"]]
        ),
        call. = FALSE
      )
    }
    if(icon[["name"]] %notin% chakraIcons()){
      stop(
        sprintf(
          "Invalid `icon` attribute in component '%s'.", component[["name"]]
        ),
        sprintf("'%s' is not the name of a chakra icon.", icon[["name"]]),
        call. = FALSE
      )
    }
  }
  for(attribname in names(component[["attribs"]])){
    attrib <- component[["attribs"]][[attribname]]
    if(isString(attrib)){ #&& attribname != "defaultValue"){
      component[["attribs"]][[attribname]] <- URLencode(attrib)
    }
    if(isReactComponent(attrib) && grepl("Icon$", attrib[["name"]])){
      if(attrib[["name"]] %notin% chakraIcons()){
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
  if(isReactComponent(component) && "class" %in% attribsNames){
    component[["attribs"]][["className"]] <- attribs[["class"]]
    component[["attribs"]][["class"]] <- NULL
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "className" %in% attribsNames &&
    grepl("action-button", attribs[["className"]])
  ){
    if("id" %notin% attribsNames){
      stop(
        "Buttons with the 'action-button' class must have an `id` attribute.",
        call. = FALSE
      )
    }
  }else if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "value" %in% attribsNames
  ){
    component[["attribs"]][["data-val"]] <- attribs[["value"]]
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
  }else if(
    component[["name"]] %in% c("Button", "IconButton") &&
    "id" %in% attribsNames &&
    "className" %notin% attribsNames
  ){
    component[["attribs"]][["className"]] <- "action-button"
    attribs <- component[["attribs"]]
    attribsNames <- names(attribs)
  }
  if(component[["name"]] == "MenuItem"){
    if("value" %notin% attribsNames){
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
  if("class" %in% attribsNames && grepl("-output", attribs[["class"]])){
    shinyOutput <- TRUE
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
    component <- Tag$Fragment(
      component, makeScriptTag(script)
    )
  }else if(
    component[["name"]] == "CheckboxGroup"
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
        # script <- sprintf(
        #   "setTimeout(function(){Shiny.setInputValue('%s', [%s].map(decodeURI))});",
        #   attribs[["id"]], toString(paste0("'", defaultValue, "'"))
        # )
        # attr(component, "processed") <- TRUE
        # component <- React$Fragment(
        #   component, makeScriptTag(script)
        # )
      }else{
        component[["attribs"]][["defaultValue"]] <- NULL
      }
    }
  }else if(
    component[["name"]] == "RadioGroup" && !is.null(attribs[["value"]])
  ){
    # script <- sprintf(
    #   "setTimeout(function(){Shiny.setInputValue('%s', '%s')});",
    #   attribs[["id"]], URLdecode(attribs[["value"]])
    # )
    RadioGroups <- list(attribs[["value"]])
    names(RadioGroups) <- attribs[["id"]]
    component[["attribs"]][["value"]] <- NULL
    # component <- React$Fragment(
    #   component, makeScriptTag(script)
    # )
  }else if(
    component[["name"]] == "script"
  ){
    component <- makeScriptTag(component)
    # }
    # else if(
    #   component[["name"]] == "InputGroup" &&
    #   is.null(attr(component, "processed"))
    # ){
    #   attr(component, "processed") <- TRUE
    #   children <- vapply(component[["children"]], `[[`, character(1L), "name")
    #   inputs <- which(children == "Input")
    #   script <- ""
    #   for(i in inputs){
    #     attr(component[["children"]][[i]], "processed") <- TRUE
    #     input <- component[["children"]][[i]]
    #     if(is.null(input[["attribs"]][["id"]])){
    #       stop(
    #         "Please provide an `id` attribute to `Input` components.",
    #         call. = FALSE
    #       )
    #     }
    #     if(is.null(input[["attribs"]][["value"]])){
    #       value <- ""
    #       component[["children"]][[i]][["attribs"]][["value"]] <- ""
    #     }else{
    #       value <- URLdecode(input[["attribs"]][["value"]])
    #     }
    #     script <- paste0(script, sprintf(
    #       "Shiny.setInputValue('%s', '%s');",
    #       input[["attribs"]][["id"]], value
    #     ))
    #   }
    #   script <- sprintf("setTimeout(function(){%s})", script)
    #   component <- React$Fragment(
    #     component, makeScriptTag(script)
    #   )
    # }else if(
    #   component[["name"]] == "Tabs" &&
    #   is.null(attr(component, "processed")) &&
    #   "id" %in% attribsNames
    # ){
    #   attr(component, "processed") <- TRUE
    #   index <-
    #     ifelse("defaultIndex" %in% attribsNames, attribs[["defaultIndex"]], 0)
    #   script <- sprintf(
    #     "setTimeout(function(){Shiny.setInputValue('%s', %s)})",
    #     attribs[["id"]], index
    #   )
    #   component <- React$Fragment(
    #     component, makeScriptTag(script)
    #   )
  }else if(component[["name"]] == "Menu"){
    children <- vapply(component[["children"]], `[[`, character(1L), "name")
    if(!identical(children, c("MenuButton", "MenuList"))){
      stop(
        "Invalid `Menu` component: ",
        "it must have two children, `MenuButton` and `MenuList`.",
        call. = FALSE
      )
    }
    if("id" %notin% attribsNames){
      stop(
        "A `Menu` component must have an `id` attribute.",
        call. = FALSE
      )
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
  }
  # else if(
  #   component[["name"]] == "Input" &&
  #   "id" %in% attribsNames &&
  #   !isFALSE(attribs[["shinyAuto"]]) &&
  #   is.null(attribs[["value"]])
  # ){
  #   # if(is.null(attribs[["id"]])){
  #   #   stop(
  #   #     "Please provide an `id` attribute to `Input` components.",
  #   #     call. = FALSE
  #   #   )
  #   # }
  #   component[["attribs"]][["value"]] <- ""
  # }
  componentChildren <- dropNulls(component[["children"]])
  if(length(componentChildren)){
    component[["children"]] <- lapply(componentChildren, function(child){
      if(isJseval(child)){
        child
      # }else if(
      #   is.list(child) &&
      #   !isShinyTag(child) &&
      #   is.null(child[["__html"]]) &&
      #   is.null(child[["__jsx"]])
      # ){
      #   unlist(child) # this handles actionButton
      }else if(isShinyTag(child)){
        x <- unclassComponent(child, inputId, call)
        #states <<- c(x[["states"]], states)
        shinyOutput <<- x[["shinyOutput"]] || shinyOutput
        RadioGroups <<- c(x[["RadioGroups"]], RadioGroups)
        dependencies <<- c(x[["dependencies"]], dependencies)
        x[["component"]]
      }else if(inherits(child, "html")){
        list("__html" = URLencode(as.character(child)))
      }else if(isString(child)){
        URLencode(child)
      }else{
        child
      }
    })
  }
  list(
    component = unclass(component),
    #states = states,
    shinyOutput = shinyOutput,
    RadioGroups = RadioGroups,
    dependencies = dependencies
  )
}
