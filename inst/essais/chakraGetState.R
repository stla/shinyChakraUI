library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  chakraComponent(
    "mycomponent",

    withStates(
      Tag$Fragment(

        Tag$Box(
          bg = "yellow.100",
          fontSize = "30px",
          width = "50%",
          getState("boxtext")
        ),

        br(),
        Tag$Divider(),
        br(),

        Tag$Button(
          colorScheme = "telegram",
          size = "lg",
          onClick = jseval('() => setState("boxtext", "Hello Chakra")'),
          "Change box text"
        )
      ),

      states = list(boxtext = "I am the box text")
    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)
