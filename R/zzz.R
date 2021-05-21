#' @importFrom shiny registerInputHandler
#' @noRd
.onLoad <- function(...){

  shiny::registerInputHandler("shinyChakraUI.widget", function(data, ...){
    if(data[["widget"]] == "menuWithGroups"){
      lapply(data[["value"]], unlist)
    }else{
      data[["value"]]
    }
  }, force = TRUE)

}
