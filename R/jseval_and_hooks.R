#' @title Evaluate JS code
#' @description Evaluate JavaScript code in the application.
#'
#' @param code JavaScript code given as a sting
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
  code <- gsub('\"', "'", code)
  list("__eval" = URLencode(code))
}

#' @title Get React state
#' @description Get the value of a React state.
#'
#' @param state name of the state
#'
#' @export
#' @seealso \code{\link{withStates}}
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
  stopifnot(isString(state))
  jseval(sprintf("getState('%s')", state))
}


# Function <- function(arguments = list(), body){
#   jseval(sprintf("(%s) => {%s}", toString(arguments), body))
# }
#
# #' Title
# #'
# #' @param state
# #' @param value
# #'
# #' @return
# #' @export
# #'
# #' @examples
# setState <- function(state, value){
#   if(is.list(value) && identical(names(value), "eval")){
#     list(eval = sprintf("states.%s.set(%s)", state, value[["eval"]]))
#   }else{
#     sprintf("states.%s.set(%s)", state)
#   }
# }

#' @title The `useClipboard` hook
#' @description The `useClipboard` hook.
#'
#' @param value a string
#'
#' @export
#' @importFrom utils URLencode
#' @details See \href{https://chakra-ui.com/docs/hooks/use-clipboard}{useClipboard}.
#' @seealso \code{\link{getHookProperty}}
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

#' @title The `useRef` hook
#' @description The React `useRef` hook.
#' @param initialValue optional initial value
#'
#' @export
#' @importFrom jsonlite toJSON
useRef <- function(initialValue = NA){
  jseval(sprintf(
    "React.useRef(%s)",
    ifelse(
      is.na(initialValue), "",
      toJSON(initialValue, null = "null", digits = NA, auto_unbox = TRUE)
    )
  ))
}

#' @title The `useDisclosure` hook
#' @description The `useDisclosure` hook.
#'
#' @param defaultIsOpen Boolean, the initial value of the \code{isOpen} property
#'
#' @export
#' @importFrom utils URLencode
#' @details See \href{https://chakra-ui.com/docs/hooks/use-disclosure}{useDisclosure}.
#' @seealso \code{\link{getHookProperty}}
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
#'       Tag$Fragment(
#'
#'         Tag$Button(
#'           colorScheme = "teal",
#'           variant = "outline",
#'           onClick = getHookProperty("disclosure", "onToggle"),
#'           "Click me!"
#'         ),
#'
#'         Tag$Fade(
#'           "in" = getHookProperty("disclosure", "isOpen"),
#'           Tag$Box(
#'             p = "40px",
#'             color = "white",
#'             mt = "4",
#'             bg = "teal.500",
#'             rounded = "md",
#'             shadow = "md",
#'             "Fade"
#'           )
#'         )
#'
#'       ),
#'
#'       states = list(disclosure = useDisclosure())
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
useDisclosure <- function(defaultIsOpen = FALSE){
  stopifnot(isBoolean(defaultIsOpen))
  list(
    "__hook" = URLencode(sprintf(
      "useDisclosure({defaultIsOpen: %s})",
      ifelse(defaultIsOpen, "true", "false")
    ))
  )
}

#' @title The `useToast` hook
#' @description The `useToast` hook.
#'
#' @export
#' @importFrom utils URLencode
#' @note It does not work well. Use \code{\link{createStandaloneToast}} instead.
useToast <- function(){
  list("__hook" = URLencode("useToast()"))
}

#' @title The `createStandaloneToast` hook
#' @description The `createStandaloneToast` hook.
#'
#' @export
#' @importFrom utils URLencode
#' @details See \href{https://chakra-ui.com/docs/feedback/toast#standalone-toasts}{Standalone toasts}.
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
#'       Tag$Button(
#'         colorScheme = "orange",
#'         size = "lg",
#'         onClick = jseval(paste(
#'           '() => {',
#'           '  const toast = getState("toast");',
#'           '  toast({',
#'           '    position: "bottom",',
#'           '    title: "Account created.",',
#'           '    description: "We have created your account for you.",',
#'           '    status: "success",',
#'           '    duration: 3000,',
#'           '    isClosable: true',
#'           '  });',
#'           '}',
#'           sep = "\n")),
#'
#'         "Show toast"
#'       ),
#'
#'       states = list(toast = createStandaloneToast())
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
createStandaloneToast <- function(){
  list("__hook" = URLencode("createStandaloneToast()"))
}

#' @title Get hook property
#' @description Chakra hooks are JavaScript objects; this function allows to
#'   get a property (key) of a hook. See \code{\link{useDisclosure}} for an
#'   example.
#'
#' @param hook the name of the hook, usually created in the \code{states} list
#'   of the \code{\link{withStates}} function
#' @param property the hook property you want to get
#'
#' @export
getHookProperty <- function(hook, property){
  stopifnot(isString(hook))
  stopifnot(isString(property))
  jseval(sprintf("getHookProperty('%s', '%s')", hook, property))
}
