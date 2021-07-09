#' @title Chakra examples
#' @description List of Chakra examples.
#'
#' @export
#'
#' @examples
#' chakraExamples()
#' if(interactive()){
#'   chakraExample("MenuWithGroups")
#' }
chakraExamples <- function(){
  Folder <- system.file("examples", package = "shinyChakraUI")
  Examples <- list.dirs(Folder, full.names = FALSE, recursive = FALSE)
  message("Chakra examples: ", toString(Examples), ".")
  message('Type `chakraExample("ExampleName")` to run an example.')
}

#' @title Run a Chakra example
#' @description A function to run examples of Shiny apps with Chakra components.
#'
#' @param example example name
#' @param display.mode the display mode to use when running the example; see
#'   \code{\link[shiny:runApp]{runApp}}
#' @param ... arguments passed to \code{\link[shiny:runApp]{runApp}}
#'
#' @export
#' @importFrom shiny runApp
#'
#' @examples
#' if(interactive()){
#'   chakraExample("Menu")
#' }
chakraExample <- function(example, display.mode = "showcase", ...) {
  Folder <- system.file("examples", package = "shinyChakraUI")
  Examples <- list.dirs(Folder, full.names = FALSE, recursive = FALSE)
  if(example %in% Examples){
    appname <- normalizePath(file.path(Folder, example))
    runApp(appname, display.mode = display.mode, ...)
  }else{
    stop(
      "Could not find example: '", example, "'.",
      "\nAvailable examples are: ", paste0(Examples, collapse = ", "), "."
    )
  }
}
