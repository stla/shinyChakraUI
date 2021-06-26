library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    chakraDrawer(
      "drawer",
      openButton = Tag$Button("Open Drawer"),
      options = chakraDrawerOptions(placement = "right"),
      header = Tag$DrawerHeader("I'm the header"),
      body = Tag$DrawerBody(
        Tag$Box("I'm the body")
      ),
      footer = Tag$DrawerFooter(
        Tag$ButtonGroup(
          spacing = "6",
          Tag$Button(
            value = "try me",
            "Try me"
          ),
          Tag$Button(
            action = "close",
            variant = "outline",
            "Close"
          )
        )
      )
    )

  )

)

server <- function(input, output, session){

  observe({
    print(input[["drawer"]])
  })

}

shinyApp(ui, server)
