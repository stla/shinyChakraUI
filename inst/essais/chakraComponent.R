library(shiny)
library(shinyChakraUI)
library(jsonlite)
#library(reactR)

myinput <- textInput("text", "Enter text", value="a")

xxx <- sliderInput("slider", "Slider", 0, 10, 5)
xxx$children[[2]]$attribs$class <- NULL

xxx <- selectizeInput("sel", "label", choices=c("a=>b","b","c"))
htmltools::htmlDependencies(xxx) <- NULL


ui <- chakraPage(

  # tags$div(id="invalidstate"),
  # class = "container-fluid",
  # tags$head(
  #   HTML('<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>'),
  #   tags$link(rel = "stylesheet", href = "chakra.css")
  # ),

#  sliderInput("slider", "Slider", 0, 10, 5),
  # tags$head(
  #   tags$script(
  #     HTML(
  #       "$(document).on('shiny:connected', function(){",
  #       "  Shiny.inputBindings.bindingNames['shiny.sliderInput'].binding.initialize(document.getElementById('slider'));",
  #       "});"
  #     )
  #   )
  # ),
  #sliderInput("slider", "Slider", 0, 10, 5),
  # fluidPage(
  # sidebarLayout(
  #   sidebarPanel(
  #     sliderInput("slider", "Slider", 0, 10, 5)
  #   ),
  #   mainPanel(

  # tags$div(id="app"),
  #tags$div(id="cc"),

  fluidRow(
    column(
      6,
      chakraComponent(
        "id",

        withStates(
          Tag$Box(
            bg = "tomato",
            borderWidth = "4px",
            getState("thebutton"),
            getState("yellowtext")
          ),
          states = list(
            thebutton = Tag$Checkbox(
              id = "boxcheckbox", isChecked = TRUE, "BOXCHECKBOX"
            ),
            yellowtext = HTML("<p style='color:yellow'>YELLOW TEXT</p>")
          )
        ),


        withStates(
          Tag$Menu(
            id = "menu2",
            #        isOpen = getState("isopen"),
            # onOpen = list(eval = "() => {states.text.set('CLOSE ME'); setState('isopen', true)}"),
            # onClose = list(eval = "() => {setState('text', 'OPEN ME'); setState('isopen', false)}"),
            onOpen = jseval("() => {setState('isopen', true)}"),
            onClose = jseval("() => {setState('isopen', false)}"),
            Tag$MenuButton(
              colorScheme = "blue",
              isActive = getState("isopen"),
              getState("text")
            ),
            Tag$MenuList(
              minWidth = "240px",
              Tag$MenuOptionGroup(
                title = "Order",
                type = "radio",
                Tag$MenuItemOption(
                  value = "asc",
                  isChecked = TRUE,
                  "Ascending"
                ),
                Tag$MenuItemOption(
                  value = "desc",
                  "Descending"
                )
              ),
              Tag$MenuDivider(),
              Tag$MenuOptionGroup(
                title = "Country",
                type = "checkbox",
                Tag$MenuItemOption(
                  value = "email",
                  isChecked = TRUE,
                  "Email"
                ),
                Tag$MenuItemOption(
                  value = "phone",
                  "Phone"
                )
              )
            )
          ),
          states = list(
            ref = useRef(),
            isopen = FALSE,
            text = jseval("getState('isopen') ? 'CLOSE ME => x' : 'OPEN ME'")
            #        text = "OPEN ME"#
          )
        ),

        #    HTML(as.character(tags$p(id="ii", class="chakraTag", "data-shinyvalue"="a"))),
        Tag$Button(
          id = "button",
          className = "action-button",
          "CLICK MMMMMMMEEEEEEE"
        ),

        # tags$div(list(eval = '(() => {if(!window.SSTATE){window.SSTATE={"st":React.useState(2)};console.log(\"OOOOOOOOO\",window.SSTATE)};console.log(\"SSSTTTAAATTTEEES\", typeof 2)})()')),
        # withStates(
        #   Tag$Button(
        #     onClick = list(eval = "() => states.uuu.set('AAAA')"),
        #     getState("uuu")
        #   ),
        #   states = list(uuu = "MMMMMMMMMMMMMM")
        # ),
        #
        withStates(
          Tag$Fragment(
            Tag$Box(
              # list(eval = "(() => {alert(JSON.stringify(states))})()"),
              #list(eval = "(() => {let s = {...states.boxtext}; let x = states.boxtext.set; states.boxtext.set = (v) => {states.chakrazzz = states.cc; alert('ho'); bind = false; x(chakraComponent(JSON.parse(JSON.stringify(v)), $.extend(states, {boxtext:s}), {}))}; states.boxtext = s;})()"),
              #onClick = list(eval = "() => Shiny.setInputValue('input3', getState('boxtext'))"),#states.boxtext.set(React.createElement('span',{},['aa']))"),#"() => states.boxtext.set($($.parseHTML('<span>aaaa</span>')).toArray())"),
              getState("boxtext")#list(eval = "states.chakrazzz.get().toString()")
            ),
            Tag$Button(
              onClick = jseval("() => {setState('hidden', false);setState('boxtext', 'PPPPPPPPPP')}"),
              #        onClick = list(eval = "() => {console.log(states.chakrazzz.get());let x = states.chakrazzz.set;states.chakrazzz.set = (v) =>{alert('hi');x(v)}}"),
              getState("AA")
            ),
            Tag$Checkbox(
              id = "hiddencheckbox",
              "data-x" = 3,
              hidden = getState("hidden"),
              "HIDDEN CHECKBOX"
            )
          ),
          states = list(
            hidden = TRUE, boxtext = "Hello=>b", boxtext2 = "CONSOLE LOG",
            AA = "UUUUUUUUUUUUUUUUUUUUUUU"
            #span = list(eval = '$("<span>SPAN</span>").on("xx",function(){this.innerHTML = "SSSS"}).get()[0]')
          )
        ),

        # withStates(
        #   Tag$Input(
        #     id = "ooo",
        #     placeholder = getState("placeholder")
        #   ),
        #   states = list(
        #     placeholder = "LLLLLLLLLLLLLLL"
        #   )
        # ),

        # withStates(
        #   Tag$Stack(
        #     Tag$Input(
        #       className = "not",
        #       value = getState("helloworld"),
        #       isReadOnly = TRUE,
        #       placeholder="Welcome"
        #     ),
        #     Tag$Button(
        #       onClick = list(eval = "states.clipboard.onCopy"),
        #       ml = 2,
        #       list(eval = "states.clipboard.hasCopied ? 'Copied' : 'Copy'")
        #     )
        #   ),
        #   states = list(
        #     helloworld = "Hello World",
        #     clipboard = useClipboard(getState("helloworld"))
        #   )
        # ),

        # withDisclosure(
        #   Tag$Fragment(
        #     Tag$Button(
        #       onClick =  list(eval = "component.disclosure.onToggle"),# list(disclosure = "onToggle"),
        #       "Click me!"
        #     ),
        #     Tag$Fade(
        #       "in" = list(disclosure = "isOpen"),
        #       Tag$Box(
        #         p="40px",
        #         color="white",
        #         mt="4",
        #         bg="teal.500",
        #         rounded="md",
        #         shadow="md",
        #         "Fade"
        #       )
        #     )
        #   )
        # ),

        withStates(
          tags$div(
            Tag$Button(
              onClick = jseval("() => console.log(states.disclosure.get())"),
              "TYPEOF"
            ),
            Tag$Button(
              onClick =  getHook("disclosure", "onToggle"),
              "Click me!!!!!!!!!!!!!!!!!"
            ),
            Tag$Fade(
              "in" = getHook("disclosure", "isOpen"),
              Tag$Box(
                p="40px",
                color="white",
                mt="4",
                bg="teal.500",
                rounded="md",
                shadow="md",
                "Fade"
              )
            )
          ),
          states = list(disclosure = useDisclosure())
        ),

        Tag$Tabs(
          id = "tabs",
          Tag$TabList(
            Tag$Tab("One"),
            Tag$Tab("Two")
          ),
          Tag$TabPanels(
            Tag$TabPanel(
              tags$p("one")
            ),
            Tag$TabPanel(
              tags$p("two")
            )
          )
        ),


        chakraDrawer(
          "drawer",
          openButton = Tag$Button("Open Drawer"),
          options = chakraDrawerOptions(placement = "right"),
          header = Tag$DrawerHeader("I'm the header"),
          body = Tag$DrawerBody(
            Tag$Box("I'm the body")
          ),
          footer = Tag$DrawerFooter(
            Tag$Button(value = "try me", "Try me"),
            Tag$Button("Close", action = "close", variant = "outline")
          )
        ),

        Tag$CheckboxGroup(
          id = "checkboxgroup",
          defaultValue = c("nar => uto", "sasuke"),
          Tag$HStack(
            Tag$Checkbox(
              value = "nar => uto",
              "Naruto"
            ),
            Tag$Checkbox(
              value = "sasuke",
              "Sasuke"
            )
          )
        ),

        sliderInput("slider", "Slider", 0, 10, 5),

        fluidRow(
          column(
            6,
            tags$span("aa")
            #        numericInput("num", "Enter number", 4)
          ),
          column(
            6,
            selectizeInput("sel", "label", choices=c("a=>b","b","c"))
          )
        ),

        Tag$RadioGroup(
          id = "radio",
          value = "1",
          name = "xx",
          Tag$Stack(
            direction = "row",
            Tag$Radio(
              value = "1",
              "First"
            ),
            Tag$Radio(
              value = "2",
              "Second"
            ),
            Tag$Radio(
              value = "3",
              "Third"
            )
          )
        ),

        #Tag$XXIcon(),

        Tag$Menu(
          id = "mm",
          Tag$MenuButton(
            colorScheme = "red",
            icon = Tag$HamburgerIcon()
            #text = list(textWhenOpen = "Close me", textWhenClose = "Open me"),
          ),
          Tag$MenuList(
            minWidth = "240px",
            Tag$MenuItem(
              value = "item1",
              "Item1"
            ),
            Tag$MenuItem(
              value = "item2",
              "Item2"
            )
          )
        ),


        Tag$Menu(
          id = "menu",
          Tag$MenuButton(
            colorScheme = "blue",
            text = list(textWhenOpen = "Close", textWhenClose = "Open")
            #        "My menu"
          ),
          Tag$MenuList(
            minWidth = "240px",
            Tag$MenuOptionGroup(
              title = "Order",
              type = "radio",
              Tag$MenuItemOption(
                value = "asc",
                isChecked = TRUE,
                "Ascending"
              ),
              Tag$MenuItemOption(
                value = "desc",
                "Descending"
              )
            ),
            Tag$MenuDivider(),
            Tag$MenuOptionGroup(
              title = "Country",
              type = "checkbox",
              Tag$MenuItemOption(
                value = "email",
                isChecked = TRUE,
                "Email"
              ),
              Tag$MenuItemOption(
                value = "phone",
                "Phone"
              )
            )
          )
        ),

        chakraCheckboxWithChildren(
          "cwc",
          Tag$Checkbox(
            "Parentxxx checkbox"
          ),
          Tag$Checkbox(
            "Child checkbox 1"
          ),
          Tag$Checkbox(
            isChecked = TRUE,
            "Child checkbox 2"
          )
        ),


        #    uiOutput("ui"),#, class = "shiny-bound-output"),

        tags$input(id="ii", type="text", value="vv"),
        HTML("uuu"),
        Tag$Input(
          id = "theinput",
          placeholder = "The input",
          value = "x"
        ),
        Tag$InputGroup(
          Tag$InputLeftElement(
            pointerEvents = "none",
            children = Tag$PhoneIcon()
          ),
          # Tag$InputLeftAddon(
          #   children="+234"
          # ),
          Tag$Input(
            id = "theinput2",
            value = "a => b"
          )
        ),

        Tag$Button(
          colorScheme = "red",
          onClick = "() => console.log('ok')",
          "console log"
        ),

        chakraAlertDialog(
          inputId = "alert",
          openButton = Tag$Button(
            "Delete customer",
            colorScheme = "red"
          ),
          header = Tag$AlertDialogHeader(
            "Delete customer", fontSize = "lg", fontWeight = "bold"
          ),
          body = Tag$AlertDialogBody("Are you sure? You can't undo this action afterwards"),
          footerButtons = list(
            Tag$Button(
              "Cancel", action = "cancel", id = "cancel", value = "CANCEL"
            ),
            Tag$Button(
              "Delete", action = "disable", id = "delete", colorScheme = "red", ml = 3
            ),
            Tag$Button(
              "unmount", action = "remove", value = "xx"
            )
          )
        ),

        Tag$Checkbox(
          id = "checkbox",
          isChecked = TRUE,
          "CHECKBOX"
        ),

        withStates(
          Tag$Checkbox(
            id = "checkbox2",
            onChange = jseval(
              "(event) => setState('checkboxtext', event.target.checked ? 'UUUU' : 'VVV')"
            ),
            getState("checkboxtext2")
          ),
          states = list(checkboxtext = "CHECKBOX2",
                        checkboxtext2 = jseval("getState('checkboxtext') + 'UUUUU'"))
        ),

        Tag$Checkbox(
          id = "checkbox3",
          onChange = jseval("(e) => alert('hi')"),
          "CHECKBOX3"
        ),

        withStates(
          Tag$Fragment(
            Tag$Input(
              id = "input3",
              value = getState("inputvalue"),#list(eval = "'$' + states.inputvalue.get()"),#getState("inputvalue")
              onChange = jseval("(event) => setState('inputvalue', event.target.value.replace('$', ''))"),
              shinyValue = TRUE
            ),
            Tag$Button(
              colorScheme = "orange",
              onClick = jseval("() => {console.log(Hooks['useDisclosure']); setState('inputvalue', 'IIIIIIIIIIII')}")
            )
          ),
          states = list(inputvalue = "INPUTVALUE")
        )


      )

    ),

    column(
      6,
      verbatimTextOutput("inputs")
    )
  )
# tags$script(HTML('
#   ReactDOM.render(app, document.getElementById("app"));
#   const el = document.getElementById("id");
#   console.log(el);
#   $(el).data("configuration", JSON.parse($(el).next().next().text()));
#   const element = React.createElement(ChakraComponent, {
#     configuration: $(el).data("configuration")
#   });
#   ReactDOM.render(element, el);
# '))




#  )
)

#     )
#   )
# )

# ui <- fluidPage(
#   actionButton("button", "Click me")
# )


server <- function(input, output, session){

#  observeEvent(input[["button"]],{
    output[["ui"]] <- renderUI({
#      chakraComponent("iiii", Tag$Button("TEST"))
      actionButton("red", "CHAKRA BUTTON")
    })
 # })

    observeEvent(input[["button"]],{
      print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
      checkbox <- Tag$Checkbox(
        id = "zzz",
        onChange = list(eval = "(event) => {alert(states.chakrazzz)}"),
        "NEWCHECKBOX"
      )
      checkbox[["hasStates"]] = TRUE
      scripttag <- Tag$ScriptTag(dangerouslySetInnerHTML = list(eval="{__html: 'console.log(\"SSSTTTAAATTTEEES\", states)'}"))
      scripttag <- tags$div(list(eval = '(() => {if(!states.chakrazzz){states.chakrazzz = STATE};console.log(\"SSSTTTAAATTTEEES\", states)})()'))
      scripttag[["hasStates"]] = TRUE
      component <- Tag$Fragment(scripttag,checkbox)
      setReactState(session, "id", "boxtext",
                    Tag$Fragment(
                      #tags$div(list(eval = "$(getState('span')).trigger('xx')")),
                      Tag$Button(
                        onClick = jseval("() => {$('#myspan').text('SSSSSSSS')}"),
                        paste0("SETSTATEAA", input[["button"]])
                      ),
                    Tag$Checkbox(
                      id = "uuuuu",
                      isChecked = TRUE,
                      onChange = jseval("(event) => {setState('AA','LLL');alert(states.AA.get())}"),
                      HTML("<span id='myspan'>SPAN</span>") #getState('boxtext2')
                    ))

                    # Tag$CheckboxGroup(
                    #   id = "zzz",
                    #   defaultValue = c("nar => uto", "sasuke"),
                    #   Tag$HStack(
                    #     Tag$Checkbox(
                    #       value = "nar => uto",
                    #       "Naruto"
                    #     ),
                    #     Tag$Checkbox(
                    #       value = "sasuke",
                    #       "Sasuke"
                    #     )
                    #   )
                    # )
                    #list(react = shinyChakraUI:::unclassComponent(component)[["component"]])                    # React$Button(
                    #   colorScheme = "red",
                    #   onClick = list(eval = "() => states.boxtext.set('YYYOOOO')"),
                    #   "QQQQQQQQQ"
                    # )
                    # Tag$Input(
                    #   id = "xxxxxxxxxxxxxxxxxx",
                    #   placeholder = "AAAAAAAAAAAAAAAAAAAA",
                    #   value = "x"
                    # )
                    # Tag$Stack(
                    #   Tag$Button(
                    #     onClick = list(eval = "() => states.boxtext.set('YYYOOOO')"),
                    #     "OOOOOOOO"
                    #   ),
                    #   withStates(
                    #     Tag$Box(
                    #       "AAAA"#list(eval = "states.boxtext2.get()")
                    #     ), states = NULL#list(boxtext2 = "IIIIIIIII")
                    #   ),
                    #   actionButton("aaaa", "UUUU")
                    # )
      )
      # showModal(modalDialog(
      #   title = "Important message",
      #   "This is an important message!",
      #   footer =
      #     chakraComponent("xx", Tag$Button("data-dismiss" = "modal", "Dismiss"))
      # ))
    })

    inputs <- reactiveVal()

    observers <- NULL
    observeEvent(names(input), {
      lapply(observers, function(o) o$destroy())
      observers <<- lapply(names(input), function(inputName){
        #inputIds[[inputName]] <- input[[inputName]]
        observeEvent(input[[inputName]], {
          cat(inputName, "\n")
          print(input[[inputName]])
        })
      })
      # xx <<- reactiveValuesToList(inputIds)
    })

    output[["inputs"]] <- renderPrint({
      inputs <- reactiveValuesToList(input)
      toJSON(inputs, auto_unbox = TRUE, pretty = TRUE)
    })
    # lapply(xx, function(id){
    #   observe({
    #     cat(id, "\n")
    #     print(input[[id]])
    #   })
    # })

    # printinput <- function(id){
    #   cat(id, "\n")
    #   print(input[[id]])
    # }
    #
    # lapply(names(input), function(id){
    #   observe({printinput(id)})
    # })

  # observe({
  #   print(input[["menu"]])
  #   # print(input[["num"]])
  #   # print(input[["radio"]])
  #   # print(input[["slider"]])
  #   #print(input[["cwc"]])
  #   print(input[["checkboxgroup"]])
  #   # print(input[["button"]])
  #   print(input[["theinput"]])
  #   # print(input[["theinput2"]])
  #   # print(input[["ii"]])
  #   # print(input[["alert"]])
  #   # print(input[["mm"]])
  #   # print(input[["tabs"]])
  #   print(input[["aaaa"]])
  #   print(input[["ooo"]])
  #   print(input[["checkbox2"]])
  #   print(input[["checkbox3"]])
  #   print(input[["input3"]])
  #   print(input[["zzz"]])
  #   print(input[["checkbox"]])
  #   print(input[["hiddencheckbox"]])
  #   print(input[["menu2"]])
  #   print(input[["uuuuu"]])
  #   print(input[["id"]])
  # })
}

shinyApp(ui, server)

