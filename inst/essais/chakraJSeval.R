library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  chakraComponent(
    "mycomponent",

    Tag$Button(
      colorScheme = "pink",
      size = "lg",
      onClick = jseval('() => alert("Hello Chakra")'),
      "Trigger alert"
    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)
