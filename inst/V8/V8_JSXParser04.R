library(V8)
library(jsonlite)
library(shinyChakraUI)
library(htmltools)
library(formatR)

setwd("C:/SL/MyPackages/shinyChakraUI/inst/V8")


props2attribs <- function(props, ctx){
  nprops <- length(props)
  if(nprops == 0L){
    return("")
  }
  attribs <- vector("list", nprops)
  names(attribs) <- names(props)
  for(i in seq_along(props)){
    prop <- props[[i]]
    if(length(prop) == 2L){ # type #jsx
      nodeValue <- ctx$eval(sprintf('normalize("%s")', prop[[2L]]))
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


parsedJSX2component <- function(jsx, ctx){
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
  attribs <- props2attribs(jsxProps, ctx)
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
        parsedJSX2component(child, ctx)
      }
    })
    f <- sprintf(f, toString(jsxChildren))
    # f <- sprintf(f, paste0(jsxChildren, collapse = ",\n"))
  }
  f
}

jsxString2component <- function(jsxString){
  ctx <- v8()
  ctx$source(system.file("V8", "jsonNormalize.js", package = "shinyChakraUI"))
  ctx$source(system.file("V8", "index.umd.js", package = "shinyChakraUI"))
  #####
  ctx$assign("x", JS(sprintf("JSXParser('%s')", jsxString)))
  x <- ctx$get("x", simplifyDataFrame = FALSE, simplifyVector = FALSE)
  ######
  code <- parsedJSX2component(x, ctx)
  ctx$reset()
  tidy_source(text=code, args.newline = TRUE, indent = 2)
}

jsxString <-
  '<div><span num={2.5} arr={[5,7]} txt=\"hi\" obj={{a: 1}} onClick={() => {}}>Hello</span></div>'
jsxString <-
  '<div id=\"divid\"><span txt=\"hi\" obj={{a: 1}}><Pa>Hello</Pa></span></div>'
jsxString <-
  '<input type="number" id="in"/>'

jsxString2component(jsxString)










