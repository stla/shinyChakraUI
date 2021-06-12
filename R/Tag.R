isCapitalized <- function(word){
  grepl("^[[:upper:]]+$", substring(word, 1, 1))
}

#' @importFrom htmltools tag
#' @importFrom rlang dots_list
#' @export
#' @noRd
`$.ReactTagBuilder` <- function(x, name){
  if(!isCapitalized(name)){
    stop("Tag name must start with an upper case character", call. = FALSE)
  }
  function(...){
    component <- tag(name, dots_list(...))
    structure(component, class = c("ReactTag", oldClass(component)))
  }
}

#' @export
`[[.ReactTagBuilder` <- `$.ReactTagBuilder`

#' Title
#' @description xx
#' @export
Tag <- structure(list(), class = "ReactTagBuilder")

