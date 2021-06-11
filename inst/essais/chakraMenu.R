library(shiny)
library(shinyChakraUI)

ui <- fluidPage(
  chakraMenuInput(
    inputId = "menu",
    menuButton = chakraMenuButton(
      textWhenOpen = "Close", textWhenClose = "Open", colorScheme = "red"
    ),
    menuList = chakraMenuList(
      content = list(
        actionButton("button","Test", class="btn-info"),
        # chakraMenuItem("a"),
        # chakraMenuItem("b")
        chakraMenuOptionGroup(
          title = "group",
          multiple = TRUE,
          items = list(
            chakraMenuItemOption(
              text = "a => c"
            ),
            chakraMenuItemOption(
              text = "hello",#tags$span("hello", style = list(color= "red")),
              value = "hello"
            )
          )
        )
      )
    )
  )
)

server <- function(input, output, session){

  observe({
    print(input[["menu"]])
  })

  observe({
    print(input[["button"]])
  })
}

shinyApp(ui, server)
