library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["tabsValue"]] <- renderPrint({
      input[["tabs"]]
    })
    output[["radiogroupValue"]] <- renderPrint({
      input[["radiogroup"]]
    })
    output[["selectizeValue"]] <- renderPrint({
      input[["selectize"]]
    })

  }
)
