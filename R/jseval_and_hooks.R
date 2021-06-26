#' @title Evaluate JS code
#' @description Evaluate JavaScript code.
#'
#' @param code JavaScript code
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
#'   chakraComponent(
#'     "mycomponent",
#'
#'     Tag$Button(
#'       colorScheme = "pink",
#'       size = "lg",
#'       onClick = jseval('() => alert("Hello Chakra")'),
#'       "Trigger alert"
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
jseval <- function(code){
  stopifnot(isString(code))
  list("__eval" = URLencode(code))
}

#' @title Get React state
#' @description Get the value of a React state.
#'
#' @param state name of the state
#'
#' @export
#'
#' @examples
#' library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'
#'   chakraComponent(
#'     "mycomponent",
#'
#'     withStates(
#'       Tag$Fragment(
#'
#'         Tag$Box(
#'           bg = "yellow.100",
#'           fontSize = "30px",
#'           width = "50%",
#'           getState("boxtext")
#'         ),
#'
#'         br(),
#'         Tag$Divider(),
#'         br(),
#'
#'         Tag$Button(
#'           colorScheme = "telegram",
#'           size = "lg",
#'           onClick = jseval('() => setState("boxtext", "Hello Chakra")'),
#'           "Change box text"
#'         )
#'       ),
#'
#'       states = list(boxtext = "I am the box text")
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
getState <- function(state){
  #assign(state, NULL, envir = usedStatesEnvir)
  stopifnot(isString(state))
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

#' @title The `useClipboard` hook
#' @description  The `useClipboard` hook.
#'
#' @param value a string
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
#'     withStates(
#'       Tag$Box(
#'         width = "50%",
#'
#'         Tag$Flex(
#'           mb = 2,
#'           Tag$Input(
#'             isReadOnly = TRUE,
#'             value = getHookProperty("clipboard", "value")
#'           ),
#'           Tag$Button(
#'             ml = 2,
#'             onClick = getHookProperty("clipboard", "onCopy"),
#'             jseval('getState("hasCopied") ? "Copied" : "Copy"')
#'           )
#'         ),
#'
#'         br(),
#'         Tag$Divider(),
#'         br(),
#'
#'         Tag$Editable(
#'           bg = "yellow.100",
#'           placeholder = "Paste here",
#'           Tag$EditablePreview(),
#'           Tag$EditableInput()
#'         )
#'
#'       ),
#'
#'       states = list(
#'         clipboard = useClipboard("Hello Chakra"),
#'         hasCopied = getHookProperty("clipboard", "hasCopied")
#'       )
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
useClipboard <- function(value){
  stopifnot(isString(value) || isJseval(value))
  if(is.character(value)){
    value <- paste0("'", value, "'")
  }else{
    value <- value[["__eval"]]
  }
  list(
    "__hook" = URLencode(sprintf("useClipboard(%s)", value))
  )
}

#' Title
#'
#' @return
#' @export
#' @importFrom jsonlite toJSON
#'
#' @examples
useRef <- function(initialValue = NA){
  jseval(sprintf(
    "React.useRef(%s)",
    ifelse(
      is.na(initialValue), "",
      toJSON(initialValue, null = "null", digits = NA, auto_unbox = TRUE)
    )
  ))
}

#' Title
#'
#' @return
#' @export
#' @importFrom utils URLencode
#'
#' @examples
useDisclosure <- function(defaultIsOpen = FALSE){
  stopifnot(isBoolean(defaultIsOpen))
  list(
    "__hook" = URLencode(sprintf(
      "useDisclosure({defaultIsOpen: %s})",
      ifelse(defaultIsOpen, "true", "false")
    ))
  )
}

#' Title
#'
#' @return
#' @export
#' @importFrom utils URLencode
#'
#' @examples
useToast <- function(){
  list("__hook" = URLencode("useToast()"))
}

#' Title
#'
#' @return
#' @export
#' @importFrom utils URLencode
#'
#' @examples
createStandaloneToast <- function(){
  list("__hook" = URLencode("createStandaloneToast()"))
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
