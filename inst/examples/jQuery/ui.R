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
          Tag$Stack(
            Tag$Button(
              colorScheme = "cyan",
              onClick = jseval('() => $("#cbox").text("Chakra checkbox!")'),
              "Change checkbox text with jQuery"
            ),
            Tag$Divider(),
            Tag$Checkbox(
              id = "checkbox",
              defaultChecked = TRUE,
              size = "lg",
              colorScheme = "orange",
              tags$span(id = "cbox", style = "color: maroon;", "Checkbox")
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(style = "color: red; font-size: 28px;", "Checkbox value:"),
        verbatimTextOutput("checkboxValue")
      )

    )

  )
)
