library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    chakraSlider(
      "slider",
      label = HTML("<span style='color:red'>Hello slider!</span>"),
      value = 5,
      min = 0,
      max = 10,
      width = "50%",
      tooltip = TRUE,
      shinyValueOn = "end"
    )

  )

)

server <- function(input, output, session){

  observe({
    print(input[["slider"]])
  })

}

shinyApp(ui, server)

