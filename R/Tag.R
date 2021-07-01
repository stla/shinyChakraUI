isCapitalized <- function(word){
  grepl("^[[:upper:]]+$", substring(word, 1, 1))
}

#' @importFrom htmltools tag
#' @importFrom rlang dots_list
#' @export
#' @noRd
`$.ReactTagBuilder` <- function(x, name){
  if(!isCapitalized(name)){
    stop("Tag name must start with an upper case character.", call. = FALSE)
  }
  function(...){
    component <- tag(name, dots_list(...))
    structure(component, class = c("ReactTag", oldClass(component)))
  }
}

#' @export
#' @noRd
`[[.ReactTagBuilder` <- `$.ReactTagBuilder`

#' @title React component builder
#' @description Create a React component. This is similar to
#'   \code{\link[reactR:React]{React}}.
#' @export
#' @examples
#' Tag$Box(
#'   bg = "tomato",
#'   Tag$ButtonGroup(
#'     spacing = "4",
#'     Tag$Button(
#'       "I'm a button"
#'     ),
#'     Tag$Button(
#'       "I'm another button"
#'     )
#'   )
#' )
Tag <- structure(list(), class = "ReactTagBuilder")

