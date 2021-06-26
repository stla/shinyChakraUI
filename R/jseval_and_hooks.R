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
#' @importFrom utils URLencode
#'
#' @examples
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
