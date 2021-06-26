library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    chakraCheckboxWithChildren(
      "cwc",
      Tag$Checkbox(
        "Parentxxx checkbox"
      ),
      Tag$Checkbox(
        "Child checkbox 1"
      ),
      Tag$Checkbox(
        defaultChecked = TRUE,
        "Child checkbox 2"
      )
    )

  )

)

server <- function(input, output, session){

  observe({
    print(input[["cwc"]])
  })

}

shinyApp(ui, server)
