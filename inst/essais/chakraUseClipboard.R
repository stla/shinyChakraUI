library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    withStates(
      Tag$Box(
        width = "50%",

        Tag$Flex(
          mb = 2,
          Tag$Input(
            isReadOnly = TRUE,
            value = getHookProperty("clipboard", "value")
          ),
          Tag$Button(
            ml = 2,
            onClick = getHookProperty("clipboard", "onCopy"),
            jseval('getState("hasCopied") ? "Copied" : "Copy"')
          )
        ),

        br(),
        Tag$Divider(),
        br(),

        Tag$Editable(
          bg = "yellow.100",
          placeholder = "Paste here",
          Tag$EditablePreview(),
          Tag$EditableInput()
        )

      ),

      states = list(
        clipboard = useClipboard("Hello Chakra"),
        hasCopied = getHookProperty("clipboard", "hasCopied")
      )
    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)
