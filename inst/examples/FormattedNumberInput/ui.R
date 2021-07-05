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
            Tag$NumberInput(
              id = "ninput",
              value = jseval('"$" + getState("value")'),
              onChange =
                jseval('(valueString) =>
                       setState("value", valueString.replace(/^\\$/, ""))'
                ),
              precision = 2,
              step = 0.2,
              Tag$NumberInputField(),
              Tag$NumberInputStepper(
                Tag$NumberIncrementStepper(),
                Tag$NumberDecrementStepper()
              )
            ),
            states = list(value = 4)
          )
        )
      ),

      column(
        width = 6,
        tags$span(
          style = "color: red; font-size: 28px;",
          "Number input value:"
        ),
        verbatimTextOutput("ninputValue")
      )

    )

  )
)
