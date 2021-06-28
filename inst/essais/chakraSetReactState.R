library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    Tag$Button(
      id = "button",
      className = "action-button",
      colorScheme = "facebook",
      display = "block",
      onClick = jseval("(event) => {event.target.disabled = true}"),
      "Click me to change the content of the container"
    ),

    br(),
    Tag$Divider(),
    br(),

    withStates(

      Tag$Container(
        maxW = "xl",
        centerContent = TRUE,
        bg = "yellow.100",
        getState("containerContent")
      ),

      states = list(containerContent = "I am the container content.")

    )

  )

)

server <- function(input, output, session){

  observeEvent(input[["button"]], {

    setReactState(
      session = session,
      componentId = "mycomponent",
      stateName = "containerContent",
      value = Tag$Box(
        padding = "4",
        maxW = "3xl",
        fontStyle = "italic",
        fontWeight = "bold",
        borderWidth = "2px",
        "I am the new container content, included in a Box."
      )
    )

  })

}

shinyApp(ui, server)

