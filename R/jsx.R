#' @title JSX element
#' @description Create a JSX element.
#'
#' @param element the JSX element
#' @param preamble JavaScript code to run before
#'
#' @export
#' @importFrom stringr str_trim
#' @importFrom utils URLencode
#'
#' @examples
#' library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'
#'   chakraComponent(
#'     "mycomponent",
#'
#'     jsx(paste(
#'       '<>',
#'       '  <Button onClick={onOpen}>Open Modal</Button>',
#'       '  <Modal isOpen={isOpen} onClose={onClose}>',
#'       '    <ModalOverlay />',
#'       '    <ModalContent>',
#'       '      <ModalHeader>Modal Title</ModalHeader>',
#'       '      <ModalCloseButton />',
#'       '      <ModalBody>',
#'       '        Sit nulla est ex deserunt exercitation anim occaecat.',
#'       '      </ModalBody>',
#'       '      <ModalFooter>',
#'       '        <Button colorScheme="blue" mr={3} onClick={onClose}>',
#'       '          Close',
#'       '        </Button>',
#'       '        <Button variant="ghost" onClick={setShinyValue}>',
#'       '          Secondary Action',
#'       '        </Button>',
#'       '      </ModalFooter>',
#'       '    </ModalContent>',
#'       '  </Modal>',
#'       '</>',
#'       sep = "\n"
#'     ),
#'
#'     preamble = paste(
#'       'const { isOpen, onOpen, onClose } = useDisclosure();',
#'       'const setShinyValue = () => Shiny.setInputValue("modal", "action");',
#'       sep = "\n"
#'     )
#'
#'   ))
#'
#' )
#'
#' server <- function(input, output, session){
#'
#'   observe({
#'     print(input[["modal"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
jsx <- function(element, preamble = ""){
  stopifnot(isString(element))
  stopifnot(isString(preamble))
  element <- str_trim(element)
  firstChar <- substring(element, 1L, 1L)
  if(firstChar != "<"){
    stop("Invalid JSX element.", call. = TRUE)
  }
  lastChar <- substring(element, nchar(element))
  if(lastChar != ">"){
    stop("Invalid JSX element.", call. = TRUE)
  }
  list("__jsx" = URLencode(element), "__preamble" = URLencode(preamble))
}
