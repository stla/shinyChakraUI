library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["menuValue"]] <- renderPrint({
      input[["mymenu"]]
    })

  }
)
