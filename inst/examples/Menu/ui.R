library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),
    chakraComponent(
      "title",
      Tag$Heading("Simple menu."),
      Tag$Text(
        "Set a ",
        Tag$Code(colorScheme = "yellow", "value"),
        " attribute to the ",
        Tag$Code(colorScheme = "yellow", "MenuItem"),
        " tags."
      )
    ),
    br(), tags$hr(), br(),

    ######################

    fluidRow(

      column(
        width = 6,
        chakraComponent(
          "mycomponent",
          Tag$Menu(
            id = "mymenu",
            Tag$MenuButton(
              colorScheme = "red",
              "Menu"
            ),
            Tag$MenuList(
              minWidth = "240px",
              Tag$MenuItem(
                value = "item1",
                icon = Tag$ArrowRightIcon(),
                "Item one"
              ),
              Tag$MenuItem(
                value = "item2",
                icon = Tag$ArrowRightIcon(),
                "Item two"
              )
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(style = "color: red; font-size: 28px;", "Menu value:"),
        verbatimTextOutput("menuValue")
      )

    )

  )
)
