library(shiny)
library(shinyChakraUI)

ui <- chakraPage(

  chakraComponent(
    "mycomponent",

    jsx(paste(
      '<>',
      '  <Button onClick={onOpen}>Open Modal</Button>',
      '  <Modal isOpen={isOpen} onClose={onClose}>',
      '    <ModalOverlay />',
      '    <ModalContent>',
      '      <ModalHeader>Modal Title</ModalHeader>',
      '      <ModalCloseButton />',
      '      <ModalBody>',
      '        Sit nulla est ex deserunt exercitation anim occaecat.',
      '      </ModalBody>',
      '      <ModalFooter>',
      '        <Button colorScheme="blue" mr={3} onClick={onClose}>',
      '          Close',
      '        </Button>',
      '        <Button variant="ghost" onClick={setShinyValue}>',
      '          Secondary Action',
      '        </Button>',
      '      </ModalFooter>',
      '    </ModalContent>',
      '  </Modal>',
      '</>',
      sep = "\n"
    ),

    preamble = paste(
      'const { isOpen, onOpen, onClose } = useDisclosure();',
      'const setShinyValue = () => Shiny.setInputValue("modal", "action");',
      sep = "\n"
    )

  ))

)

server <- function(input, output, session){

  observe({
    print(input[["modal"]])
  })

}

shinyApp(ui, server)
