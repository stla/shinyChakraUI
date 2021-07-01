library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),
    chakraComponent(
      "title",
      Tag$Heading(
        "Menu with options groups."
      )
    ),
    br(), tags$hr(), br(),

    fluidRow(

      column(
        width = 6,
        chakraComponent(
          "mycomponent",
          withStates(
            Tag$Menu(
              id = "mymenu",
              onOpen = jseval("() => {setState('menuIsOpen', true)}"),
              onClose = jseval("() => {setState('menuIsOpen', false)}"),
              Tag$MenuButton(
                colorScheme = "blue",
                isActive = getState("menuIsOpen"),
                getState("buttonText")
              ),
              Tag$MenuList(
                minWidth = "240px",
                Tag$MenuOptionGroup(
                  title = "Order",
                  type = "radio",
                  Tag$MenuItemOption(
                    value = "asc",
                    defaultChecked = TRUE,
                    "Ascending"
                  ),
                  Tag$MenuItemOption(
                    value = "desc",
                    "Descending"
                  )
                ),
                Tag$MenuDivider(),
                Tag$MenuOptionGroup(
                  title = "Country",
                  type = "checkbox",
                  Tag$MenuItemOption(
                    value = "email",
                    defaultChecked = TRUE,
                    "Email"
                  ),
                  Tag$MenuItemOption(
                    value = "phone",
                    "Phone"
                  )
                )
              )
            ),
            states = list(
              menuIsOpen = FALSE,
              buttonText =
                jseval("getState('menuIsOpen') ? 'CLOSE MENU' : 'OPEN MENU'")
            )
          )
        )
      ),

      column(
        width = 6,
        tags$span(style = "color: red; font-size: 28px;", "Menu value:"),
        verbatimTextOutput("menuValue")
      )

    )

  )
)
