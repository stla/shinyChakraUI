library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    withStates(
      Tag$Fragment(

        Tag$Button(
          colorScheme = "teal",
          variant = "outline",
          onClick = getHookProperty("disclosure", "onToggle"),
          "Click me!"
        ),

        Tag$Fade(
          "in" = getHookProperty("disclosure", "isOpen"),
          Tag$Box(
            p = "40px",
            color = "white",
            mt = "4",
            bg = "teal.500",
            rounded = "md",
            shadow = "md",
            "Fade"
          )
        )

      ),

      states = list(disclosure = useDisclosure())
    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)
