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
  inherits(x, "button") || identical(x[["name"]], "Button")
}

isChakraIcon <- function(x){
  inherits(x, "icon") || x[["name"]] == "Icon"
}

encode <- function(x){
  if(inherits(x, "shiny.tag")){
    list(x)
  }else if(inherits(x, "html")){
    list(list(html = URLencode(as.character(x))))
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

unclassComponent <- function(component, inputs = NULL){
  attribs <- component[["attribs"]]
  attribsNames <- names(attribs)
  if(sum(attribsNames == "class") > 1L){
    component[["attribs"]][["class"]] <-
      do.call(paste, attribs[attribsNames == "class"])
  }
  inputs <- NULL
  if(
    component[["name"]] == "input" &&
    attribs[["type"]] %in% c("text", "number") &&
    !is.null(attribs[["value"]])
  ){
    # warning(
    #   "It is not possible to set an initial value to an `input` element; ",
    #   sprintf("deleting value of input element \"%s\".", attribs[["id"]]),
    #   call. = FALSE
    # )
    inputs <- list(list(id = attribs[["id"]], value = attribs[["value"]]))
    component[["attribs"]][["value"]] <- NULL
  }
  if(length(component[["children"]])){
    component[["children"]] <- lapply(component[["children"]], function(child){
      if(is.list(child) && !inherits(child, "shiny.tag")){
        unlist(child) # this handles actionButton
      }else if(inherits(child, "shiny.tag")){
        x <- unclassComponent(child)
        inputs <<- c(inputs, x[["inputs"]])
        x[["component"]]
      }else if(is.character(child)){
        URLencode(child)
      }else{
        child
      }
    })
  }
  # if(length(component[["attribs"]])){
  #   component[["attribs"]] <- lapply(component[["attribs"]], unclass)
  # }
  list(component = unclass(component), inputs = inputs)
}

chakraIcons <- function(){
  c(
    "Add",
    "ArrowBack",
    "ArrowDown",
    "ArrowForward",
    "ArrowLeft",
    "ArrowRight",
    "ArrowUp",
    "ArrowUpDown",
    "AtSign",
    "Attachment",
    "Bell",
    "Calendar",
    "Chat",
    "Check",
    "CheckCircle",
    "ChevronDown",
    "ChevronLeft",
    "ChevronRight",
    "ChevronUp",
    "Close",
    "Copy",
    "Delete",
    "Download",
    "DragHandle",
    "Edit",
    "Email",
    "ExternalLink",
    "Hamburger",
    "Info",
    "InfoOutline",
    "Link",
    "Lock",
    "Minus",
    "Moon",
    "NotAllowed",
    "Phone",
    "PlusSquare",
    "Question",
    "QuestionOutline",
    "Repeat",
    "RepeatClock",
    "Search",
    "Search2",
    "Settings",
    "SmallAdd",
    "SmallClose",
    "Spinner",
    "Star",
    "Sun",
    "Time",
    "TriangleDown",
    "TriangleUp",
    "Unlock",
    "UpDown",
    "View",
    "ViewOff",
    "Warning",
    "WarningTwo"
  )
}

chakraColorSchemes <- function(){
  c(
    "whiteAlpha",
    "blackAlpha",
    "gray",
    "red",
    "orange",
    "yellow",
    "green",
    "teal",
    "blue",
    "cyan",
    "purple",
    "pink",
    "linkedin",
    "facebook",
    "messenger",
    "whatsapp",
    "twitter",
    "telegram"
  )
}
