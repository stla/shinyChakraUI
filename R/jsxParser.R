#' @importFrom jsonlite fromJSON
#' @noRd
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
      # nodeValue <- attrib <- NULL
      nodeValue <-
        try(ctx$eval(sprintf('normalize(\"%s\")', prop[[2L]])), silent = TRUE)
      if(inherits(nodeValue, "try-error")){
        attrib <- sprintf('jseval(\"%s\")', gsub("\"", "'", prop[[2L]]))
      }else{
        attrib <-
          try(fromJSON(nodeValue, simplifyVector = FALSE), silent = TRUE)
        if(inherits(attrib, "try-error")){
          attrib <- sprintf('jseval("%s")', nodeValue)
        }else{
          attrib <- deparse(attrib)
        }
      }
    }else{ # type #text
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
  if(isCapitalized(tagName)){
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
    jsxChildren <- vapply(jsxChildren, function(child){
      childType <- child[["type"]]
      childNodeValue <- deparse(child[["nodeValue"]])
      if(childType == "#text"){
        childNodeValue
      }else if(childType == "#jsx"){
        sprintf('jseval("%s")', childNodeValue)
      }else{
        parsedJSX2component(child, ctx)
      }
    }, FUN.VALUE = character(1L))
    f <- sprintf(f, toString(jsxChildren))
    # f <- sprintf(f, paste0(jsxChildren, collapse = ",\n"))
  }
  f
}

#' @title JSX string to React component code
#' @description Given a JSX string, this function prints the code of the
#'   corresponding React component that can be used in
#'   \code{\link{chakraComponent}}.
#'
#' @param jsxString JSX code given as a string
#' @param clipboard whether to copy the output to the clipboard
#'
#' @export
#' @importFrom formatR tidy_source
#'
#' @examples
#' jsxString <- '<Input type="email" id="myinput" />'
#' jsxString2code(jsxString)
#' jsxString <- '<Button onClick={() => alert("hello")}>Hello</Button>'
#' jsxString2code(jsxString)
jsxString2code <- function(jsxString, clipboard = TRUE){
  if(!requireNamespace("V8")){
    stop("This function requires the 'V8' package.", call. = TRUE)
  }
  jsxString <- gsub("\n", "", jsxString)
  jsxString <- checkjsx(jsxString)
  if(!is.null(attr(jsxString, "error"))){
    stop(attr(jsxString, "error"), call. = TRUE)
  }
  jsxString <- fixjsx(jsxString)
  ctx <- V8::v8()
  ctx$source(system.file("V8", "jsonNormalize.js", package = "shinyChakraUI"))
  ctx$source(system.file("V8", "index.umd.js", package = "shinyChakraUI"))
  #####
  tryCatch({
    ctx$assign(
      "x", V8::JS(sprintf("JSXParser('%s')", jsxString))
    )
  }, error = function(e){
    tryCatch({
      ctx$assign(
        "x", V8::JS(sprintf("JSXParser(\"%s\")", jsxString))
      )
    }, error = function(e){
      ctx$reset()
      stop("JSX parser has failed.", call. = TRUE)
    })
  })
  # p <- try(ctx$assign(
  #   "x", V8::JS(sprintf("JSXParser('%s')", jsxString))
  # ))
  # if(inherits(p, "try-error")){
  #   p <- try(ctx$assign(
  #     "x", V8::JS(sprintf("JSXParser(\"%s\")", jsxString))
  #   ))
  #   if(inherits(p, "try-error")){
  #     stop("JSX parser has failed.", call. = TRUE)
  #   }
  # }
  x <- ctx$get("x", simplifyDataFrame = FALSE, simplifyVector = FALSE)
  ######
  code <- parsedJSX2component(x, ctx)
  ctx$reset()
  tidy_source(text = code, args.newline = TRUE, indent = 2)
  if(clipboard){
    tidy_source(
      text = code, args.newline = TRUE, indent = 2, file = "clipboard"
    )
    message("Code has been copied to the clipboard.")
  }
  invisible(NULL)
}

# jsxString <-
#   '<div><span num={2.5} arr={[5,7]} txt="hi" obj={{a: 1}} onClick={() => {}}>Hello</span></div>'
# jsxString <-
#   '<div id=\"divid\"><span txt=\"hi\" obj={{a: 1}}><Pa>Hello</Pa></span></div>'
# jsxString <-
#   '<Input type="email" id="myinput" />'
#
# jsxString <-
#   '<div>
#   <span num={2.5} arr={[5, 7]} txt="hi" obj={{ a: 1 }} onClick={() => {}}>
#     Hello
#   </span>
# </div>'
#
#
# jsxString2component(gsub("\n", "", jsxString))


#' @importFrom rstudioapi getSourceEditorContext
#' @noRd
jsxParserAddin <- function(){
  #jsxString <- paste0(getSourceEditorContext()[["contents"]], collapse="")
  jsxString <- paste0(readLines("clipboard"), collapse="")
  jsxString2code(jsxString, clipboard = TRUE)
  invisible(NULL)
}







