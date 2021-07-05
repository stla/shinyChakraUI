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
            withStates(
              Tag$Flex(
                Tag$RadioGroup(
                  id = "radiogroup",
                  onChange =
                    jseval('(value) => {setState("hidden", value === "table")}'),
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
                ),
                Tag$Spacer(),
                Tag$RadioGroup(
                  id = "color",
                  hidden = getState("hidden"),
                  value = "red",
                  Tag$Stack(
                    direction = "row",
                    Tag$Radio(
                      value = "red",
                      "Red"
                    ),
                    Tag$Radio(
                      value = "blue",
                      "Blue"
                    )
                  )
                )
              ),
              states = list(hidden = TRUE)
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
