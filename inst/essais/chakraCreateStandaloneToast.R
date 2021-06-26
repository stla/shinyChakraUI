library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  br(),

  chakraComponent(
    "mycomponent",

    withStates(

      Tag$Button(
        colorScheme = "orange",
        size = "lg",
        onClick = jseval(paste(
          '() => {',
          '  const toast = getState("toast");',
          '  toast({',
          '    position: "bottom",',
          '    title: "Account created.",',
          '    description: "We have created your account for you.",',
          '    status: "success",',
          '    duration: 3000,',
          '    isClosable: true',
          '  });',
          '}',
          sep = "\n")),

        "Show toast"
      ),

      states = list(toast = createStandaloneToast())

    )

  )

)

server <- function(input, output, session){}

shinyApp(ui, server)
