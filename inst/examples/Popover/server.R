library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["popoverValue"]] <- renderPrint({
      input[["mypopover"]]
    })

  }
)
