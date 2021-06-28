# #' Title
# #'
# #' @param text
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraBox <- function(
#   text, as = NULL, onHover = NULL, onActive = NULL, onFocus = NULL, ...
# ){
#   stopifnot(isNamedList(onHover))
#   stopifnot(isNamedList(onActive))
#   stopifnot(isNamedList(onFocus))
#   stopifnot(isNamedList(list(...)))
#   box <- list(
#     name = "Box",
#     attribs = dropNulls(list(
#       as = as, "_hover" = onHover, "_active" = onActive, "_focus" = onFocus, ...
#     )),
#     children = encode(text)
#   )
#   class(box) <- c("box", "shiny.tag")
#   box
# }
# 
# #' Title
# #'
# #' @param icon
# #' @param boxSize
# #' @param color
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraIcon <- function(icon, boxSize = "1em", color = "currentColor"){
#   icon <- match.arg(icon, chakraIcons())
#   icon <- list(
#     name = paste0(icon, "Icon"),
#     attribs = list(
#       boxSize = boxSize,
#       color = color
#     ),
#     children = list()
#   )
#   class(icon) <- c("icon", "shiny.tag")
#   icon
# }
# 
# #' Title
# #'
# #' @param text
# #' @param id
# #' @param colorScheme
# #' @param isFullWidth
# #' @param leftIcon
# #' @param rightIcon
# #' @param size
# #' @param variant
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraButton <- function(
#   text,
#   value = text,
#   action = "none",
#   colorScheme = "gray",
#   isFullWidth = FALSE,
#   leftIcon = NULL,
#   rightIcon = NULL,
#   size = "md",
#   variant = "solid",
#   onHover = NULL,
#   onActive = NULL,
#   onFocus = NULL,
#   ...
# ){
#   stopifnot(is.character(value))
#   action <- match.arg(
#     action, c("none", "cancel", "disable", "unmount", "close")
#   )
#   stopifnot(isNamedList(onHover))
#   stopifnot(isNamedList(onActive))
#   stopifnot(isNamedList(onFocus))
#   stopifnot(isNamedList(list(...)))
#   if(!is.null(leftIcon)){
#     stopifnot(isChakraIcon(leftIcon))
#   }
#   if(!is.null(rightIcon)){
#     stopifnot(isChakraIcon(rightIcon))
#   }
#   boxprops <- dropNulls(
#     list("_hover" = onHover, "_active" = onActive, "_focus" = onFocus, ...)
#   )
#   element <- switch(
#     action,
#     none = "Button",
#     cancel = "CancelButton",
#     disable = "DisableButton",
#     unmount = "UnmountingButton",
#     close = "CloseButton"
#   )
#   button <- list(
#     name = element,
#     attribs = append(
#       boxprops,
#       dropNulls(list(
#         "data-val" = URLencode(value),
#         colorScheme = match.arg(colorScheme, chakraColorSchemes()),
#         isFullWidth = isFullWidth,
#         leftIcon = unclass(leftIcon),
#         rightIcon = unclass(rightIcon),
#         size = match.arg(size, c("sm", "md", "lg", "xs")),
#         variant = match.arg(
#           variant, c("link", "outline", "solid", "ghost", "unstyled")
#         )
#       ))
#     ),
#     children = encode(text)
#   )
#   class(button) <- c("button", "shiny.tag")
#   button
# }
# 
# 
# #' Title
# #'
# #' @param icon
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraIconButton <- function(icon, ...){
#   stopifnot(isChakraIcon(icon))
#   button <- chakraButton(text = "", ...)
#   button[["name"]] <- sub("Button", "IconButton", button[["name"]])
#   button[["attribs"]][["icon"]] <- unclass(icon)
#   button[["children"]] <- NULL
#   button
# }
# 
# #' Title
# #'
# #' @param textWhenOpen
# #' @param textWhenClose
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuButton <- function(textWhenOpen, textWhenClose = textWhenOpen, ...){
#   button <- chakraButton(text = "", ...)
#   button[["name"]] <- "MenuButton"
#   button[["children"]] <- list()
#   attr(button, "text") <- list(
#     textWhenOpen = URLencode(textWhenOpen),
#     textWhenClose = URLencode(textWhenClose)
#   )
#   button
# }
# 
# #' Title
# #'
# #' @param content
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuList <- function(content, ...){
#   box <- chakraBox(text = "", ...)
#   box[["name"]] <- "MenuList"
#   box[["children"]] <- content
#   box
# }
# 
# #' Title
# #'
# #' @param text
# #' @param icon
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuItem <- function(text, value = text, icon = NULL){
#   stopifnot(is.character(value))
#   if(!is.null(icon)){
#     stopifnot(isChakraIcon(icon))
#   }
#   menuitem <- list(
#     name = "MenuItem",
#     attribs = dropNulls(list("data-val" = URLencode(value), icon = icon)),
#     children = encode(text)
#   )
#   class(menuitem) <- "shiny.tag"
#   menuitem
# }
# 
# #' Title
# #'
# #' @param title
# #' @param items
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuGroup <- function(title, items, ...){
#   box <- chakraBox(text = "", ...)
#   box[["children"]] <- items
#   box[["attribs"]][["title"]] <- title
#   box[["name"]] <- "MenuGroup"
#   box
# }
# 
# #' Title
# #'
# #' @param title
# #' @param multiple
# #' @param items
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuOptionGroup <- function(title, multiple = FALSE, items){
#   itemclasses <- vapply(items, `[[`, FUN.VALUE = character(1L), "name")
#   if(!all(itemclasses %in% c("MenuItemOption", "MenuDivider"))){
#     stop("Invalid items.", call. = TRUE)
#   }
#   menuitemoptions <- items[itemclasses == "MenuItemOption"]
#   values <- as.list(
#     Filter(Negate(is.na), vapply(menuitemoptions, function(item){
#       itemprops <- item[["attribs"]]
#       if(itemprops[["isChecked"]]){
#         itemprops[["value"]]
#       }else{
#         NA_character_
#       }
#     }, FUN.VALUE = character(1L)))
#   )
#   group <- list(
#     name = "MenuOptionGroup",
#     attribs = list(
#       title = title,
#       type = ifelse(multiple, "checkbox", "radio")
#     ),
#     children = items
#   )
#   class(group) <- c("menuoptiongroup", "shiny.tag")
#   attr(group, "values") <- values
#   group
# }
# 
# #' Title
# #'
# #' @param text
# #' @param value
# #' @param checked
# #' @param ...
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuItemOption <- function(text, value = text, checked = FALSE, ...){
#   stopifnot(is.character(value))
#   box <- chakraBox(text = text, ...)
#   box[["name"]] <- "MenuItemOption"
#   box[["attribs"]] <- append(
#     box[["attribs"]],
#     list(value = URLencode(value), isChecked = checked)
#   )
#   class(box) <- c("menuitemoption", "shiny.tag")
#   box
# }
# 
# #' Title
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuDivider <- function(){
#   divider <- list(
#     name = "MenuDivider",
#     attribs = list(),
#     children = list()
#   )
#   class(divider) <- c("menudivider", "shiny.tag")
#   divider
# }
# 
