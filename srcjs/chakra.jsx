import { reactShinyInput, hydrate } from 'reactR';
import * as React from 'react';
import { unmountComponentAtNode } from "react-dom";
import ReactDOM from 'react-dom';
import {
  useDisclosure,
  useClipboard,
  ChakraProvider,
  Button,
  IconButton,
  Box,
  Alert,
  AlertIcon,
  AlertTitle,
  AlertDescription,
  AlertDialog,
  AlertDialogBody,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogContent,
  AlertDialogOverlay,
  Menu,
  MenuButton,
  MenuList,
  MenuItem,
  MenuItemOption,
  MenuGroup,
  MenuOptionGroup,
  MenuIcon,
  MenuCommand,
  MenuDivider,
  Drawer,
  DrawerBody,
  DrawerFooter,
  DrawerHeader,
  DrawerOverlay,
  DrawerContent,
  DrawerCloseButton,
  Checkbox,
  CheckboxGroup,
  Radio,
  RadioGroup,
  Stack,
  HStack,
  Input,
  InputGroup,
  InputLeftAddon,
  InputRightAddon,
  InputLeftElement,
  InputRightElement,
  Popover,
  PopoverTrigger,
  PopoverContent,
  PopoverHeader,
  PopoverBody,
  PopoverFooter,
  PopoverArrow,
  PopoverCloseButton,
  Tabs, 
  TabList, 
  TabPanels, 
  Tab, 
  TabPanel,
  Fade, 
  ScaleFade, 
  Slide, 
  SlideFade
} from "@chakra-ui/react";
import {
  AddIcon,
  ArrowBackIcon,
  ArrowDownIcon,
  ArrowForwardIcon,
  ArrowLeftIcon,
  ArrowRightIcon,
  ArrowUpIcon,
  ArrowUpDownIcon,
  AtSignIcon,
  AttachmentIcon,
  BellIcon,
  CalendarIcon,
  ChatIcon,
  CheckIcon,
  CheckCircleIcon,
  ChevronDownIcon,
  ChevronLeftIcon,
  ChevronRightIcon,
  ChevronUpIcon,
  CloseIcon,
  CopyIcon,
  DeleteIcon,
  DownloadIcon,
  DragHandleIcon,
  EditIcon,
  EmailIcon,
  ExternalLinkIcon,
  HamburgerIcon,
  InfoIcon,
  InfoOutlineIcon,
  LinkIcon,
  LockIcon,
  MinusIcon,
  MoonIcon,
  NotAllowedIcon,
  PhoneIcon,
  PlusSquareIcon,
  QuestionIcon,
  QuestionOutlineIcon,
  RepeatIcon,
  RepeatClockIcon,
  SearchIcon,
  Search2Icon,
  SettingsIcon,
  SmallAddIcon,
  SmallCloseIcon,
  SpinnerIcon,
  StarIcon,
  SunIcon,
  TimeIcon,
  TriangleDownIcon,
  TriangleUpIcon,
  UnlockIcon,
  UpDownIcon,
  ViewIcon,
  ViewOffIcon,
  WarningIcon,
  WarningTwoIcon
} from "@chakra-ui/icons";
import ReactHtmlParser from "react-html-parser";
import ScriptTag from "react-script-tag";
//const evalComponent = new Function("React", "component", "return component");

const Fragment = React.Fragment;
const CancelButton = Button;
const OpenButton = Button;
const ClosingButton = Button;
const UnmountingButton = Button;
const DisableButton = Button;
const RemoveButton = Button;
const CancelIconButton = IconButton;
const OpenIconButton = IconButton;
const ClosingIconButton = IconButton;
const UnmountingIconButton = IconButton;
const DisableIconButton = IconButton;
const RemoveIconButton = IconButton;

const ChakraComponents = {
  ScriptTag,
  Fragment,
  AddIcon,
  ArrowBackIcon,
  ArrowDownIcon,
  ArrowForwardIcon,
  ArrowLeftIcon,
  ArrowRightIcon,
  ArrowUpIcon,
  ArrowUpDownIcon,
  AtSignIcon,
  AttachmentIcon,
  BellIcon,
  CalendarIcon,
  ChatIcon,
  CheckIcon,
  CheckCircleIcon,
  ChevronDownIcon,
  ChevronLeftIcon,
  ChevronRightIcon,
  ChevronUpIcon,
  CloseIcon,
  CopyIcon,
  DeleteIcon,
  DownloadIcon,
  DragHandleIcon,
  EditIcon,
  EmailIcon,
  ExternalLinkIcon,
  HamburgerIcon,
  InfoIcon,
  InfoOutlineIcon,
  LinkIcon,
  LockIcon,
  MinusIcon,
  MoonIcon,
  NotAllowedIcon,
  PhoneIcon,
  PlusSquareIcon,
  QuestionIcon,
  QuestionOutlineIcon,
  RepeatIcon,
  RepeatClockIcon,
  SearchIcon,
  Search2Icon,
  SettingsIcon,
  SmallAddIcon,
  SmallCloseIcon,
  SpinnerIcon,
  StarIcon,
  SunIcon,
  TimeIcon,
  TriangleDownIcon,
  TriangleUpIcon,
  UnlockIcon,
  UpDownIcon,
  ViewIcon,
  ViewOffIcon,
  WarningIcon,
  WarningTwoIcon,
  ChakraProvider,
  Button,
  CancelButton,
  OpenButton,
  ClosingButton,
  UnmountingButton,
  DisableButton,
  RemoveButton,
  IconButton,
  CancelIconButton,
  OpenIconButton,
  ClosingIconButton,
  UnmountingIconButton,
  DisableIconButton,
  RemoveIconButton,
  Box,
  Alert,
  AlertIcon,
  AlertTitle,
  AlertDescription,
  AlertDialog,
  AlertDialogBody,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogContent,
  AlertDialogOverlay,
  Menu,
  MenuButton,
  MenuList,
  MenuItem,
  MenuItemOption,
  MenuGroup,
  MenuOptionGroup,
  MenuIcon,
  MenuCommand,
  MenuDivider,
  Drawer,
  DrawerBody,
  DrawerFooter,
  DrawerHeader,
  DrawerOverlay,
  DrawerContent,
  DrawerCloseButton,
  Checkbox,
  CheckboxGroup,
  Radio,
  RadioGroup,
  Stack,
  HStack,
  Input,
  InputGroup,
  InputLeftAddon,
  InputRightAddon,
  InputLeftElement,
  InputRightElement,
  Popover,
  PopoverTrigger,
  PopoverContent,
  PopoverHeader,
  PopoverBody,
  PopoverFooter,
  PopoverArrow,
  PopoverCloseButton,
  Tabs, 
  TabList, 
  TabPanels, 
  Tab, 
  TabPanel,
  Fade, 
  ScaleFade, 
  Slide, 
  SlideFade
};

const ChakraTags = Object.keys(ChakraComponents);

const getMenuOptionGroupSelections = menuoptiongroup => {
  let type = menuoptiongroup.attribs.type;
  let selections = [];
  let menuitemoptions = menuoptiongroup.children;
  for(let i = 0; i < menuitemoptions.length; i++){
    let attribs = menuitemoptions[i].attribs;
    if(attribs.isChecked){
      if(type === "radio"){
        return attribs.value;
      }
      selections.push(attribs.value);
    }
  }
  return selections.length ? selections : null;
};

const getMenuOptionGroups = menulist => {
  let menuoptiongroups = [];
  let children = menulist.children;
  for(let i = 0; i < children.length; i++){
    let item = children[i];
    if(item.name === "MenuOptionGroup"){
      menuoptiongroups.push(item);
    }
  }
  return menuoptiongroups.length ? menuoptiongroups : null;
};

const getMenuListSelection = menulist => {
  let menuoptiongroups = getMenuOptionGroups(menulist);
  if(menuoptiongroups === null){
    return null;
  }
  let selection = {};
  for(let i = 0; i < menuoptiongroups.length; i++){
    let menuoptiongroup = menuoptiongroups[i];
    menuoptiongroup.attribs.title = decodeURI(menuoptiongroup.attribs.title);
    selection[menuoptiongroup.attribs.title] = getMenuOptionGroupSelections(menuoptiongroup);
  }
  return selection;
};

const getMenuList = menu => {
  let children = menu.children;
  for(let i = 0; i < children.length; i++){
    let item = children[i];
    if(item.name === "MenuList"){
      return item;
    }
  }
};

const getMenuSelection = menu => {
  return getMenuListSelection(getMenuList(menu));
};

const makeMenuComponent = menu => {
  let selected = getMenuSelection(menu);
  if(selected === null){
    return ;
  }
  const [value, setValue] = React.useState(selected);
  let menuoptiongroups = getMenuOptionGroups(getMenuList(menu));
  for(let i = 0; i < menuoptiongroups.length; i++){
    let groupprops = menuoptiongroups[i].attribs;
    let grouptitle = groupprops.title;
    if(selected[grouptitle]){
      groupprops.defaultValue = selected[grouptitle];
    }
    groupprops.onChange = (selection) => {
      value[grouptitle] = selection;//Array.isArray(selection) ? selection.map(decodeURI) : decodeURI(selection);
      setValue(value);
      Shiny.setInputValue(
        menu.attribs.id + ":shinyChakraUI.widget", {value: value, widget: "menuWithGroups"}
      );
    };
  }
};

//const zip = (a, b) => a.map((k, i) => [k, b[i]]);

const makeCheckboxWithChildren = div => {
  let childCheckboxes = JSON.parse(JSON.stringify(div.children[1].children));
  let n = childCheckboxes.length;
  let state = [];
  let indices = [];
  for(let i = 0; i < n; i++){
    indices.push(i);
    let attribs = childCheckboxes[i].attribs;
    if(Array.isArray(attribs) && attribs.length === 0){
      childCheckboxes[i].attribs = {};
    }
    state.push(attribs.isChecked === true);
  }
  const [xcheckedItems, xsetCheckedItems] = React.useState(state);
  const allChecked = xcheckedItems.every(Boolean);
  const isIndeterminate = xcheckedItems.some(Boolean) && !allChecked;
  const checkedState = state.map(x => React.useState(x));
  let inputId = div.attribs.id + ":shinyChakraUI.widget";
  let parentCheckbox = div.children[0];
  // div.children[0] = <Checkbox
  //   isChecked = {allChecked}
  //   isIndeterminate = {isIndeterminate}
  //   onChange = {(e) => {
  //     let state = new Array(n);
  //     let checked = e.target.checked;
  //     console.log("checked", checked);
  //     for(let i = 0; i < n; i++){
  //       state[i] = checked;
  //       checkedState[i][1](checked);
  //     }
  //     console.log("state", state);
  //     xsetCheckedItems(state);
  //     Shiny.setInputValue(inputId, {value: state, widget: "checkboxWithChildren"});
  //   }}
  //   >
  //     Parent checkbox
  //   </Checkbox>

  let attribs = parentCheckbox.attribs;
  if(Array.isArray(attribs) && attribs.length === 0){
    parentCheckbox.attribs = {};
    attribs = parentCheckbox.attribs;
  }
  attribs.className = "parentCheckbox";
  attribs.isChecked = allChecked;
  attribs.isIndeterminate = isIndeterminate;
  attribs.onChange = (e) => {
    let state = new Array(n);
    let checked = e.target.checked;
    console.log("checked", checked);
    for(let i = 0; i < n; i++){
      state[i] = checked;
      checkedState[i][1](checked);
    }
    console.log("state", state);
    xsetCheckedItems(state);
    Shiny.setInputValue(inputId, {value: state, widget: "checkboxWithChildren"});
  };
  // for(let i = 0; i < n; i++){
  //   let checkbox = childCheckboxes[i];
  //   checkbox.attribs.isChecked = xcheckedItems[i];
  //   checkbox.attribs.onChange = (e) => {
  //     console.log("i", i);
  //     xcheckedItems[i] = e.target.checked;
  //     xsetCheckedItems(xcheckedItems);
  //     Shiny.setInputValue(inputId, {value: xcheckedItems, widget: "checkboxWithChildren"});
  //   };
  // }
  //const [index, setindex] = React.useState(0);
  //const isChecked = xcheckedItems[index];
  //let zipped = zip(childCheckboxes, xcheckedItems);
  // const [attribs, setattribs] = React.useState(
  //   ([0,1]).map(i => {
  //     return {

  //     };
  //   })
  // );
  //childCheckboxes[0].attribs.isChecked = xcheckedItems[0];
  div.children[1].children = [{
    name: "Fragment",
    attribs: {},
    children: indices.map(i => {
      //setindex(i);
      let [isChecked, setIsChecked] = checkedState[i];
      //const [isChecked, setIsChecked] = React.useState(xcheckedItems[i]);
      return $.extend(
        childCheckboxes[i], 
        {attribs: $.extend(
          childCheckboxes[i].attribs,
          {
//            "data-index": i,
//            "data-checked": xcheckedItems,
            className: "childrenCheckbox",
            isChecked: isChecked,
            onChange: (e) => {
              //setindex(i);
              setIsChecked(e.target.checked);
              console.log("i", i);
              xcheckedItems[i] = e.target.checked;
              xsetCheckedItems(xcheckedItems);
              Shiny.setInputValue(inputId, {value: xcheckedItems, widget: "checkboxWithChildren"});
            }
          }
        )}
      );
    })
  }];
  return state;
  // let code = "setTimeout(function(){Shiny.setInputValue('" + 
  //   inputId + "', " +   
  //   JSON.stringify({value: state, widget: "checkboxWithChildren"}) + 
  //   ")})";
  // return code;
};

const formatStringToCamelCase = str => {
  const splitted = str.split("-");
  if (splitted.length === 1) return splitted[0];
  return (
    splitted[0] +
    splitted
      .slice(1)
      .map(word => word[0].toUpperCase() + word.slice(1))
      .join("")
  );
};

const getStyleObjectFromString = str => {
  const style = {};
  str.split(";").forEach(el => {
    const [property, value] = el.split(":");
    if (!property) return;
    const formattedProperty = formatStringToCamelCase(property.trim());
    style[formattedProperty] = value.trim();
  });
  return style;
};

const fixTagAttribs = attribs => {
  if(typeof attribs.style === "string"){
    attribs.style = getStyleObjectFromString(attribs.style);
  }
  if(attribs.hasOwnProperty("class")){
    attribs.className = attribs.class;
    delete attribs.class;
  }
  if(attribs.hasOwnProperty("for")){
    attribs.htmlFor = attribs.for;
    delete attribs.for;
  }
};

const isTag = value => {
  return (typeof value === 'object')
      && value.hasOwnProperty('name')
      && value.hasOwnProperty('attribs')
      && value.hasOwnProperty('children');
};

/* const chakraComponent = (component, patch) => {
  let props = component.attribs;
  if(Array.isArray(props) && props.length === 0){
    props = {};
  }
  // if(props && typeof props.onchange === "string"){
  //   props.onChange = eval(decodeURI(props.onchange));
  // }
  for(const key in props){
    let name = props[key].name; 
    if(name){
      if(name[0] === name[0].toUpperCase()){
        props[key] = React.createElement(ChakraComponents[name], props[key].attribs);
      }else{
        fixTagAttribs(props[key].attribs);
        props[key] = React.createElement(name, props[key].attribs);
      }
    }
  }
  if(component.children !== undefined){
    let newprops = $.extend(props, patch[component.name]);
    // if(component.element === "MenuButton"){
    //   newprops.children = newprops.isActive ? 
    //     component.children.textWhenOpen : component.children.textWhenClose;
    // }
    if(!newprops.hasOwnProperty("children")){
      newprops.children = component.children.map((x) => {return chakraComponent(x, patch);});
    }
    let tag = component.name;
    if(tag[0] === tag[0].toUpperCase()){
      return React.createElement(ChakraComponents[tag], newprops);
    }else{
      fixTagAttribs(newprops);
      return React.createElement(tag, newprops);
    }
  }else{
    if(component.name === undefined){
      if(component.tag){
        if(typeof component.tag.attribs.style === "string"){
          component.tag.attribs.style = getStyleObjectFromString(component.tag.attribs.style);
        }
        return hydrate({}, component.tag);
      }
      if(component.html){
        return ReactHtmlParser(decodeURI(component.html));
      }
      return decodeURI(component);
    }else{
      return React.createElement(ChakraComponents[component.name], props);
    }
  }
};
 */

const invalidComponent = x => {
  return ReactHtmlParser(`<div style="color:red;">INVALID COMPONENT (${x})</div>`);
};

function unescapeHtml(html) {
  var el = document.createElement('div');
  return html.replace(/\&[#0-9a-z]+;/gi, function (enc) {
      el.innerHTML = enc;
      return el.innerText
  });
}

const getArguments = f => {
  let acornParse = acorn.parse(f).body[0];
  let params;
  if(acornParse.expression){
    params = acornParse.expression.params;
  }else{
    params = acornParse.params;
  }
  return params.map(x => x.name);
}; 

console.log("ARGUMENTS", getArguments(unescapeHtml));
console.log("ARGUMENTS", getArguments(invalidComponent));
//console.log("ARGUMENTS", getArguments(() => 0));
//window.Acorn = acorn;

const appendDisclosure = (component, disclosure) => {
  for(let i = 0; i < component.children.length; i++){
    if(isTag(component.children[i])){
      component.children[i].disclosure = disclosure;
      appendDisclosure(component.children[i], disclosure);
    }
  }
};

const makeState = (x, name) => {
  if(typeof x === "object" && x.eval){
    return eval(x.eval);
  }else{
    let [state, setState] = React.useState(x);
    //return {get: () => ({name: name, get: () => state}), set: setState};
    return {get: () => state, set: setState};
  }
};

const appendStates = (component, states) => {
  if(component.attribs.id && component.attribs.shinyValue !== false){
    let state = "chakra" + component.attribs.id;
    if(component.name === "Input"){
      if(typeof component.attribs.value !== "object"){
        states[state] = makeState(component.attribs.value);
      }else{
//        if(!component.attribs.onChange){
          let code = decodeURI(component.attribs.value.eval);
          let value = eval(code);
          if(value.name){ // non, pas logique !
            console.log("oKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKk");
            states[state] = states[value.name];
            component.attribs.value = value.get();
          }else{
            component.attribs.value = value;
            states[state] = {get: () => eval(code), set: () => {}};
          }
          //states[state].get = () => component.attribs.value.eval;
          //component.reactiveValue = true;
        // }else{
        //   states[state] = makeState(component.attribs.value);
        // }
      }
    }else if(component.name === "Checkbox"){
      if(typeof component.attribs.isChecked === "object"){
        component.dontprocess = true;
      }else{
        states[state] = component.attribs.isChecked === true;
        states[state] = makeState(states[state]);
      }
    }
  }
  for(let i = 0; i < component.children.length; i++){
    if(isTag(component.children[i])){
      component.children[i].hasStates = true;
      appendStates(component.children[i], states);
    }
  }
};

const InvalidState = (message) => {
  return (
    <div>{message}</div>
  );
};

const chakraComponent = (
  component, states, patch, inputId, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
) => {
//  console.log("XXXXXXXXXXX");
  console.log("COMPONENT", component);
  console.log("states", states);
  if(React.isValidElement(component)){
    return component;
  }
  if(typeof component === "string"){
    return decodeURI(component);
  }
  if(component.html){
    console.log("XXXXXXXXXXX");
    console.log(component.html);
    return ReactHtmlParser(unescapeHtml(decodeURI(component.html)));
  }
  if(component.eval){
    return eval(decodeURI(component.eval));
  }
  if(typeof component !== "object"){
    return component;
  }
  let tagName = component.name;
  if(tagName[0] === tagName[0].toUpperCase() && !ChakraTags.includes(tagName)){
    return invalidComponent(`component '${tagName}'`);
  }
  if(tagName === "input"){
    console.log("INPUT", component);
  }
  let States = {};
  if(component.statesGroup){
    states = JSON.parse(decodeURI(component.states));
    states.chakraState = {};
    for(let key in states){
      states[key] = makeState(states[key], key);
    }
    appendStates(component, states);
    for(let key in states){
      if(states[key].get && states[key].get().get) states[key].get = states[key].get().get;
    }
    Shiny.addCustomMessageHandler(component.statesGroup, function(x){
      // if(states[x.state] === undefined){
      //   let root = document.getElementById(inputId);
      //   unmountComponentAtNode(root);
      //   let app = <InvalidState message={`Invalid state '${x.state}'.`}/>;
      //   ReactDOM.render(app, root);
      //   throw "";
      // }
      let bind = false;
      if(typeof x.value === "object"){
        if(x.value.html){
          x.value = ReactHtmlParser(x.value.html);
          bind = true;
        }else if(x.value.react){
          x.value = chakraComponent(JSON.parse(JSON.stringify(x.value.react)), states, {});
          bind = true;
        }
      }
      states[x.state].set(x.value);
      if(bind) Shiny.bindAll();
    });
    States[component.statesGroup] = states;
  }
  if(component.withDisclosure){
    delete component.withDisclosure;
    const disclosure = useDisclosure();
    appendDisclosure(component, disclosure);
    // for(let i = 0; i < component.children.length; i++){
    //   if(isTag(component.children[i])){
    //     component.children[i].disclosure = disclosure;
    //   }
    // }
  }
  let props = component.attribs;
  if(Array.isArray(props) && props.length === 0){
    props = {};
  }
  for(const key in props){
    if(typeof props[key] === "string"){
      props[key] = decodeURI(props[key]);
    }
    if(typeof props[key] === "object" && props[key].eval){
      // ReactDOM.render(<InvalidState/>, document.getElementById("invalidstate"));
      // throw "" ;
      //let disclosure = component.disclosure; 
      props[key] = eval(decodeURI(props[key].eval));
    }
  }
  if(component.disclosure){
    for(const key in props){
      if(typeof props[key] === "object" && props[key].disclosure){
        props[key] = component.disclosure[props[key].disclosure];
      }
    }  
  }
  // if(props.title){
  //   props.title = decodeURI(props.title);
  // }
  // if(typeof props.value === "string"){
  //   props.value = decodeURI(props.value);
  // }
  // if(typeof props["data-val"] === "string"){
  //   props["data-val"] = decodeURI(props["data-val"]);
  // }
  // if(typeof props.onClick === "string"){
  //   props.onClick = eval(decodeURI(props.onClick));
  // }
  if(typeof props.onClick === "string"){
    props.onClick = eval(props.onClick);
  }
  if(component.widget === "alertdialog"){
    delete component.widget;
    const [isOpen, setIsOpen] = React.useState(false);
    const [disabled, setDisabled] = React.useState(false);
    const setShinyValue = value => Shiny.setInputValue(props.id, value);
    const onClose = () => {
      setIsOpen(false);
    };
    const onCloseButton = (e) => {
      let value = e.currentTarget.dataset.val;
      if(value) setShinyValue(value);
      setIsOpen(false);
    };
    const cancelRef = React.useRef();
    patch = {
      Button: {
        onClick: onCloseButton
      },
      OpenButton: {
        onClick: () => {setIsOpen(true);},
        isDisabled: disabled
      },
      DisableButton: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
          setDisabled(true);
          setIsOpen(false);
        }
      },
      CancelButton: {
        ref: cancelRef,
        onClick: onCloseButton
      },
      RemoveButton: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
          setIsOpen(false);
          $("#" + props.id).remove();
        }
      },
      // UnmountingButton: {
      //   onClick: (e) => {
      //     let value = e.currentTarget.dataset.val;
      //     if(value) setShinyValue(decodeURI(value));
      //     unmountComponentAtNode(document.getElementById(props.id));
      //   }
      // },
      IconButton: {
        onClick: onCloseButton
      },
      OpenIconButton: {
        onClick: () => {setIsOpen(true);},
        isDisabled: disabled
      },
      DisableIconButton: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
          setDisabled(true);
          setIsOpen(false);
        }
      },
      CancelIconButton: {
        ref: cancelRef,
        onClick: onCloseButton
      },
      RemoveIconButton: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
          setIsOpen(false);
          $("#" + props.id).remove();
        }
      },
      // UnmountingIconButton: {
      //   onClick: (e) => {
      //     let value = e.currentTarget.dataset.val;
      //     if(value) setShinyValue(decodeURI(value));
      //     unmountComponentAtNode(document.getElementById(props.id));
      //   }
      // },
      AlertDialog: {
        isOpen: isOpen,
        leastDestructiveRef: cancelRef,
        onClose: onClose,
        onEsc: () => {setShinyValue("esc");}
      }
    };
    //component = chakraComponent(component, thispatch);
  }else if(component.widget === "drawer"){
    delete component.widget;
    const { isOpen, onOpen, onClose } = useDisclosure();
    const btnRef = React.useRef();
    const setShinyValue = (value) => Shiny.setInputValue(props.id, value);
    patch = {
      OpenButton: {
        ref: btnRef,
        onClick: onOpen
      },
      Drawer: {
        isOpen: isOpen,
        onClose: onClose,
        finalFocusRef: btnRef
      },
      ClosingButton: {
        onClick: onClose
      },
      Button: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
        }
      }
    };  
  }else if(component.name === "Menu" && patch.process){
    let selected = getMenuSelection(component);
    if(selected){
      selected = JSON.stringify(selected);
      makeMenuComponent(component);
      patch.process = false;
      // let code = "setTimeout(function(){Shiny.setInputValue('" + 
      //   component.attribs.id + 
      //   ":shinyChakraUI.widget', {value: " + 
      //   JSON.stringify(selected) + 
      //   ", widget: 'menuWithGroups'})})";
      let menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      // let id = props.id;
      // delete props.id;
      if(menubutton.attribs.text){
        let buttonprops = menubutton.attribs;
        let textWhenOpen = decodeURI(buttonprops.text.textWhenOpen);
        let textWhenClose = decodeURI(buttonprops.text.textWhenClose);
        delete buttonprops.text;
        let menulist = chakraComponent(component.children[1], {}, {});
        component = {
          name: "div",
          attribs: {
            id: props.id,
            className: "chakraTag",
            "data-shinyinitvalue": selected,
            "data-widget": "menuWithGroups"          
          },
          children: [
            <Menu {...props}>
              {({ isOpen }) => (
                <React.Fragment>
                  <MenuButton isActive={isOpen} as={Button} {...buttonprops}>
                    {isOpen ? textWhenOpen : textWhenClose}
                  </MenuButton>
                  {menulist}
                </React.Fragment>
              )}
            </Menu>
          ]
        };
      }else{
        component = {
          name: "div",
          attribs: {
            id: props.id,
            className: "chakraTag",
            "data-shinyinitvalue": selected,
            "data-widget": "menuWithGroups"          
          },
          children: [component]
        };
      }
      props = component.attribs;
      // component = {
      //   name: "Fragment",
      //   attribs: {},
      //   children: [
      //     component,
      //     <ScriptTag dangerouslySetInnerHTML={{__html: code}}/>
      //   ]
      // };
    }else{
      patch = $.extend(patch, {MenuItem: {
        onClick: (e) => {
          Shiny.setInputValue(props.id, e.currentTarget.dataset.val);
        }
      }});
      let menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      if(menubutton.attribs.text){
        let buttonprops = menubutton.attribs;
        let textWhenOpen = decodeURI(buttonprops.text.textWhenOpen);
        let textWhenClose = decodeURI(buttonprops.text.textWhenClose);
        delete buttonprops.text;
        let menulist = chakraComponent(component.children[1], {}, patch);
        component = 
            <Menu {...props}>
              {({ isOpen }) => (
                <React.Fragment>
                  <MenuButton isActive={isOpen} as={Button} {...buttonprops}>
                    {isOpen ? textWhenOpen : textWhenClose}
                  </MenuButton>
                  {menulist}
                </React.Fragment>
              )}
            </Menu>;
        return component;  
      }
    }
  }else if(component.name === "Popover" && props.id){
    const setShinyValue = (value) => Shiny.setInputValue(props.id, value);
    patch = {
      Button: {
        onClick: (e) => {
          let value = e.currentTarget.dataset.val;
          if(value) setShinyValue(value);
        }
      }
    };  
  }else if(component.name === "Tabs" && props.id){
    props.onChange = index => Shiny.setInputValue(props.id, index);
    props.className = "chakraTag";
    props["data-shinyinitvalue"] = props.defaultIndex ? props.defaultIndex : 0;
  }
  if(props.class === "checkboxWithChildren"){
    let state = makeCheckboxWithChildren(component);
    props.className = "chakraTag";
    delete props.class;
    props["data-shinyinitvalue"] = JSON.stringify(state);
    props["data-widget"] = "checkboxWithChildren";
    // component = {
    //   name: "Fragment",
    //   attribs: {},
    //   children: [
    //     component,
    //     <ScriptTag dangerouslySetInnerHTML={{__html: code}}/>
    //   ]
    // };
  }
  if(
    component.name === "Checkbox" && 
    !component.dontprocess &&
    props.id !== undefined &&
    !["parentCheckbox", "childrenCheckbox"].includes(props.className)
  ){
    //props = $.extend(props, {isChecked: props["data-checked"][props["data-index"]]});
    //props = $.extend(props, {isChecked: checkedItems[props.id], onChange: checkboxOnChange});
    let reactState;
    if(states){
      let chakraState = states["chakra" + props.id];
      reactState = [chakraState.get(), chakraState.set];
    }else{
      reactState = React.useState(props.isChecked === true);
    }
    const [isChecked, setChecked] = reactState;
    let onChange = null;
    if(props.onChange){
      let f = props.onChange;
      // let farguments = getArguments(f);
      // let argument = farguments.length ? 
      onChange = event => {
        setChecked(event.target.checked);
        Shiny.setInputValue(event.currentTarget.id, event.target.checked);
        f(event);
      };
    }else{
      onChange = event => {
        setChecked(event.target.checked);
        Shiny.setInputValue(event.currentTarget.id, event.target.checked);
      };
    }
    props = $.extend(props, 
      {
        isChecked: isChecked,
        onChange: onChange
      }
    );
  }else if(component.name === "CheckboxGroup" && component.processed !== true){
    component.processed = true;
    let divattrs = {id: props.id};
    if(props.defaultValue){
      props.defaultValue = props.defaultValue.map(decodeURI);
      divattrs.className = "chakraTag";
      divattrs["data-shinyinitvalue"] = JSON.stringify(props.defaultValue);
    }
    component.attribs = $.extend(props, 
      {onChange: value => {
        Shiny.setInputValue(props.id, value);
      }}
    );
    component = {
      name: "div",
      attribs: divattrs,
      children: [component]
    };
    props = divattrs;
  }else if(component.name === "RadioGroup"){
    props = $.extend(props, 
      {
        onChange: (value) => {
          let obj = {};
          for(let key in radiogroupValues){
            if(key === props.id){
              obj[key] = value;
            }else{
              obj[key] = radiogroupValues[key];
            }
          }
          setRadiogroupValues(obj);
          Shiny.setInputValue(props.id, value);
        },
        value: radiogroupValues[props.id],
        className: "chakraTag",
        "data-shinyinitvalue": radiogroupValues[props.id]
      }
    );
  }else if(component.name === "ScriptTag" && component.decoded !== true){
    props.dangerouslySetInnerHTML.__html = decodeURI(props.dangerouslySetInnerHTML.__html);
    component.decoded = true;
  }else if(component.name === "Input" && props.id && props.shinyValue !== false){
    props.className = "chakraTag";
    props["data-shinyinitvalue"] = props.value;
    let f = props.onChange;
    if(states){
      // let chakraState = states.chakraState;
      // let stateValue = chakraState.get();
      // stateValue[props.id] = props.value;  
      let chakraState = states["chakra" + props.id];
      //chakraState.set("a");
      if(chakraState.get){
        const getter = () => {
          let value = chakraState.get(); 
          setTimeout(function(){Shiny.setInputValue(props.id, value)}); 
          return value;
        };
        props.value = getter();//chakraState.get();
        const setValue = value => {
          console.log("ONCHANGE");
          chakraState.set(value);
          //Shiny.setInputValue(props.id, value);
          // let stateValue = chakraState.get();
          // stateValue[props.id] = value;  
          // chakraState.set(stateValue);
        };
        if(f){
          props.onChange = (event) => {
            setValue(event.target.value);
            f(event);
          };
        }else{
          props.onChange = (event) => {
            setValue(event.target.value);
          };
        }
      }else{
        props.onChange = (event) => {
          Shiny.setInputValue(props.id, event.target.value);
          f(event);
        };
      }
      delete states["chakra" + props.id];
      return React.createElement(Input, props);
    }else{
      const [value, setValue] = React.useState(props.value);
      props.value = value;
      if(f){
        props.onChange = (event) => {
          setValue(event.target.value);
          Shiny.setInputValue(props.id, event.target.value);
          f(event);
        };
      }else{
        props.onChange = (event) => {
          setValue(event.target.value);
          Shiny.setInputValue(props.id, event.target.value);
        };
      }
    }
  }
  for(const key in props){
    if(isTag(props[key])){
      let name = props[key].name; 
      if(name[0] === name[0].toUpperCase()){
        if(!ChakraTags.includes(name)){
          let x = `'${name}' in attribute '${key}' of component '${component.name}'`;
          return invalidComponent(x);
        }
        props[key] = React.createElement(ChakraComponents[name], props[key].attribs);
      }else{
        fixTagAttribs(props[key].attribs);
        props[key] = React.createElement(name, props[key].attribs);
      }
    }
  }
  let newprops = $.extend(props, patch[component.name]);
  let nchildren = Array.isArray(component.children) ? component.children.length : 0;
  if(!newprops.hasOwnProperty("children") && nchildren > 0){
    let newpropsChildren = new Array(nchildren);
    for(let i = 0; i < nchildren; i++){
      if(React.isValidElement(component.children[i])){
        newpropsChildren[i] = component.children[i];
      }else{
        let x = component.children[i].hasStates || component.children[i].eval ? states : null;
        let cc = chakraComponent(
          component.children[i], x, patch, inputId, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
        );
        component.children[i] = cc; 
        // newpropsChildren[i] = chakraComponent(
        //   component.children[i], x, patch, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
        // );
      }
    }
//    newprops.children = newpropsChildren;
      // component.children.map((x) => {
      //   return chakraComponent(
      //     x, patch, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
      //   );
      // });
  }
  let tag = component.name;
  if(tag === "input"){
    console.log("IIIIIINPuT", component);
  }
  if(tag[0] === tag[0].toUpperCase()){
    if(tag === "ScriptTag"){
      console.log(component);
      console.log(newprops);
    }
    if(Array.isArray(component.children) && component.children.length){
      return React.createElement(ChakraComponents[tag], newprops, component.children);
    }else{
      return React.createElement(ChakraComponents[tag], newprops);
    }
  }else{
    fixTagAttribs(newprops);
    if(Array.isArray(component.children) && component.children.length){
      return React.createElement(tag, newprops, component.children);
    }else{
      return React.createElement(tag, newprops);
    }
  }
};

const ChakraAlert = ({component}) => {
   return (
    <ChakraProvider>
      {chakraComponent(component, {})}
    </ChakraProvider>
  );
 };

const ChakraAlertDialog = ({component, setShinyValue, inputId}) => {
  const [isOpen, setIsOpen] = React.useState(false);
  const [disabled, setDisabled] = React.useState(false);
  const onClose = () => {
    setIsOpen(false);
  };
  const onCloseButton = (e) => {
    setShinyValue(decodeURI(e.currentTarget.dataset.val));
    setIsOpen(false);
  };
  const cancelRef = React.useRef();
  const patch = {
    Button: {
      onClick: onCloseButton
    },
    OpenButton: {
      onClick: () => {setIsOpen(true);},
      isDisabled: disabled
    },
    DisableButton: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
        setDisabled(true);
        setIsOpen(false);
      }
    },
    CancelButton: {
      ref: cancelRef,
      onClick: onCloseButton
    },
    UnmountingButton: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
        unmountComponentAtNode(document.getElementById(inputId));
      }
    },
    IconButton: {
      onClick: onCloseButton
    },
    OpenIconButton: {
      onClick: () => {setIsOpen(true);},
      isDisabled: disabled
    },
    DisableIconButton: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
        setDisabled(true);
        setIsOpen(false);
      }
    },
    CancelIconButton: {
      ref: cancelRef,
      onClick: onCloseButton
    },
    UnmountingIconButton: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
        unmountComponentAtNode(document.getElementById(inputId));
      }
    },
    AlertDialog: {
      isOpen: isOpen,
      leastDestructiveRef: cancelRef,
      onClose: onClose,
      onEsc: () => {setShinyValue("esc");}
    }
  };
  return (
    <ChakraProvider>
      {chakraComponent(component, patch)}
    </ChakraProvider>
  );
};

const ChakraMenu = ({component, text, closeOnSelect, selected, optiongroups, setShinyValue}) => {
  if(optiongroups){
    const [value, setValue] = React.useState(selected);
    let menulist = component.children[1].children;
    for(let i = 0; i < optiongroups.length; i++){
      let groupprops = menulist[optiongroups[i]].attribs;
      let grouptitle = groupprops.title;
      groupprops.onChange = (selection) => {
        value[grouptitle] = Array.isArray(selection) ? selection.map(decodeURI) : decodeURI(selection);
        setValue(value);
        setShinyValue(value);
      };
    }
  }
  if(text){
    let buttonprops = component.children[0].attribs;
    component = component.children[1];
    let textWhenOpen = decodeURI(text.textWhenOpen);
    let textWhenClose = decodeURI(text.textWhenClose);
    const patch = {
      // MenuButton: {
      //   as: Button,
      //   isActive: isOpen,
      //   children: [isOpen ? textWhenOpen : textWhenClose]
      // },
      MenuItem: {
        onClick: (e) => {
          setShinyValue(decodeURI(e.currentTarget.dataset.val));
        }
      }
    };
    return (
      <ChakraProvider>
        <Menu closeOnSelect={closeOnSelect}>
          {({ isOpen }) => (
            <React.Fragment>
              <MenuButton isActive={isOpen} as={Button} {...buttonprops}>
                {isOpen ? textWhenOpen : textWhenClose}
              </MenuButton>
              {chakraComponent(component, patch)}
            </React.Fragment>
          )}
        </Menu>
      </ChakraProvider>
    );  
  }else{
    const patch = {
      MenuButton: {
        as: Button
      },
      MenuItem: {
        onClick: (e) => {
          setShinyValue(decodeURI(e.currentTarget.dataset.val));
        }
      }
    };
    return (
      <ChakraProvider>
        <Menu closeOnSelect={closeOnSelect}>
          {chakraComponent(component, patch)}
        </Menu>
      </ChakraProvider>
    );  
  }
};

const ChakraDrawer = ({component, setShinyValue}) => {
//  const [isOpen, setOpen] = React.useState(false);
  const { isOpen, onOpen, onClose } = useDisclosure();
  const btnRef = React.useRef();
  const patch = {
    OpenButton: {
      ref: btnRef,
      onClick: onOpen
    },
    Drawer: {
      isOpen: isOpen,
      onClose: onClose,
      finalFocusRef: btnRef
    },
    CloseButton: {
      onClick: onClose
    },
    Button: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
      }
    }
  };
  return (
    <ChakraProvider>
      {chakraComponent(component, patch)}
    </ChakraProvider>
  );
};

const ChakraInput = ({ configuration, value, setValue }) => {
  let widget = configuration.widget;
  const setShinyValue = (value) => { setValue({value: value, widget: widget}); };
  value = value.value;
  switch(widget) {
    case "alert":
      return <ChakraAlert component={configuration.component}/>;
    break;
    case "alertdialog":
      return (
        <ChakraAlertDialog 
          component={configuration.component} 
          setShinyValue={setShinyValue} 
          inputId={configuration.inputId}
        />
      );
    break;
    case "menu":
      return (
        <ChakraMenu 
          component={configuration.component} 
          text={configuration.text}
          closeOnSelect={configuration.closeOnSelect} 
          setShinyValue={setShinyValue} 
        />
      );
    break;
    case "menuWithGroups":
      return (
        <ChakraMenu 
          component={configuration.component} 
          text={configuration.text}
          closeOnSelect={configuration.closeOnSelect} 
          selected={value}
          optiongroups={configuration.optiongroups}
          setShinyValue={setShinyValue} 
        />
      );
    break;
    case "drawer":
      console.log(JSON.stringify(configuration.component));
      return (
        <ChakraDrawer
          component={configuration.component}
          setShinyValue={setShinyValue}
        />
      );
    break;
  }
};

const Hooks = {
  useDisclosure,
  useClipboard
};

const ChakraComponent = ({ configuration, value, setValue }) => {
  let patch = {
    // MenuButton: {
    //   as: Button
    // },
    process: true
  };
  // states
  // let states = configuration.states;
  // if(states){
  //   states = JSON.parse(decodeURI(states));
  //   for(let key in states){
  //     if(typeof states[key] === "object" && states[key].eval){
  //       states[key] = eval(states[key].eval);
  //     }else{
  //       let [state, setState] = React.useState(states[key]);
  //       states[key] = {get: () => state, set: setState};
  //     }
  //   }
  //   Shiny.addCustomMessageHandler("setState_" + configuration.inputId, function(x){
  //     let bind = false;
  //     if(typeof x.value === "object"){
  //       if(x.value.html){
  //         x.value = ReactHtmlParser(x.value.html);
  //         bind = true;
  //       }else if(x.value.react){
  //         x.value = chakraComponent(JSON.parse(JSON.stringify(x.value.react)), states, {});
  //         bind = true;
  //       }
  //     }
  //     states[x.state].set(x.value);
  //     if(bind) Shiny.bindAll();
  //   });
  // }
  // Checkbox elements
  const [checkedItems, setCheckedItems] = React.useState(configuration.Checkboxes);
  const checkboxOnChange = (e) => {
    let obj = {};
    for(let key in checkedItems){
      if(key === e.currentTarget.id){
        obj[key] = e.target.checked;
      }else{
        obj[key] = checkedItems[key];
      }
    }
    setCheckedItems(obj);
    Shiny.setInputValue(e.currentTarget.id, e.target.checked);    
  };
  // RadioGroup
  let RadioGroups = configuration.RadioGroups; 
  if(RadioGroups){
    RadioGroups = Object.fromEntries(
      Object.entries(RadioGroups).map(entry => {return [entry[0], decodeURI(entry[1])];})
    );
  }
  const [radiogroupValues, setRadiogroupValues] = React.useState(RadioGroups);
  return (
    // <ChakraProvider>
    // {
      chakraComponent(
        JSON.parse(JSON.stringify(configuration.component)),
        null,
        patch,
        configuration.inputId,
        null,//checkedItems,
        null,//checkboxOnChange,
        radiogroupValues,
        setRadiogroupValues
      )
    // }
    // </ChakraProvider>
  );
};


// const App = () => {
//   console.log("APP");
//   const [value, setValue] = React.useState("OOOOOOOOOOOOO");
//   return (
//     <ChakraProvider>
//       <Input value={value} onChange={(event) => setValue(event.target.value)}/>
//     </ChakraProvider>
//   );
// };

// window.app = <App/>;

// //ReactDOM.render(<App/>, window.app);

// window.ChakraComponent = ChakraComponent;

var chakraBinding = new Shiny.InputBinding();

// setTimeout(function(){
//   const el = document.getElementById("id");
//   console.log(el);
//   $(el).data("configuration", JSON.parse($(el).next().next().text()));
//   const element = React.createElement(ChakraComponent, {
//     configuration: $(el).data("configuration")
//   });
//   ReactDOM.render(element, el);  
// });

$.extend(chakraBinding, {
  find: function (scope) {
    return $(scope).find(".chakraTag");
  },
  getType: function (el) {
    return $(el).data("widget") ? "shinyChakraUI.widget" : false;
  },
  getValue: function (el) {
    let value = $(el).data("shinyinitvalue");
    let widget = $(el).data("widget");
    return widget ? {value: value, widget: widget} : value;
  },
  setValue: function (el, value) {
    // $(el).setValue(value);
  },
  subscribe: function (el, callback) {
    // $(el).on("change.chakraBinding", function (e) {
    //     callback();
    // });
  },
  unsubscribe: function (el) {
    // $(el).off(".chakradBinding");
  },
  receiveMessage: function (el, data) {
    // if (data.hasOwnProperty('value'))
    //     this.setValue(el, data.value);
    // if (data.hasOwnProperty('label'))
    //     $(el).parent().parent().find("[id$=xylabel]").text(data.label);
    // if (data.hasOwnProperty('options'))
    //     $(el).data('setOptions')(data.options);
    // $(el).trigger('change');
  },
  getRatePolicy: function () {
    return {
      policy: 'debounce',
      delay: 250
    };
  },
  initialize: function initialize(el) {

  }
});

Shiny.inputBindings.register(chakraBinding);



reactShinyInput('.chakracomponent', 'shinyChakraUI.chakracomponent', ChakraComponent);
reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput, {type: "shinyChakraUI.widget"});

// Shiny.inputBindings.register(new class extends Shiny.InputBinding {

//   /*
//    * Methods override those in Shiny.InputBinding
//    */

//   find(scope) {
//     return $(scope).find(".chakracomponent");
//   }
//   getValue(el) {
//     const element = React.createElement(ChakraComponent, {
//       configuration: $(el).data("configuration")
//     });
//     ReactDOM.render(element, el);  

//     return null;
//   }
//   setValue(el, value, rateLimited = false) {
//     /*
//      * We have to check whether $(el).data('callback') is undefined here
//      * in case shiny::renderUI() is involved. If an input is contained in a
//      * shiny::uiOutput(), the following strange thing happens occasionally:
//      *
//      *   1. setValue() is bound to an el in this.render(), below
//      *   2. An event that will call setValue() is enqueued
//      *   3. While the event is still enqueued, el is unbound and removed
//      *      from the DOM by the JS code associated with shiny::uiOutput()
//      *      - That code uses jQuery .html() in output_binding_html.js
//      *      - .html() removes el from the DOM and clears ist data and events
//      *   4. By the time the setValue() bound to the original el is invoked,
//      *      el has been unbound and its data cleared.
//      *
//      *  Since the original input is gone along with its callback, it
//      *  seems to make the most sense to do nothing.
//      */
//     if ($(el).data('callback') !== undefined) {
//       this.setInputValue(el, value);
//       this.getCallback(el)(rateLimited);
//       this.render(el);
//     }
//   }
//   initialize(el) {
//     $(el).data('value', JSON.parse($(el).next().text()));
//     $(el).data('configuration', JSON.parse($(el).next().next().text()));
//   }
//   subscribe(el, callback) {
//   }
//   unsubscribe(el) {
//     ReactDOM.render(null, el);
//   }
//   receiveMessage(el, data) {
// //    options.receiveMessage.call(this, el, data);
//   }
//   getType(el) {
//     return false;
//   }

// }, 'shinyChakraUI.chakracomponent');

