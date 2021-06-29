`%notin%` <- function(x, set){
  !is.element(x, set)
}

isChakraColor <- function(x){
  grepl("(^whiteAlpha|^blackAlpha|^gray|^red|^orange|^yellow|^green|^teal|^blue|^cyan|^purple|^pink|^linkedin|^facebook|^messenger|^whatsapp|^twitter|^telegram)\\.(50$|100$|200$|300$|400$|500$|600$|700$|800$|900$)", x)
}

#' @importFrom grDevices col2rgb rgb
#' @noRd
color2hex <- function(color){
  RGB <- col2rgb(color)[,1]
  rgb(RGB["red"], RGB["green"], RGB["blue"], maxColorValue = 255)
}

#' @importFrom htmltools parseCssColors
#' @noRd
validateColor <- function(color){
  if(is.null(color)) return(NULL)
  stopifnot(isString(color))
  if(color == "currentColor") return("currentColor")
  if(isChakraColor(color)){
    return(color)
  }
  cssColor <- try(parseCssColors(color), silent = TRUE)
  if(!inherits(cssColor, "try-error")){
    return(cssColor)
  }
  Rcolor <- try(color2hex(color), silent = TRUE)
  if(inherits(Rcolor, "try-error")){
    stop(sprintf("Invalid color '%s'.", color), call. = FALSE)
  }else{
    Rcolor
  }
}

isString <- function(x){
  is.character(x) && (length(x) == 1L) && !is.na(x)
}

isBoolean <- function(x){
  is.logical(x) && (length(x) == 1L) && !is.na(x)
}

emptyNamedList <- `names<-`(list(), character(0L))

randomString <- function(size){
  paste0(
    sample(c(letters, LETTERS, 0L:9L), size, replace = TRUE),
    collapse = ""
  )
}

statesEnvir <- new.env()

usedStatesEnvir <- new.env()

dropNulls <- function(x){
  Filter(Negate(is.null), x)
}

isNamedList <- function(x){
  is.null(x) || identical(x, list()) ||
    (is.list(x) && !is.null(names(x)) && all(names(x) != ""))
}

isChakraBox <- function(x){
  inherits(x, "box") || x[["name"]] == "Box"
}

isChakraButton <- function(x){
  inherits(x, "button") ||
    identical(x[["name"]], "Button") ||
    identical(x[["name"]], "IconButton")
}

isChakraIcon <- function(x){
  inherits(x, "icon") || x[["name"]] == "Icon"
}

isChakraCheckbox <- function(x){
  inherits(x, "shiny.tag") && x[["name"]] == "Checkbox"
}

isReactComponent <- function(x){
  inherits(x, "ReactTag")
}

encode <- function(x){
  if(inherits(x, "shiny.tag")){
    list(x)
  }else if(inherits(x, "html")){
    list(list("__html" = URLencode(as.character(x))))
  }else if(is.list(x) && is.null(names(x))){
    x
  }else{
    list(x)
  }
}

asShinyTag <- function(x){
  class(x) <- "shiny.tag"
  x
}

isShinyTag <- function(x){
  inherits(x, "shiny.tag") ||
    (is.list(x) && all(c("name", "attribs", "children") %in% names(x)))
}

isJseval <- function(x){
  is.list(x) && identical(names(x), "__eval")
}

isHook <- function(x){
  is.list(x) && identical(names(x), "__hook")
}

isJSX <- function(x){
  is.list(x) && identical(names(x), c("__jsx", "__preamble"))
}

invalidNamedDotsList <- function(dotslist){
  if(length(dotslist)){
    namesDots <- names(dotslist)
    if(is.null(namesDots) || ("" %in% namesDots)){
      TRUE
    }else{
      FALSE
    }
  }else{
    FALSE
  }
}
