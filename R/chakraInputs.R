# #' <Add Title>
# #'
# #' <Add Description>
# #'
# #' @importFrom reactR createReactShinyInput
# #' @importFrom htmltools htmlDependency tags
# #' @noRd
# chakraInput <- function(inputId, configuration, default = NULL) {
#   createReactShinyInput(
#     inputId = inputId,
#     class = "chakra",
#     dependencies = htmlDependency(
#       name = "chakra-input",
#       version = "1.0.0",
#       src = "www/shinyChakraUI/chakra",
#       package = "shinyChakraUI",
#       script = "chakra.js"
#     ),
#     default = list(value = default, widget = configuration[["widget"]]),
#     configuration = configuration,
#     container = tags$div
#   )
# }
#
# #' Title
# #'
# #' @param inputId
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraAlertInput <- function(inputId) {
#   component <- list(
#     element = "Alert",
#     props = list(
#       status = "success",
#       variant = "subtle",
#       flexDirection = "column",
#       alignItems = "center",
#       justifyContent = "center",
#       textAlign = "center",
#       height = "200px"
#     ),
#     children = list(
#       list(
#         element = "AlertIcon",
#         props = list(
#           boxSize = "40px",
#           mr = 0
#         )
#       ),
#       list(
#         element = "AlertTitle",
#         props = list(
#           mt = 4,
#           mb = 1,
#           fontSize = "lg"
#         ),
#         children = list(
#           "Application submitted!"
#         )
#       ),
#       list(
#         element = "AlertDescription",
#         props = list(
#           maxWidth = "sm"
#         ),
#         children = list(
#           "Thanks for submitting your application. Our team will get back to you soon."
#         )
#       )
#     )
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration = list(widget = "alert", component = component)
#   )
# }
#
#
# #' Title
# #'
# #' @param inputId
# #' @param menuButton
# #'
# #' @return
# #' @export
# #'
# #' @examples
# chakraMenuInput <- function(inputId, menuButton, menuList, closeOnSelect = TRUE){
#   content <- menuList[["children"]]
#   elements <- vapply(content, `[[`, FUN.VALUE = character(1L), "name")
#   menuoptiongroups <- which(elements == "MenuOptionGroup")
#   if(length(menuoptiongroups)){
#     values <- lapply(content[menuoptiongroups], function(optiongroup){
#       attr(optiongroup, "values")
#     })
#     titles <- lapply(content[menuoptiongroups], function(optiongroup){
#       optiongroup[["attribs"]][["title"]]
#     })
#     names(values) <- titles
#   }
#   component <- list(
#     name = "Fragment",
#     attribs = list(),
#     children = list(
#       menuButton,
#       menuList
#       # list(
#       #   element = "MenuList",
#       #   props = list(),
#       #   children = list(
#       #     list(
#       #       element = "MenuItem",
#       #       props = list(),
#       #       children = list(
#       #         "Download"
#       #       )
#       #     )
#       #   )
#       # )
#     )
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration =
#       list(
#         widget = if(length(menuoptiongroups)) "menuWithGroups" else "menu",
#         component = unclassComponent(component),
#         text = attr(menuButton, "text"),
#         closeOnSelect = closeOnSelect,
#         optiongroups =
#           if(length(menuoptiongroups)) as.list(menuoptiongroups - 1L)
#       ),
#     default = if(length(menuoptiongroups)) values
#   )
# }
#
# chakraDrawerInput <- function(
#   inputId, openButton, options = chakraDrawerOptions(),
#   closeButton = TRUE, header, body, footer
# ){
#   openButton[["name"]] <- "OpenButton"
#   drawer <- list(
#     name = "Drawer",
#     attribs = options,
#     children = list(
#       Tag$DrawerOverlay(),
#       Tag$DrawerContent(
#         if(closeButton) Tag$DrawerCloseButton(),
#         header,
#         body,
#         footer
#       )
#     )
#   )
#   class(drawer) <- "shiny.tag"
#   component <- Tag$Fragment(
#     openButton,
#     drawer
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration =
#       list(
#         widget = "drawer",
#         component = unclassComponent(component)
#       )
#   )
# }
#
# chakraAlertDialogInput <- function(inputId){
#   component <- list(
#     element = "Fragment",
#     props = list(),
#     children = list(
#       list(
#         element = "OpenButton",
#         props = list(
#           colorScheme = "red"
#         ),
#         children = list(
#           "Delete customer"
#         )
#       ),
#       list(
#         element = "AlertDialog",
#         props = list(),
#         children = list(
#           list(
#             element = "AlertDialogOverlay",
#             props = list(),
#             children = list(
#               list(
#                 element = "AlertDialogContent",
#                 props = list(),
#                 children = list(
#                   list(
#                     element = "AlertDialogHeader",
#                     props = list(
#                       fontSize = "lg",
#                       fontWeight = "bold"
#                     ),
#                     children = list(
#                       "Delete customer"
#                     )
#                   ),
#                   list(
#                     element = "AlertDialogBody",
#                     props = list(),
#                     children = list(
#                       "Are you sure? You can't undo this action afterwards"
#                     )
#                   ),
#                   list(
#                     element = "AlertDialogFooter",
#                     props = list(),
#                     children = list(
#                       list(
#                         element = "CancelButton",
#                         props = list(
#                           id = "cancel"
#                         ),
#                         children = list(
#                           "Cancel"
#                         )
#                       ),
#                       list(
#                         element = "Button",
#                         props = list(
#                           id = "delete",
#                           colorScheme = "red",
#                           ml = 3
#                         ),
#                         children = list(
#                           "Delete"
#                         )
#                       )
#                     )
#                   )
#                 )
#               )
#             )
#           )
#         )
#       )
#     )
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration = list(widget = "alertdialog", component = component)
#   )
# }
#
# chakraAlertDialogInput <- function(
#   inputId,
#   options = chakraAlertDialogOptions(),
#   openButton,
#   header,
#   body,
#   footerButtons = chakraButton("Cancel", action = "cancel", value = "cancel")
# ){
#   stopifnot(isChakraButton(openButton))
#   openButton[["name"]] <- "OpenButton"
#   # if(!is.null(cancelButton)){
#   #   if(!isChakraButton(cancelButton)){
#   #     stop("")
#   #   }
#   #   cancelButton[["element"]] <- "CancelButton"
#   # }
#   if(isChakraButton(footerButtons)){
#     footerButtons <- list(footerButtons)
#   }else{
#     isListOfButtons <-
#       all(vapply(footerButtons, isChakraButton, FUN.VALUE = logical(1L)))
#     if(!isListOfButtons){
#       stop("")
#     }
#   }
#   #footerButtons <- lapply(footerButtons, unclass)
#   if(!isChakraBox(header)){
#     stop("")
#   }
#   if(!isChakraBox(body)){
#     stop("")
#   }
#   header[["name"]] <- "AlertDialogHeader"
#   body[["name"]] <- "AlertDialogBody"
#   component <- Tag$Fragment(
#     openButton,
#     Tag$AlertDialog(
#       Tag$AlertDialogOverlay(
#         Tag$AlertDialogContent(
#           header,
#           body,
#           asShinyTag(
#             list(
#               name = "AlertDialogFooter",
#               attribs = list(),
#               children = footerButtons
#             )
#           )
#         )
#       )
#     )
#   )
#   chakraInput(
#     inputId = inputId,
#     configuration = list(
#       widget = "alertdialog",
#       component = unclassComponent(component),
#       inputId = inputId
#     )
#   )
# }
#
# #' <Add Title>
# #'
# #' <Add Description>
# #'
# #' @export
# updateChakraInput <- function(session, inputId, value, configuration = NULL) {
#   message <- list(value = value)
#   if (!is.null(configuration)) message$configuration <- configuration
#   session$sendInputMessage(inputId, message);
# }
