library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),

    helpText("Don't abuse of React states when you can use jQuery."),

    br(), tags$hr(), br(),

    fluidRow(

      column(
        width = 6,
        chakraComponent(
          "mycomponent",
          Tag$Stack(
            Tag$Button(
              id = "button",
              colorScheme = "pink",
              onClick = jseval(paste0(
                '() => ',
                '{',
                '  $("#cbox").text("Chakra checkbox!");',
                '  $("#button").prop("disabled", true);',
                '}'
              )),
              "Change checkbox text with jQuery"
            ),
            Tag$Divider(),
            Tag$Checkbox(
              id = "checkbox",
              defaultChecked = TRUE,
              size = "lg",
              colorScheme = "orange",
              tags$span(
                id = "cbox",
                style = "color: maroon; font-weight: bold;",
                "Checkbox"
              )
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(
          style = "color: red; font-size: 28px; font-family: cursive;",
          "Checkbox value:"
        ),
        verbatimTextOutput("checkboxValue")
      )

    )

  )
)
