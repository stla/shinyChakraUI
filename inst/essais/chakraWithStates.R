library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    withStates(

      Tag$Fragment(

        Tag$Container(
          maxW = "xl",
          centerContent = TRUE,
          bg = "orange.50",
          Tag$Heading(
            getState("heading")
          ),
          Tag$Text(
            "I'm just some text."
          )
        ),

        br(),
        Tag$Divider(),
        br(),

        Tag$Button(
          colorScheme = "twitter",
          display = "block",
          onClick = jseval(
            "() => setState('heading', 'I am the new heading.')"
          ),
          "Click me to change the heading"
        )

      ),

      states = list(heading = "I am the heading.")

    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)

