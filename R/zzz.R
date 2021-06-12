#' @importFrom shiny registerInputHandler
#' @importFrom jsonlite toJSON fromJSON
#' @noRd
.onLoad <- function(...){

  shiny::registerInputHandler("shinyChakraUI.component", function(data, ...){
    fromJSON(toJSON(data, null = "null", digits = NA, auto_unbox = TRUE))
  }, force = TRUE)

  shiny::registerInputHandler("shinyChakraUI.widget", function(data, ...){
    widget <- data[["widget"]]
    value <- data[["value"]]
    if(widget == "menuWithGroups"){
      lapply(value, unlist)
    }else if(widget == "checkboxWithChildren"){
      unlist(value)
    }else{
      value
    }
  }, force = TRUE)

}
