library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(
    br(),

    chakraComponent(
      "drawerContainer",

      chakraDrawer(
        "drawer",

        openButton =
          Tag$Button(
            colorScheme = "teal",
            "Open"
          ),

        options =
          chakraDrawerOptions(placement = "top"),

        header =
          Tag$DrawerHeader(
            "Make a choice"
          ),

        body =
          Tag$DrawerBody(
            Tag$RadioGroup(
              id = "radiogroup",
              value = "table",
              Tag$Stack(
                direction = "row",
                Tag$Radio(
                  value = "table",
                  "Table"
                ),
                Tag$Radio(
                  value = "plot",
                  "Graphic"
                )
              )

            )
          ),

        footer = Tag$DrawerFooter()

      ),
      br(), tags$hr(), br()

      ######################

    ),

    uiOutput("panel")

  )

)
