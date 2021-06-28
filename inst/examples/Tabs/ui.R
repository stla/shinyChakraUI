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
          Tag$Tabs(
            id = "tabs",
            variant = "enclosed",
            isFitted = TRUE,
            Tag$TabList(
              Tag$Tab(
                "_focus" = list(boxShadow = "none"),
                "Tab one"
              ),
              Tag$Tab(
                "Tab two"
              )
            ),
            Tag$TabPanels(
              Tag$TabPanel( # Tab one
                Tag$RadioGroup(
                  id = "radiogroup",
                  value = "radio1",
                  Tag$Stack(
                    direction = "row",
                    Tag$Radio(
                      value = "radio1",
                      "First"
                    ),
                    Tag$Radio(
                      value = "radio2",
                      "Second"
                    )
                  )
                )
              ),
              Tag$TabPanel( # Tab two
                selectizeInput(
                  "selectize", label = NULL,
                  choices = list("select1", "select2")
                )
              )
            )
          )
        )
      ),

      column(
        width = 6,
        #
        tags$span(
          style = "color: red; font-size: 28px;", "Tabs value (index):"
        ),
        verbatimTextOutput("tabsValue"),
        #
        br(),
        tags$span(
          style = "color: red; font-size: 28px;", "RadioGroup value:"
        ),
        verbatimTextOutput("radiogroupValue"),
        #
        br(),
        tags$span(
          style = "color: red; font-size: 28px;", "Selectize value:"
        ),
        verbatimTextOutput("selectizeValue"),
      )

    )

  )
)
