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
  JS("JSXParser('<div><span arr={[5,7]} txt=\"hi\" obj={{a: 1}}>Hello</span></div>')")
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
    f <- Tag[[tagName]]
  }else{
    f <- tags[[tagName]]
  }
  attribs <- props2attribs(jsx[["props"]])
  jsxChildren <- jsx[["children"]]
  if(length(jsxChildren)){
    jsxChildren <- lapply(jsxChildren, function(child){
      if(child[["type"]] == "#text"){
        child[["nodeValue"]]
      }else if(child[["type"]] == "#jsx"){
        jseval(child[["nodeValue"]])
      }else{
        jsx2component(child)
      }
    })
  }
  do.call(f, c(attribs, jsxChildren))
}
