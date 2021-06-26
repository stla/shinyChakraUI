library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    chakraAlertDialog(
      inputId = "alertDialog",
      openButton = Tag$Button(
        leftIcon = Tag$DeleteIcon(),
        colorScheme = "red",
        "Delete customer"
      ),
      header = Tag$AlertDialogHeader(
        fontSize = "lg",
        fontWeight = "bold",
        "Delete customer?"
      ),
      body = Tag$AlertDialogBody(
        "Are you sure? You can't undo this action afterwards."
      ),
      footerButtons = list(
        Tag$Button(
          action = "cancel",
          value = "CANCEL",
          "Cancel"
        ),
        Tag$Button(
          action = "disable",
          value = "DISABLE",
          colorScheme = "red",
          ml = 3,
          "Disable"
        ),
        Tag$Button(
          action = "remove",
          value = "REMOVE",
          ml = 3,
          "Remove"
        )
      )
    )

  )

)

server <- function(input, output, session){

  observe({
    print(input[["alertDialog"]])
  })

}

shinyApp(ui, server)
