#' @title Checkbox with child checkboxes
#' @description A widget with a parent checkbox and child checkboxes.
#'
#' @param inputId widget id
#' @param parentCheckbox the parent checkbox
#' @param ... the child checkboxes
#' @param stackAttributes list of attributes which control the layout
#'
#' @return A widget to use in \code{\link{chakraComponent}}.
#' @export
#' @importFrom htmltools tags
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
#'     chakraCheckboxWithChildren(
#'       "cwc",
#'       Tag$Checkbox(
#'         "Parent checkbox"
#'       ),
#'       Tag$Checkbox(
#'         "Child checkbox 1"
#'       ),
#'       Tag$Checkbox(
#'         defaultChecked = TRUE,
#'         "Child checkbox 2"
#'       )
#'     )
#'
#'   )
#'
#' )
#'
#' server <- function(input, output, session){
#'
#'   observe({
#'     print(input[["cwc"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraCheckboxWithChildren <- function(
  inputId, parentCheckbox, ...,
  stackAttributes = list(pl = 6, mt = 1, spacing = 1)
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
    shinyTag(
      name = "Stack",
      attribs = stackAttributes,
      children = checkboxes
    )
  )
}
