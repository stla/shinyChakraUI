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
  inherits(x, "button") || identical(x[["name"]], "Button")
}

isChakraIcon <- function(x){
  inherits(x, "icon") || x[["name"]] == "Icon"
}

isChakraCheckbox <- function(x){
  inherits(x, "shiny.tag") && x[["name"]] == "Checkbox"
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
  attribs <- component[["attribs"]]
  attribsNames <- names(attribs)
  if(
    "value" %in% attribsNames &&
    is.character(value <- attribs[["value"]])
  ){
    component[["attribs"]][["value"]] <- attribs[["value"]] <- URLencode(value)
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
      tags$script(script)
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
        component, tags$script(script)
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
      component, tags$script(script)
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
          component, tags$script(script)
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
      component, tags$script(script)
    )
  }else if(
    component[["name"]] == "script"
  ){
    component <- makeScriptTag(component)
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
