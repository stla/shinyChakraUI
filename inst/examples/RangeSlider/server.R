library(shiny)

shinyServer(
  function(input, output, session){

    observe({
      print(input[["slider"]])
    })

  }
)

