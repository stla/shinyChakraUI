library(shiny)
library(shinyChakraUI)

ui <- fluidPage(
  chakraAlertDialogInput(
    inputId = "alert",
    openButton = chakraButton(
      "Delete customer",
      #rightIcon = chakraIcon("Delete"),
      colorScheme = "red"
    ),
    header = chakraBox("Delete customer", fontSize = "lg", fontWeight = "bold"),
    body = chakraBox("Are you sure? You can't undo this action afterwards"),
    footerButtons = list(
      chakraButton(
        "Cancel", action = "cancel", id = "cancel"
      ),
      chakraButton(
        "Delete", action = "disable", id = "delete", colorScheme = "red", ml = 3
      )
    )
  )
)

server <- function(input, output, session){

  observe({
    print(input[["alert"]])
  })
}

shinyApp(ui, server)
