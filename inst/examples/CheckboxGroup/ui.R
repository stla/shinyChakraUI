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
          Tag$CheckboxGroup(
            id = "checkboxgroup",
            defaultValue = c("naruto", "sasuke"),
            colorScheme = "yellow",
            Tag$Heading("Checkbox group"),
            Tag$HStack(
              spacing = 8,
              Tag$Checkbox(
                icon = Tag$CheckCircleIcon(),
                value = "naruto",
                "Naruto"
              ),
              Tag$Checkbox(
                icon = Tag$CheckCircleIcon(),
                value = "sasuke",
                "Sasuke"
              )
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(
          style = "color: red; font-size: 28px;", "CheckboxGroup value:"
        ),
        verbatimTextOutput("checkboxgroupValue")
      )

    )

  )
)
