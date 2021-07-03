library(V8)
library(jsonlite)
library(shinyChakraUI)
library(htmltools)

ct <- v8()
ct$source("https://raw.githubusercontent.com/RubyLouvre/jsx-parser/master/index.umd.js")

ct$assign(
  "x",
  JS("JSXParser('<Button leftIcon={ <EmailIcon />} colorScheme=\"teal\">')"))
#ct$assign("x", JS("JSXParser('<div><span p={[5,6]}>Hello</span></div>')"))
( x <- ct$get("x", simplifyDataFrame=FALSE) )

props2attribs <- function(props){
  nprops <- length(props)
  if(nprops == 0L){
    return(shinyChakraUI:::emptyNamedList)
  }
  attribs <- vector("list", nprops)
  names(attribs) <- names(props)
  for(i in seq_along(props)){
    prop <- props[[i]]
    if(length(prop) == 2L){ # type #jsx
      nodeValue <- prop[[2L]]
      attrib <- try(fromJSON(nodeValue), silent = TRUE)
      if(inherits(attrib, "try-error")){
        attrib <- jseval(nodeValue)
      }
    }else{
      x <- suppressWarnings(as.numeric(prop))
      attrib <- ifelse(is.na(x), prop, x)
    }
    attribs[[i]] <- attrib
  }
  attribs
}

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


ct$assign(
  "x",
  JS(sprintf(
    "JSXParser(\"%s\")",
    "<Button onClick={{() => alert('')}}>Hello</Button>"))
)
( x <- ct$get("x", simplifyDataFrame=FALSE) )

ct$assign(
  "x",
  JS(shQuote(sprintf(
    "JSXParser('%s')",
    '<Button onClick={{() => alert("hi")}}>Hello</Button>')))
)
( x <- ct$get("x", simplifyDataFrame=FALSE) )
