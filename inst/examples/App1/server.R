library(shiny)
library(shinyChakraUI)

shinyServer(
  function(input, output, session){

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
            Tag$Th("To convert"),
            Tag$Th("into"),
            Tag$Th(isNumeric = TRUE, "multiply by")
          )
        ),
        Tag$Tbody(
          Tag$Tr(
            Tag$Td("inches"),
            Tag$Td("millimetres (mm)"),
            Tag$Td(isNumeric = TRUE, "25.4")
          ),
          Tag$Tr(
            Tag$Td("feet"),
            Tag$Td("centimetres (cm)"),
            Tag$Td(isNumeric = TRUE, "30.48")
          ),
          Tag$Tr(
            Tag$Td("yards"),
            Tag$Td("metres (m)"),
            Tag$Td(isNumeric = TRUE, "0.91444")
          )
        ),
        Tag$Tfoot(
          Tag$Tr(
            Tag$Th("To convert"),
            Tag$Th("into"),
            Tag$Th(isNumeric = TRUE, "multiply by")
          )
        )
      )
    )

    output[["gaussian"]] <- renderPlot({
      plot(
        rnorm(100), rnorm(100),
        pch = 19, col = input[["drawerContainer"]][["color"]]
      )
    })

    output[["panel"]] <- renderUI({
      panel <- input[["drawerContainer"]][["choosepanel"]]
      if(panel == "table"){
        ChakraTable
      }else{
        plotOutput("gaussian")
      }
    })

  }
)
