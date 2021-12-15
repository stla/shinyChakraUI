library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(

    br(),

    chakraComponent(
      "mycomponent",

      Tag$Box(
        maxW = "70%",
        borderWidth = "1px",
        borderRadius = "lg",
        Tag$Text(
          as = "mark",
          fontSize = "xl",
          "This example shows how to put an icon on a slider thumb. ",
          "It also illustrates the ", Tag$Code("minStepsBetweenThumbs"), "option. ",
          "Here it is set to 4, and the step is set to 0.5, hence the two thumbs ",
          "cannot be separated by a distance lower than 2."
        )
      ),

      br(), Tag$Divider(), br(),

      chakraRangeSlider(
        "slider",
        label = tags$span(
          style="font-family: cursive;",
          "I have icons on my thumbs!"
        ),
        values = c(2, 8),
        min = 0, max = 10,
        step = 0.5,
        width = "50%",
        trackColor = "pink",
        filledTrackColor = "red",
        tooltip = TRUE,
        tooltipOptions = sliderTooltipOptions(
          backgroundColor = "tomato",
          placement = "bottom"
        ),
        thumbOptionsLeft = sliderThumbOptions(
          width = 22, height = 22,
          color = "lime",
          children = Tag$Box(as = jseval("ArrowLeftIcon"))
        ),
        thumbOptionsRight = sliderThumbOptions(
          width = 22, height = 22,
          color = "lime",
          children = Tag$Box(as = jseval("ArrowRightIcon"))
        ),
        shinyValueOn = "end",
        minStepsBetweenThumbs = 4
      )

    )

  )
)
