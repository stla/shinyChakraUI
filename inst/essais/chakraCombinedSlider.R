library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(), br(),

  chakraComponent(
    "mycomponent",

    chakraCombinedSlider(
      "slider",
      value = 5,
      min = 0,
      max = 10,
      step = 0.5,
      maxWidth = "300px",
      tooltip = TRUE,
      trackColor = "green.300",
      thumbOptions = sliderThumbOptions(
        width = 20, height = 20, borderColor = "firebrick", borderWidth = "3px"
      )
    )

  )

)

server <- function(input, output, session){

  observe({
    print(input[["slider"]])
  })

}

shinyApp(ui, server)

