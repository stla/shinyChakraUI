#' @title Pin input
#' @description Create a pin input widget.
#'
#' @param id input id
#' @param label optional label
#' @param nfields number of fields
#' @param type either \code{"alphanumeric"} or \code{"number"}
#' @param size one of \code{"xs"}, \code{"sm"}, \code{"md"}, \code{"lg"}
#' @param mask Boolean, whether to mask the user inputs (like a password input)
#' @param defaultValue default value, can be partial
#'
#' @return A widget to use in \code{\link{chakraComponent}}.
#' @importFrom htmltools tags
#' @export
#'
#' @examples library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'   br(),
#'   chakraComponent(
#'     "mycomponent",
#'     chakraPinInput(
#'       "pininput", label = tags$h2("Enter password"),
#'       nfields = 3, mask = TRUE
#'     )
#'   )
#' )
#'
#' server <- function(input, output, session){
#'
#'   observe({
#'     print(input[["pininput"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraPinInput <- function(
  id, label = NULL, nfields, type = "alphanumeric", size = "md", mask = FALSE,
  defaultValue = ""
){
  stopifnot(isString(id))
  stopifnot(isPositiveInteger(nfields))
  type <- match.arg(type, c("alphanumeric", "number"))
  size <- match.arg(size, c("xs", "sm", "md", "lg"))
  stopifnot(isBoolean(mask))
  stopifnot(isString(defaultValue))
  if(nchar(defaultValue) > nfields){
    stop(
      "The default value cannot have more than `nfields` characters.",
      call. = TRUE
    )
  }
  Fields <- rep(list(Tag$PinInputField(borderWidth = "2px")), times = nfields)
  component <- shinyTag(
    name = "HStack",
    attribs = emptyNamedList,
    children = list(
      shinyTag(
        name = "PinInput",
        attribs = list(
          type = type, size = size, mask = mask, defaultValue = defaultValue
        ),
        children = Fields
      )
    )
  )
  if(!is.null(label)){
    component <- tags$div(
      id = id,
      class = "form-group chakraShiny",
      tags$label(label),
      component
    )
  }else{
    component <- tags$div(
      id = id,
      class = "form-group chakraShiny",
      component
    )
  }
  component[["widget"]] <- "pininput"
  component
}
