#' @title Set a React state
#' @description Set a React state from the Shiny server.
#'
#' @param session Shiny session object
#' @param componentId the id of the \code{\link{chakraComponent}} which
#'   contains the state to be changed
#' @param stateName the name of the state to be set
#' @param value the new value of the state; it can be an R object serializable
#'   to JSON, a React component, a JSX element created with the
#'   \code{\link{jsx}} function, a Shiny widget, or some HTML code created with
#'   the \code{\link[htmltools:HTML]{HTML}} function
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
    value[["attribs"]][["shinyAuto"]] <- FALSE
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

#' @title Chakra component with states or hooks
#' @description Create a Chakra component with React states and/or hooks.
#'
#' @param component a React component
#' @param states named list of states; a state value can be an R object
#'   serializable to JSON, a React component (\code{Tag$Component(...)}),
#'   a Shiny widget, some HTML code defined by the
#'   \code{\link[htmltools:HTML]{HTML}} function, a JSX element defined by
#'   the \code{\link{jsx}} function, a JavaScript value defined by the
#'   \code{\link{jseval}} function, or a hook such as \code{useDisclosure()}
#'   (see \code{\link{useDisclosure}}).
#'
#' @return A component to use in \code{\link{chakraComponent}}.
#' @export
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
#'     withStates(
#'
#'       Tag$Fragment(
#'
#'         Tag$Container(
#'           maxW = "xl",
#'           centerContent = TRUE,
#'           bg = "orange.50",
#'           Tag$Heading(
#'             getState("heading")
#'           ),
#'           Tag$Text(
#'             "I'm just some text."
#'           )
#'         ),
#'
#'         br(),
#'         Tag$Divider(),
#'         br(),
#'
#'         Tag$Button(
#'           colorScheme = "twitter",
#'           display = "block",
#'           onClick = jseval(
#'             "() => setState('heading', 'I am the new heading.')"
#'           ),
#'           "Click me to change the heading"
#'         )
#'
#'       ),
#'
#'       states = list(heading = "I am the heading.")
#'
#'     )
#'
#'   )
#'
#' )
#'
#' server <- function(input, output, session){}
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
withStates <- function(component, states){
  #print(ls(sys.frame(-1)))
  #print(lapply(sys.frames(),ls))
  stopifnot(isNamedList(states))
  forbiddenTypes <- ForbiddenTypes()
  Rstates <- Filter(function(s){
    !isJseval(s) && !isHook(s) && !isJSX(s)
  }, states)
  for(state in names(Rstates)){
    stateType <- typeof(Rstates[[state]])
    invalid <- !is.na(match(stateType, forbiddenTypes))
    if(invalid){
      stop(
        sprintf("State '%s' is invalid (type '%s').", state, stateType),
        call. = TRUE
      )
    }
  }
  if(component[["name"]] == "Menu"){
    component <- Tag$Fragment(component)
  }
  # component[["states"]] <-
  #   URLencode(as.character(toJSON(states, auto_unbox = TRUE)))
  statesGroup <- paste0("setState_", randomString(15L))
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

#' @title Chakra page
#' @description Function to be used as the \code{ui} element of a Shiny app;
#'   it is intended to contain some \code{\link{chakraComponent}} elements.
#'
#' @param ... elements to include within the page
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

#' @title Chakra component
#' @description Create a Chakra component.
#'
#' @param componentId component id
#' @param ... elements to include within the component
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags attachDependencies
#' @export
chakraComponent <- function(componentId, ...){
  stopifnot(isString(componentId))
  component <- list(...)
  if(length(names(component))){
    stop(
      "The arguments given in `...` must be unnamed.",
      call. = TRUE
    )
  }
  # states <- ls(statesEnvir)
  # usedStates <- ls(usedStatesEnvir)
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
    componentId,
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
  configuration[["inputId"]] <- componentId
  # configuration[["states"]] <-
  #   URLencode(as.character(toJSON(configuration[["states"]], auto_unbox = TRUE)))
  attachDependencies(createReactShinyInput(
    inputId = componentId,
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


#' @title Chakra color schemes
#' @description List of Chakra color schemes (to use as a \code{colorScheme}
#'   attribute in e.g. Chakra buttons).
#'
#' @export
#'
#' @examples
#' chakraColorSchemes()
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

#' @title Chakra icons
#' @description List of Chakra icons.
#'
#' @export
#' @details See \href{https://chakra-ui.com/docs/media-and-icons/icon#all-icons}{all chakra icons}.
#'
#' @examples
#' chakraIcons()
chakraIcons <- function(){
  c(
    "AddIcon",
    "ArrowBackIcon",
    "ArrowDownIcon",
    "ArrowForwardIcon",
    "ArrowLeftIcon",
    "ArrowRightIcon",
    "ArrowUpIcon",
    "ArrowUpDownIcon",
    "AtSignIcon",
    "AttachmentIcon",
    "BellIcon",
    "CalendarIcon",
    "ChatIcon",
    "CheckIcon",
    "CheckCircleIcon",
    "ChevronDownIcon",
    "ChevronLeftIcon",
    "ChevronRightIcon",
    "ChevronUpIcon",
    "CloseIcon",
    "CopyIcon",
    "DeleteIcon",
    "DownloadIcon",
    "DragHandleIcon",
    "EditIcon",
    "EmailIcon",
    "ExternalLinkIcon",
    "HamburgerIcon",
    "InfoIcon",
    "InfoOutlineIcon",
    "LinkIcon",
    "LockIcon",
    "MinusIcon",
    "MoonIcon",
    "NotAllowedIcon",
    "PhoneIcon",
    "PlusSquareIcon",
    "QuestionIcon",
    "QuestionOutlineIcon",
    "RepeatIcon",
    "RepeatClockIcon",
    "SearchIcon",
    "Search2Icon",
    "SettingsIcon",
    "SmallAddIcon",
    "SmallCloseIcon",
    "SpinnerIcon",
    "StarIcon",
    "SunIcon",
    "TimeIcon",
    "TriangleDownIcon",
    "TriangleUpIcon",
    "UnlockIcon",
    "UpDownIcon",
    "ViewIcon",
    "ViewOffIcon",
    "WarningIcon",
    "WarningTwoIcon"
  )
}

