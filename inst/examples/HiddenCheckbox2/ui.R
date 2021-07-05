library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),

    chakraComponent(
      "description",
      Tag$Text(
        fontFamily = "cursive",
        "This example illustrates the usage of the ",
        Tag$Code(colorScheme = "yellow", "useBoolean"),
        " hook."
      )
    ),

    br(), tags$hr(), br(),

    fluidRow(

      column(
        width = 6,
        chakraComponent(
          "mycomponent",
          jsx(paste(
            '<Stack>',
            '  <Button',
            '    colorScheme = "purple"',
            '    onClick = {setFlag.toggle}',
            '  >',
            '    {flag ? "Show checkbox" : "Hide checkbox"}',
            '  </Button>',
            '  <Checkbox',
            '    id = "checkbox"',
            '    hidden = {flag}',
            '    defaultChecked = {false}',
            '  >',
            '    CHECKBOX',
            '  </Checkbox>',
            '</Stack>',
            sep = "\n"
          ),
          preamble = "const [flag, setFlag] = useBoolean()")
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
