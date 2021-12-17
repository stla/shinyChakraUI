library(shiny)
library(shinyChakraUI)

ui <- chakraPage(
  br(),
  chakraComponent(
    "mycomponent",
    chakraPinInput(
      "pininput", label = tags$h2("Enter password"),
      nfields = 3, mask = TRUE
    )
  )
)

server <- function(input, output, session){

  observe({
    print(input[["pininput"]])
  })

}

if(interactive()){
  shinyApp(ui, server)
}
