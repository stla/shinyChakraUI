library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["checkboxValue"]] <- renderPrint({
      input[["checkbox"]]
    })

  }
)
