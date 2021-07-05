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
          withStates(
            Tag$Stack(
              Tag$Button(
                colorScheme = "green",
                onClick = jseval(
                  '() => setState("isHidden", !getState("isHidden"))'
                ),
                getState("showHideCheckbox")
              ),
              Tag$Checkbox(
                id = "checkbox",
                hidden = getState("isHidden"),
                defaultChecked = FALSE,
                "CHECKBOX"
              )
            ),
            states = list(
              isHidden = TRUE,
              showHideCheckbox = jseval(
                'getState("isHidden") ? "Show checkbox" : "Hide checkbox"'
              )
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(
          style = "color: red; font-size: 28px;",
          "Checkbox value:"
        ),
        verbatimTextOutput("checkboxValue")
      )

    )

  )
)
