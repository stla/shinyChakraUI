library(shiny)
library(shinyChakraUI)
library(reactR)

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
  tags$div(id="cc"),

  chakraComponent(
    "id",


    withStates(
      React$Menu(
        id = "menu2",
        #        isOpen = getState("isopen"),
        # onOpen = list(eval = "() => {states.text.set('CLOSE ME'); setState('isopen', true)}"),
        # onClose = list(eval = "() => {setState('text', 'OPEN ME'); setState('isopen', false)}"),
        onOpen = jseval("() => {setState('isopen', true)}"),
        onClose = jseval("() => {setState('isopen', false)}"),
        React$MenuButton(
          colorScheme = "blue",
          isActive = getState("isopen"),
          getState("text")
        ),
        React$MenuList(
          minWidth = "240px",
          React$MenuOptionGroup(
            title = "Order",
            type = "radio",
            React$MenuItemOption(
              value = "asc",
              isChecked = TRUE,
              "Ascending"
            ),
            React$MenuItemOption(
              value = "desc",
              "Descending"
            )
          ),
          React$MenuDivider(),
          React$MenuOptionGroup(
            title = "Country",
            type = "checkbox",
            React$MenuItemOption(
              value = "email",
              isChecked = TRUE,
              "Email"
            ),
            React$MenuItemOption(
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
React$Button(
  id = "button",
  className = "action-button",
  "CLICK MMMMMMMEEEEEEE"
),

# tags$div(list(eval = '(() => {if(!window.SSTATE){window.SSTATE={"st":React.useState(2)};console.log(\"OOOOOOOOO\",window.SSTATE)};console.log(\"SSSTTTAAATTTEEES\", typeof 2)})()')),
    # withStates(
    #   React$Button(
    #     onClick = list(eval = "() => states.uuu.set('AAAA')"),
    #     getState("uuu")
    #   ),
    #   states = list(uuu = "MMMMMMMMMMMMMM")
    # ),
    #
    withStates(
      React$Fragment(
      React$Box(
        # list(eval = "(() => {alert(JSON.stringify(states))})()"),
        #list(eval = "(() => {let s = {...states.boxtext}; let x = states.boxtext.set; states.boxtext.set = (v) => {states.chakrazzz = states.cc; alert('ho'); bind = false; x(chakraComponent(JSON.parse(JSON.stringify(v)), $.extend(states, {boxtext:s}), {}))}; states.boxtext = s;})()"),
        #onClick = list(eval = "() => Shiny.setInputValue('input3', getState('boxtext'))"),#states.boxtext.set(React.createElement('span',{},['aa']))"),#"() => states.boxtext.set($($.parseHTML('<span>aaaa</span>')).toArray())"),
        getState("boxtext")#list(eval = "states.chakrazzz.get().toString()")
      ),
      React$Button(
         onClick = jseval("() => {setState('hidden', false);setState('boxtext', 'PPPPPPPPPP')}"),
#        onClick = list(eval = "() => {console.log(states.chakrazzz.get());let x = states.chakrazzz.set;states.chakrazzz.set = (v) =>{alert('hi');x(v)}}"),
        getState("AA")
      ),
      React$Checkbox(
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
    #   React$Input(
    #     id = "ooo",
    #     placeholder = getState("placeholder")
    #   ),
    #   states = list(
    #     placeholder = "LLLLLLLLLLLLLLL"
    #   )
    # ),

    # withStates(
    #   React$Stack(
    #     React$Input(
    #       className = "not",
    #       value = getState("helloworld"),
    #       isReadOnly = TRUE,
    #       placeholder="Welcome"
    #     ),
    #     React$Button(
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
    #   React$Fragment(
    #     React$Button(
    #       onClick =  list(eval = "component.disclosure.onToggle"),# list(disclosure = "onToggle"),
    #       "Click me!"
    #     ),
    #     React$Fade(
    #       "in" = list(disclosure = "isOpen"),
    #       React$Box(
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
    React$Button(
      onClick = jseval("() => console.log(states.disclosure.get())"),
      "TYPEOF"
    ),
    React$Button(
      onClick =  getHook("disclosure", "onToggle"),
      "Click me!!!!!!!!!!!!!!!!!"
    ),
    React$Fade(
      "in" = getHook("disclosure", "isOpen"),
      React$Box(
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

    React$Tabs(
      id = "tabs",
      React$TabList(
        React$Tab("One"),
        React$Tab("Two")
      ),
      React$TabPanels(
        React$TabPanel(
          tags$p("one")
        ),
        React$TabPanel(
          tags$p("two")
        )
      )
    ),


    chakraDrawer(
      "drawer",
      openButton = React$Button("Open"),
      options = chakraDrawerOptions(placement = "right"),
      header = React$DrawerHeader("I'm the header"),
      body = React$DrawerBody(
        React$Box("I'm the body")
      ),
      footer = React$DrawerFooter(
        React$Button("Close", action = "close", variant = "outline")
      )
    ),

    React$CheckboxGroup(
      id = "checkboxgroup",
      defaultValue = c("nar => uto", "sasuke"),
      React$HStack(
        React$Checkbox(
          value = "nar => uto",
          "Naruto"
        ),
        React$Checkbox(
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

    # React$RadioGroup(
    #   id = "radio",
    #   value = "1",
    #   name = "xx",
    #   React$Stack(
    #     direction = "row",
    #     React$Radio(
    #       value = "1",
    #       "First"
    #     ),
    #     React$Radio(
    #       value = "2",
    #       "Second"
    #     ),
    #     React$Radio(
    #       value = "3",
    #       "Third"
    #     )
    #   )
    # ),

#React$XXIcon(),

React$Menu(
  id = "mm",
  React$MenuButton(
    colorScheme = "red",
    icon = React$HamburgerIcon()
    #text = list(textWhenOpen = "Close me", textWhenClose = "Open me"),
  ),
  React$MenuList(
    minWidth = "240px",
    React$MenuItem(
      value = "item1",
      "Item1"
    ),
    React$MenuItem(
      value = "item2",
      "Item2"
    )
  )
),


    React$Menu(
      id = "menu",
      React$MenuButton(
        colorScheme = "blue",
        text = list(textWhenOpen = "Close", textWhenClose = "Open")
#        "My menu"
      ),
      React$MenuList(
        minWidth = "240px",
        React$MenuOptionGroup(
          title = "Order",
          type = "radio",
          React$MenuItemOption(
            value = "asc",
            isChecked = TRUE,
            "Ascending"
          ),
          React$MenuItemOption(
            value = "desc",
            "Descending"
          )
        ),
        React$MenuDivider(),
        React$MenuOptionGroup(
          title = "Country",
          type = "checkbox",
          React$MenuItemOption(
            value = "email",
            isChecked = TRUE,
            "Email"
          ),
          React$MenuItemOption(
            value = "phone",
            "Phone"
          )
        )
      )
    ),

    chakraCheckboxWithChildren(
      "cwc",
      React$Checkbox(
        "Parentxxx checkbox"
      ),
      React$Checkbox(
        "Child checkbox 1"
      ),
      React$Checkbox(
        isChecked = TRUE,
        "Child checkbox 2"
      )
    ),


#    uiOutput("ui"),#, class = "shiny-bound-output"),

    tags$input(id="ii", type="text", value="vv"),
    HTML("uuu"),
    React$Input(
      id = "theinput",
      placeholder = "The input",
      value = "x"
    ),
    React$InputGroup(
      React$InputLeftElement(
        pointerEvents = "none",
        children = React$PhoneIcon()
      ),
      # React$InputLeftAddon(
      #   children="+234"
      # ),
      React$Input(
        id = "theinput2",
        value = "a => b"
      )
    ),

    React$Button(
      colorScheme = "red",
      onClick = "() => console.log('ok')",
      "console log"
    ),

chakraAlertDialog(
  inputId = "alert",
  openButton = React$Button(
    "Delete customer",
    colorScheme = "red"
  ),
  header = React$AlertDialogHeader(
    "Delete customer", fontSize = "lg", fontWeight = "bold"
  ),
  body = React$AlertDialogBody("Are you sure? You can't undo this action afterwards"),
  footerButtons = list(
    React$Button(
      "Cancel", action = "cancel", id = "cancel", value = "CANCEL"
    ),
    React$Button(
      "Delete", action = "disable", id = "delete", colorScheme = "red", ml = 3
    ),
    React$Button(
      "unmount", action = "remove", value = "xx"
    )
  )
),

  React$Checkbox(
    id = "checkbox",
    isChecked = TRUE,
    "CHECKBOX"
  ),

withStates(
  React$Checkbox(
    id = "checkbox2",
    onChange = jseval(
      "(event) => setState('checkboxtext', event.target.checked ? 'UUUU' : 'VVV')"
    ),
    getState("checkboxtext2")
  ),
  states = list(checkboxtext = "CHECKBOX2",
                checkboxtext2 = jseval("getState('checkboxtext') + 'UUUUU'"))
),

React$Checkbox(
  id = "checkbox3",
  onChange = jseval("(e) => alert('hi')"),
  "CHECKBOX3"
),

withStates(
  React$Fragment(
    React$Input(
      id = "input3",
      value = getState("inputvalue"),#list(eval = "'$' + states.inputvalue.get()"),#getState("inputvalue")
      onChange = jseval("(event) => setState('inputvalue', event.target.value.replace('$', ''))"),
      shinyValue = TRUE
    ),
    React$Button(
      colorScheme = "orange",
      onClick = jseval("() => {console.log(Hooks['useDisclosure']); setState('inputvalue', 'IIIIIIIIIIII')}")
    )
  ),
  states = list(inputvalue = "INPUTVALUE")
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
#      chakraComponent("iiii", React$Button("TEST"))
      actionButton("red", "CHAKRA BUTTON")
    })
 # })

    observeEvent(input[["button"]],{
      print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
      checkbox <- React$Checkbox(
        id = "zzz",
        onChange = list(eval = "(event) => {alert(states.chakrazzz)}"),
        "NEWCHECKBOX"
      )
      checkbox[["hasStates"]] = TRUE
      scripttag <- React$ScriptTag(dangerouslySetInnerHTML = list(eval="{__html: 'console.log(\"SSSTTTAAATTTEEES\", states)'}"))
      scripttag <- tags$div(list(eval = '(() => {if(!states.chakrazzz){states.chakrazzz = STATE};console.log(\"SSSTTTAAATTTEEES\", states)})()'))
      scripttag[["hasStates"]] = TRUE
      component <- React$Fragment(scripttag,checkbox)
      setReactState(session, "id", "boxtext",
                    React$Fragment(
                      #tags$div(list(eval = "$(getState('span')).trigger('xx')")),
                      React$Button(
                        onClick = jseval("() => {$('#myspan').text('SSSSSSSS')}"),
                        paste0("SETSTATEAA", input[["button"]])
                      ),
                    React$Checkbox(
                      id = "uuuuu",
                      isChecked = TRUE,
                      onChange = jseval("(event) => {setState('AA','LLL');alert(states.AA.get())}"),
                      HTML("<span id='myspan'>SPAN</span>") #getState('boxtext2')
                    ))

                    # React$CheckboxGroup(
                    #   id = "zzz",
                    #   defaultValue = c("nar => uto", "sasuke"),
                    #   React$HStack(
                    #     React$Checkbox(
                    #       value = "nar => uto",
                    #       "Naruto"
                    #     ),
                    #     React$Checkbox(
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
                    # React$Input(
                    #   id = "xxxxxxxxxxxxxxxxxx",
                    #   placeholder = "AAAAAAAAAAAAAAAAAAAA",
                    #   value = "x"
                    # )
                    # React$Stack(
                    #   React$Button(
                    #     onClick = list(eval = "() => states.boxtext.set('YYYOOOO')"),
                    #     "OOOOOOOO"
                    #   ),
                    #   withStates(
                    #     React$Box(
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
      #     chakraComponent("xx", React$Button("data-dismiss" = "modal", "Dismiss"))
      # ))
    })

  observe({
    print(input[["menu"]])
    # print(input[["num"]])
    # print(input[["radio"]])
    # print(input[["slider"]])
    #print(input[["cwc"]])
    print(input[["checkboxgroup"]])
    # print(input[["button"]])
    print(input[["theinput"]])
    # print(input[["theinput2"]])
    # print(input[["ii"]])
    # print(input[["alert"]])
    # print(input[["mm"]])
    # print(input[["tabs"]])
    print(input[["aaaa"]])
    print(input[["ooo"]])
    print(input[["checkbox2"]])
    print(input[["checkbox3"]])
    print(input[["input3"]])
    print(input[["zzz"]])
    print(input[["checkbox"]])
    print(input[["hiddencheckbox"]])
    print(input[["menu2"]])
    print(input[["uuuuu"]])
    print(input[["id"]])
  })
}

shinyApp(ui, server)

