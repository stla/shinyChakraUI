#' @importFrom shiny registerInputHandler
#' @noRd
.onLoad <- function(...){

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
