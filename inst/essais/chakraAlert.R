library(shiny)
library(shinyChakraUI)

ui <- fluidPage(
  chakraAlertInput("alert")
)

server <- function(input, output, session){

}

shinyApp(ui, server)
