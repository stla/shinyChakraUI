library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),

    fluidRow(

      column(
        width = 6,
        chakraComponent(
          "mycomponent",
          Tag$Popover(
            id = "mypopover",
            placement = "top-start",
            Tag$PopoverTrigger(
              Tag$Button(
                colorScheme = "purple",
                size = "lg",
                "Trigger Popover"
              )
            ),
            Tag$PopoverContent(
              width = "fitContent",
              Tag$PopoverHeader(
                fontWeight = "semibold",
                "This is the Popover header"
              ),
              Tag$PopoverArrow(),
              Tag$PopoverCloseButton(),
              Tag$PopoverBody(
                "This is the Popover body. Buttons are valued.",
                br(),
                Tag$Divider(),
                br(),
                Tag$ButtonGroup(
                  spacing = "5",
                  Tag$Button(
                    colorScheme = "whatsapp",
                    value = "popover value",
                    "Click me to get a value"
                  ),
                  Tag$Button(
                    colorScheme = "messenger",
                    value = "other popover value",
                    "Click me to get another value"
                  )
                )
              )
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(style = "color: red; font-size: 28px;", "Popover value:"),
        verbatimTextOutput("popoverValue")
      )

    )

  )
)
