library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["ninputValue"]] <- renderPrint({
      input[["ninput"]]
    })

  }
)
