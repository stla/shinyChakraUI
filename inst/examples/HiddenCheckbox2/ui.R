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
          jsx(paste(
            '<Stack>',
            '  <Button',
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
        tags$span(style = "color: red; font-size: 28px;", "Checkbox value:"),
        verbatimTextOutput("checkboxValue")
      )

    )

  )
)
