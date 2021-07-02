library(V8)
library(jsonlite)
library(shinyChakraUI)
library(htmltools)

setwd("C:/SL/MyPackages/shinyChakraUI/inst/V8")

ct <- v8()
ct$source("jsonNormalize.js")
ct$source("https://raw.githubusercontent.com/RubyLouvre/jsx-parser/master/index.umd.js")

ct$assign(
  "x",
  JS("JSXParser('<div><span num={2.5} arr={[5,7]} txt=\"hi\" obj={{a: 1}} onClick={() => {}}>Hello</span></div>')")
)
( x <- ct$get("x", simplifyDataFrame=FALSE, simplifyVector = FALSE) )

props2attribs <- function(props){
  nprops <- length(props)
  if(nprops == 0L){
    return("")
  }
  attribs <- vector("list", nprops)
  names(attribs) <- names(props)
  for(i in seq_along(props)){
    prop <- props[[i]]
    if(length(prop) == 2L){ # type #jsx
      nodeValue <- ct$eval(sprintf('normalize("%s")', prop[[2L]]))
      attrib <- try(fromJSON(nodeValue, simplifyVector = FALSE), silent = TRUE)
      if(inherits(attrib, "try-error")){
        attrib <- sprintf('jseval("%s")', nodeValue)
      }else{
        attrib <- deparse(attrib)
      }
    }else{
      x <- suppressWarnings(as.numeric(prop))
      attrib <- deparse(ifelse(is.na(x), prop, x))
    }
    attribs[[i]] <- attrib
  }
  paste0(
    names(attribs),
    " = ",
    unlist(attribs, recursive = FALSE),
    collapse = ", "
  )
}

props2attribs(x$children[[1]]$props)




jsx2component <- function(jsx){
  tagName <- jsx[["type"]]
  if(shinyChakraUI:::isCapitalized(tagName)){
    f <- sprintf("Tag$%s", tagName)
  }else{
    f <- sprintf("tags$%s", tagName)
  }
  jsxProps <- jsx[["props"]]
  jsxChildren <- jsx[["children"]]
  hasProps <- length(jsxProps) != 0L
  hasChildren <- length(jsxChildren) != 0L
  hasNothing <- !hasProps && !hasChildren
  hasBoth <- hasProps && hasChildren
  attribs <- props2attribs(jsxProps)
  if(hasNothing){
    body <- "()"
  }else if(hasBoth){
    body <- sprintf("(%s, %%s)", attribs)
  }else if(hasProps){
    body <- sprintf("(%s)", attribs)
  }else{ # children only
    body <- "(%s)"
  }
  f <- paste0(f, body)
  if(hasChildren){
    jsxChildren <- sapply(jsxChildren, function(child){
      childType <- child[["type"]]
      childNodeValue <- deparse(child[["nodeValue"]])
      if(childType == "#text"){
        childNodeValue
      }else if(childType == "#jsx"){
        sprintf('jseval("%s")', childNodeValue)
      }else{
        jsx2component(child)
      }
    })
    f <- sprintf(f, toString(jsxChildren))
    # f <- sprintf(f, paste0(jsxChildren, collapse = ",\n"))
  }
  f
}


cc <- jsx2component(x)
formatR::tidy_source(text=cc, args.newline = TRUE, indent = 2)

tags$div(tags$span(
  num = 2.5,
  arr = list(5L, 7L),
  txt = "hi",
  obj = list(a = 1L),
  onClick = jseval("() => {}"),
  "Hello"
))

tags$div(tags$span(
  num = 2.5,
  arr = list(5L, 7L),
  txt = "hi",
  obj = list(a = 1L),
  onClick = jseval("() => {}"),
  "Hello"
))

tags$div(
  tags$span(
    num = 2.5,
    arr = list(5L, 7L),
    txt = "hi",
    obj = list(a = 1L),
    onClick = jseval("() => {}"),
    "Hello"
  )
)





ct$assign(
  "x",
  JS("JSXParser('<div>a</div>')")
)
( x <- ct$get("x", simplifyDataFrame=FALSE, simplifyVector = FALSE) )
