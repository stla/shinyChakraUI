library(shiny)
library(shinyChakraUI)
library(DT)

ui <- chakraPage(

  br(),

  sidebarLayout(

    sidebarPanel(
      chakraComponent(
        "sideba",
        Tag$RadioGroup(
          id = "radiogroup",
          value = "1",
          Tag$Stack(
            direction = "column",
            Tag$Radio(
              value = "1",
              "Table"
            ),
            Tag$Radio(
              value = "2",
              "Stat"
            ),
            Tag$Radio(
              value = "3",
              "Plot"
            ),
            Tag$Radio(
              value = "4",
              "Datatable"
            ),
            Tag$Radio(
              value = "5",
              "Image"
            )
          )
        )
      )
    ),

    mainPanel(
      verbatimTextOutput("rgroup"),
      br(),
      uiOutput("Component")
    )

  )
)


server <- function(input, output, session){

  output[["rgroup"]] <- renderPrint({
    input[["radiogroup"]]
  })

  ChakraTable <- chakraComponent(
      "chakratable",
      Tag$Table(
        variant = "striped",
        colorScheme = "teal",
        Tag$TableCaption(
          "Imperial to metric conversion factors"
        ),
        Tag$Thead(
          Tag$Tr(
            Tag$Th(
              "To convert"
            ),
            Tag$Th(
              "into"
            ),
            Tag$Th(
              isNumeric = TRUE,
              "multiply by"
            )
          )
        ),
        Tag$Tbody(
          Tag$Tr(
            Tag$Td(
              "inches"
            ),
            Tag$Td(
              "millimetres (mm)"
            ),
            Tag$Td(
              isNumeric = TRUE,
              "25.4"
            )
          ),
          Tag$Tr(
            Tag$Td(
              "feet"
            ),
            Tag$Td(
              "centimetres (cm)"
            ),
            Tag$Td(
              isNumeric = TRUE,
              "30.48"
            )
          ),
          Tag$Tr(
            Tag$Td(
              "yards"
            ),
            Tag$Td(
              "metres (m)"
            ),
            Tag$Td(
              isNumeric = TRUE,
              "0.91444"
            )
          )
        ),
        Tag$Tfoot(
          Tag$Tr(
            Tag$Th(
              "To convert"
            ),
            Tag$Th(
              "into"
            ),
            Tag$Th(
              isNumeric = TRUE,
              "multiply by"
            )
          )
        )
      )
    )

  ChakraStat <- chakraComponent(
    "chakrastat",
    Tag$StatGroup(
      Tag$Stat(
        Tag$StatLabel(
          "Sent"
        ),
        Tag$StatNumber(
          "345,670"
        ),
        Tag$StatHelpText(
          Tag$StatArrow(
            type = "increase"
          ),
          "23.36%"
        )
      ),
      Tag$Stat(
        Tag$StatLabel(
          "Clicked"
        ),
        Tag$StatNumber(
          "45"
        ),
        Tag$StatHelpText(
          Tag$StatArrow(
            type = "decrease"
          ),
          "9.05%"
        )
      )
    )
  )

  ChakraImage <- chakraComponent(
    "image",
    Tag$Image(
      borderRadius = "full",
      boxSize = "150px",
      src = "RLadies.png",
      alt = "RLadies"
    )
  )

  output[["plot"]] <- renderPlot({
    plot(rnorm(10), rnorm(10))
  })

  output[["dtable"]] <- renderDT({
    datatable(iris[1:6,], style = "default")
  })

  output[["Component"]] <- renderUI({
    if(input[["radiogroup"]] == 1){
      ChakraTable
    }else if(input[["radiogroup"]] == 2){
      ChakraStat
    }else if(input[["radiogroup"]] == 3){
      plotOutput("plot")
    }else if(input[["radiogroup"]] == 4){
      DTOutput("dtable")
    }else{
      ChakraImage
    }
  })

}

shinyApp(ui, server)
