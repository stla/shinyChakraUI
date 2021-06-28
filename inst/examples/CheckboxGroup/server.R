library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

    output[["checkboxgroupValue"]] <- renderPrint({
      input[["checkboxgroup"]]
    })

  }
)
