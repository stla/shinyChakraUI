library(shiny)
library(shinyChakraUI)

ui <- fluidPage(
  chakraDrawerInput(
    "drawer",
    openButton = chakraButton("Open"),
    options = chakraDrawerOptions(placement = "right"),
    header = React$DrawerHeader("I'm the header"),
    body = React$DrawerBody(
      chakraBox("I'm the body")
    ),
    footer = React$DrawerFooter(
      chakraButton("Close", action = "close", variant = "outline")
    )
  )
)

server <- function(input, output, session){

}

shinyApp(ui, server)
