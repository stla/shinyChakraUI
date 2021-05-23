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
    list(list(tag = unclassComponent(x)))
  }else if(inherits(x, "html")){
    list(list(html = URLencode(as.character(x))))
  }else{
    list(URLencode(x))
  }
}

unclassComponent <- function(component){
  if(length(component[["children"]])){
    component[["children"]] <- lapply(component[["children"]], function(child){
      if(inherits(child, "shiny.tag")){
        unclassComponent(child)
      }else{
        child
      }
    })
  }
  # if(length(component[["attribs"]])){
  #   component[["attribs"]] <- lapply(component[["attribs"]], unclass)
  # }
  unclass(component)
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
