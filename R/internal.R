ForbiddenTypes <- function(){
  c(
    "complex",
    "raw",
    "closure",
    "special",
    "builtin",
    "environment",
    "S4",
    "symbol",
    "pairlist",
    "promise",
    "language",
    "char",
    "...",
    "any",
    "expression",
    "externalptr",
    "bytecode",
    "weakref"
  )
}

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

dropNulls <- function(x){
  Filter(Negate(is.null), x)
}

isNamedList <- function(x){
  is.null(x) || identical(x, emptyNamedList) ||
    (is.list(x) && !is.null(names(x)) && all(names(x) != ""))
}

isUnnamedList <- function(x){
  is.list(x) && is.null(names(x))
}

isChakraBox <- function(x){
  isShinyTag(x) && x[["name"]] == "Box"
}

isChakraButton <- function(x){
  isShinyTag(x) && (x[["name"]] %in% c("Button", "IconButton"))
}

isChakraIcon <- function(x){
  isShinyTag(x) && grepl("Icon$", x[["name"]])
  #inherits(x, "icon") || x[["name"]] == "Icon"
}

isChakraCheckbox <- function(x){
  isShinyTag(x) && x[["name"]] == "Checkbox"
}

isReactComponent <- function(x){
  inherits(x, "ReactTag")
}

# encode <- function(x){
#   if(inherits(x, "shiny.tag")){
#     list(x)
#   }else if(inherits(x, "html")){
#     list(list("__html" = URLencode(as.character(x))))
#   }else if(is.list(x) && is.null(names(x))){
#     x
#   }else{
#     list(x)
#   }
# }

asShinyTag <- function(x){
  structure(x, class = "shiny.tag")
}

shinyTag <- function(name, attribs = emptyNamedList, children = list(), ...){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  stopifnot(isString(name))
  stopifnot(isNamedList(attribs))
  stopifnot(isUnnamedList(children))
  structure(
    list(
      name = name,
      attribs = attribs,
      children = children,
      ...
    ),
    class = "shiny.tag"
  )
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
    is.null(namesDots) || ("" %in% namesDots)
  }else{
    FALSE
  }
}
