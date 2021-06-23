import { reactShinyInput, hydrate } from 'reactR';
//import * as React from 'react';
import { unmountComponentAtNode } from "react-dom";
import ReactDOM from 'react-dom';
//import prettier from "prettier/standalone";
import parserBabel from "prettier/parser-babel";
//import { parse } from "@babel/parser";
//import generate from "@babel/generator";
//import JsxParser from 'react-jsx-parser';
//import { transform } from '@babel/standalone';
import babelPluginTransformJsx from '@babel/plugin-transform-react-jsx';
import { transform } from '@babel/core';
import {
  useDisclosure,
  useClipboard,
  useToast,
  //toast,
  createStandaloneToast,
  useEditableControls,
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
  SlideFade,
  Modal,
  ModalOverlay,
  ModalContent,
  ModalHeader,
  ModalFooter,
  ModalBody,
  ModalCloseButton,
  Code,
  Divider,
  Switch,
  FormControl,
  FormLabel,
  FormErrorMessage,
  FormHelperText,
  Editable, 
  EditableInput, 
  EditablePreview,
  Flex,
  ButtonGroup,
  Stat,
  StatLabel,
  StatNumber,
  StatHelpText,
  StatArrow,
  StatGroup,
  NumberInput,
  NumberInputField,
  NumberInputStepper,
  NumberIncrementStepper,
  NumberDecrementStepper,
  Slider,
  SliderTrack,
  SliderFilledTrack,
  SliderThumb,
  SliderMark,
  Tooltip
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
  SlideFade,
  Modal,
  ModalOverlay,
  ModalContent,
  ModalHeader,
  ModalFooter,
  ModalBody,
  ModalCloseButton,
  Code,
  Divider,
  Switch,
  FormControl,
  FormLabel,
  FormErrorMessage,
  FormHelperText,
  Editable, 
  EditableInput, 
  EditablePreview,
  Flex,
  ButtonGroup,
  Stat,
  StatLabel,
  StatNumber,
  StatHelpText,
  StatArrow,
  StatGroup,
  NumberInput,
  NumberInputField,
  NumberInputStepper,
  NumberIncrementStepper,
  NumberDecrementStepper,
  Slider,
  SliderTrack,
  SliderFilledTrack,
  SliderThumb,
  SliderMark,
  Tooltip
};

const ChakraTags = Object.keys(ChakraComponents);

//console.log("useToast", useToast);

//window.USETOAST = useToast;
//window.TOASTMANAGER = toast;

// function ToastExample() {
//   //const Toaster = new toast.constructor();
//   const ttoast = useToast();
//   return (
//     <Button
//       onClick={() =>
//         ttoast({
//           title: "TitLE",
//           description: "body",
//           status: 'success',
//           duration: null,
//           isClosable: true
//         })
//       }
//     >
//       Show Toast
//     </Button>
//   );
// }

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

const makeMenuComponent = (menu, shinyValue) => {
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
      shinyValue.set(menu.attribs.id, value);
      setValue(value);
      Shiny.setInputValue(
        menu.attribs.id + ":shinyChakraUI.widget", {value: value, widget: "menuWithGroups"}
      );
    };
  }
};

//const zip = (a, b) => a.map((k, i) => [k, b[i]]);

const isEmptyArray = x => (Array.isArray(x) && x.length === 0);

const isNonEmptyArray = x => (Array.isArray(x) && x.length);

const isNotEmpty = x => Object.keys(x).length > 0;

const makeCheckboxWithChildren = (div, shinyValue) => {
  let childCheckboxes = JSON.parse(JSON.stringify(div.children[1].children));
  let n = childCheckboxes.length;
  let state = [];
  let indices = [];
  for(let i = 0; i < n; i++){
    indices.push(i);
    let attribs = childCheckboxes[i].attribs;
    if(isEmptyArray(attribs)){
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
  if(isEmptyArray(attribs)){
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
    shinyValue.set(div.attribs.id, state);
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
              shinyValue.set(div.attribs.id, xcheckedItems);
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

const isJseval = x => {
  return (typeof x === "object") && x.hasOwnProperty("__eval");
};

const isHook = x => {
  return (typeof x === "object") && x.hasOwnProperty("__hook");
};

const isHTML = x => {
  return (typeof x === "object") && x.hasOwnProperty("__html");
};

const isJSX = x => {
  return (typeof x === "object") && x.hasOwnProperty("__jsx");
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

const getHookProperty = (states, inputId) => ((hook, key) => {
  if(states[hook] === undefined){
    throwApp(inputId, <InvalidState message={`Hook '${hook}' not found.`}/>);
  }
  if(!states[hook].hasOwnProperty(key)){
    throwApp(inputId, <InvalidState message={`Hook '${hook}' has no property '${key}'.`}/>);
  }
  return states[hook][key];
});

const getState = (states, inputId) => ((state) => {
  if(states[state] === undefined){
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`}/>);
  }
  return states[state].get();
});

const setState = (states, inputId) => ((state, value) => {
  if(states[state] === undefined){
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`}/>);
  }
  if(!states[state].hasOwnProperty("set")){
    throwApp(inputId, <InvalidState message={`State '${state}' has no 'set' method.`}/>);
  }
  states[state].set(value);
});

const Eval = (ev, states, inputId) => {
  const scope = $.extend(Hooks, {
    states: states,
    getState: getState(states, inputId),
    setState: setState(states, inputId),
    getHookProperty: getHookProperty(states, inputId)
  });
  const scopeKeys = Object.keys(scope);
  const scopeValues = Object.values(scope);
  const fn = new Function(...scopeKeys, "return " + ev);
  let x = fn(...scopeValues);
  console.log("EEEEEVVVVVAAAAAALLLLLL", x);
  console.log("ev", ev);
  console.log("states", states);
  return x;
};

const makeState = (x, states, inputId) => {
  let aa;
  if(isJseval(x)){
    return {get: Eval("() => " + x.__eval, states, inputId)};
  }else if(isHook(x)){
    let hook = Eval(x.__hook, states, inputId);
    if(typeof hook === "function"){
      return {get: () => hook};
    }else{
      return $.extend(hook, {get: () => hook});
    }
  }else if(isJSX(x)){
    x = jsxParser(x.__jsx, x.__preamble, inputId, states);
  }
  //   aa = {...x};
  //   console.log("x",x);
  //   console.log("eval", x.eval);
  //   x = Eval("() => " + x.eval, states, Hooks, getState, setState, inputId);
  //   console.log("x()", x());
  //   if(x().isHook){
  //     x = x();
  //     let hook = {...x};
  //     delete hook.isHook;
  //     x.get = () => hook;
  //     return x;
  //   }else{
  //     return {get: x};
  //   }
  // }
//  let ru = React.useState(x);
  let [reactState, setReactState] = React.useState(x);
  // if(reactState == 2){
  //   console.log("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR");
  //   console.log("ru", ru);
  //   console.log("window.SSTATE", window.SSTATE);
  //   console.log("x", x);
  //   console.log("states", states);
  //   console.log("aa", aa);
  //   console.log("name", name);
  //   console.log("setReactState", setReactState);
  //   throw "";
  // }
  //return {get: () => ({name: name, get: () => state}), set: setState};
  return {get: () => reactState, set: setReactState};
};

const appendStates = (component, states, inputId) => {

  let attribs = component.attribs;

  if(attribs.hasOwnProperty("id") && attribs.shinyValue !== false){
    const stateName = "chakra" + attribs.id;
    if(component.name === "Input"){
      let defaultValue = attribs.hasOwnProperty("defaultValue") ? decodeURI(attribs.defaultValue) : null;
      if(defaultValue === null){
        const hasValue = attribs.hasOwnProperty("value");
        const value = hasValue ? attribs.value : null;
        if(hasValue){
          if(!isJseval(value)){
            defaultValue = decodeURI(value);
          }else{
            states[stateName] = makeState(value, states, inputId);
          }
        }else{
          defaultValue = "";
        }
      }
      if(defaultValue !== null){
        attribs.defaultValue = defaultValue;
      }
      // if(typeof value === "string"){
      //   value = decodeURI(value);
      // }
      // states[state] = makeState(value, states, inputId);
      // let value = component.attribs.value;
      // if(isJseval(value)){
      //   let code = decodeURI(value.__eval);
      //   //value = Eval(code, states, Hooks, getState, setState, inputId);
      //   states[state] = makeState(Eval(code, states, Hooks, getState, setState, inputId), states, inputId);
      // }
//      states[state] = makeState(value, states, inputId);
//       if(!isJseval(component.attribs.value)){
//         states[state] = makeState(component.attribs.value, states, inputId);
//       }else{
// //        if(!component.attribs.onChange){
//           let code = decodeURI(component.attribs.value.__eval);
//           let value = Eval(code, states, Hooks, getState, setState, inputId);
//           // if(value.name){ // non, pas logique !
//           //   console.log("oKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKk");
//           //   states[state] = states[value.name];
//           //   component.attribs.value = value.get();
//           // }else{
//             component.attribs.value = value;
//             states[state] = {
//               get: () => Eval(code, states, Hooks, getState, setState, inputId), 
//               set: () => {}
//             };
//           // }
//           //states[state].get = () => component.attribs.value.eval;
//           //component.reactiveValue = true;
//         // }else{
//         //   states[state] = makeState(component.attribs.value);
//         // }
//       }
    }
    // else if(component.name === "Checkbox"){
    //   if(typeof component.attribs.isChecked === "object"){
    //     component.dontprocess = true;
    //   }else{
    //     states[state] = component.attribs.isChecked === true;
    //     states[state] = makeState(states[state], states);
    //   }
    // }
  }
  for(let i = 0; i < component.children.length; i++){
    if(isTag(component.children[i])){
      //component.children[i].hasStates = true;
      appendStates(component.children[i], states, inputId);
    }
  }
};


const InvalidState = ({message}) => {
  return (
    <ChakraProvider>
      <Alert status="error">
        <AlertIcon />
        <AlertTitle mr={2}>Error.</AlertTitle>
        <AlertDescription>
          {message}
        </AlertDescription>
      </Alert>
    </ChakraProvider>
  );
};

const ErrorApp = ({ message, code }) => {
  return (
    <ChakraProvider>
      <Alert status="error">
        <AlertIcon />
        <Box flex="1">
          <AlertTitle mr={2}>{message}</AlertTitle>
          <AlertDescription>
            <pre><Code>{code}</Code></pre>
          </AlertDescription>
        </Box>
      </Alert>
    </ChakraProvider>
  );
};

const isJSXElement = (ast) => {
  let body = ast.body;
  if(body.length !== 1){
    return false;
  }
  let node = body[0];
  if(node.type !== "ExpressionStatement"){
    return false;
  }
  let expressionType = node.expression.type;
  if(expressionType !== "JSXElement" && expressionType !== "JSXFragment"){
    return false;
  }
  return true;
};


function ShinyValue(inputId){
  let $el = $("#" + inputId);
  this.add = (key, v, force) => {
    let value = $el.data("value");
    if(force || value === undefined || value[key] === undefined){
      $el.data("value", $.extend(value, Object.fromEntries([[key,v]])));
      if(Shiny.shinyapp.isConnected()){
        Shiny.setInputValue(inputId + ":shinyChakraUI.component", $el.data("value"));
      }
    }
  };
  this.set = (key, v) => {
    this.add(key, v, true);//Shiny.setInputValue(inputId, $el.data("value"))
  };
}

const mergeOnClick = (component, funcs, states, inputId) => {
  for(let i = 0; i < component.children.length; i++){
    let child = component.children[i];
    if(isTag(child)){
      if(funcs.hasOwnProperty(child.name)){
        let func = funcs[child.name];
        if(child.attribs.onClick){
          let f = Eval(
            decodeURI(child.attribs.onClick.__eval), states, inputId
          );
          child.attribs.onClick = (e) => {
            f(e);
            func(e);
          };
        }else{
          child.attribs.onClick = func;
        }
      }
      mergeOnClick(child, funcs, states, inputId);
    }
  }
};

// Object.assign(walk.base, {
//   JSXAttribute(node, state, callback) {
//       if (node.value !== null) {
//           callback(node.value, state);
//       }
//   },

//   JSXElement(node, state, callback) {
//       node.openingElement.attributes.forEach(attribute => {
//           callback(attribute, state);
//       });
//       node.children.forEach(node => {
//           callback(node, state);
//       });
//   },

//   JSXExpressionContainer(node, state, callback) {
//       callback(node.expression, state);
//   },

//   JSXFragment(node, state, callback) {
//       node.children.forEach(node => {
//           callback(node, state);
//       });
//   },

//   JSXSpreadAttribute(node, state, callback) {
//       callback(node.argument, state);
//   },

//   JSXText() {}
// });

// window.WALK = walk;
// window.ESCODEGEN = escodegen;
// window.PARSER = acorn.Parser.extend(jsx()).parse;
// window.BABELPARSER = parse;
// window.BABELGENERATOR = generate;

const Modules = {
  acorn,
  acornjsx,
  prettier
};

const transformSrc = code => {
  const result = transform(code, {
    plugins: [babelPluginTransformJsx]
  });
  return result.code.replace(/\n/g, "");
};

const throwApp = (inputId, app) => {
  let root = document.getElementById(inputId);
  unmountComponentAtNode(root);
  ReactDOM.render(app, root);
  throw "";    
};

const jsxParser = (jsxString, preamble, inputId, states) => {
  jsxString = decodeURI(jsxString);
  try {
    let ast = acorn.Parser.extend(acornjsx()).parse(jsxString);
    if(!isJSXElement(ast)){
      throw "notjsx";
    }
  } catch (error) {
    let message, code;
    if(error === "notjsx"){
      message = "Error in `jsx()`: not a JSX component.";
      code = jsxString;
    }else{
      try {
        let p = prettier.format(jsxString, { parser: "babel", plugins: [parserBabel]});
      } catch (err) {
        message = "Error in `jsx()`.";
        code = err.message;
      }
    }
    throwApp(inputId, <ErrorApp message={message} code={code}/>);
  }
  const transformedCode = transformSrc(jsxString);
  console.log("transformedCode", transformedCode);
  if(preamble){
    preamble = decodeURI(preamble);
    try {
      let p = prettier.format(preamble, { parser: "babel", plugins: [parserBabel]});
    } catch (error) {
      let message = "Error in `jsx()` preamble.";
      let code = error.name + ": " + error.message;
      throwApp(inputId, <ErrorApp message={message} code={code}/>);
    }
  }
  const scope = $.extend(
    {React}, 
    {
      states: states,
      getState: getState(states, inputId),
      setState: setState(states, inputId),
      getHookProperty: getHookProperty(states, inputId)
    },
    ChakraComponents, 
    Hooks, 
    Modules
  );
  const scopeKeys = Object.keys(scope);
  const scopeValues = Object.values(scope);
  const fn = new Function(
    ...scopeKeys,
    (preamble ? transformSrc(preamble) + "; " : "") + "return " + transformedCode
  );
  let output;
  try {
    output = fn(...scopeValues);
  } catch (error) {
    let message = "Error in `jsx()`.";
    let code = error.name + ": " + error.message;
    throwApp(inputId, <ErrorApp message={message} code={code}/>);
  }
  return output;
  // let x = Function(ChakraTags.join(","), "return " + jsxString)
  //   .apply(null, ChakraTags.map(tag => ChakraComponents[tag]));
  // return x; 
};


const chakraComponent = (
  component, shinyValue, states, patch, inputId, radiogroupValues, setRadiogroupValues
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
  if(isHTML(component)){
    console.log("XXXXXXXXXXX");
    console.log(component.__html);
    return ReactHtmlParser(unescapeHtml(decodeURI(component.__html)));
  }
  if(isJSX(component)){
    return jsxParser(component.__jsx, component.__preamble, inputId, states);
  }
  if(isJseval(component)){
    let ev = Eval(
      decodeURI(component.__eval), states, inputId
    );
    if(isHTML(ev)){
      return ReactHtmlParser(unescapeHtml(decodeURI(ev.__html)));
    }
    if(isTag(ev)){
      component = ev;
    }else{
      return ev;
    }
  }
  if(typeof component !== "object"){
    return component;
  }
  let tagName = component.name;
  if(tagName[0] === tagName[0].toUpperCase() && !ChakraTags.includes(tagName)){
    return invalidComponent(`component '${tagName}'`);
  }
  if(tagName === "input" && component.attribs.id === "ii"){
    console.log("INPUT", component);
//    return <ToastExample/>;
    // const fn = new Function(
    //   "React, " + ChakraTags.join(","),
    //   `return ${transformedCode}`
    // );
    // return fn.apply(null, [React].concat(ChakraTags.map(tag => ChakraComponents[tag])));

//     let rr = Function("React, " + ChakraTags.join(","), 
//       `const ___Component = () => (${jsxString}); return React.createElement(___Component)`)
//       .apply(null, [React].concat(ChakraTags.map(tag => ChakraComponents[tag])));
//     //let rr = jsxParser("<Button onClick={() => {alert(\"JSX\")}}>JSX</Button>");
//     console.log("rr", rr);
//     return rr;
//     let r = <JsxParser
//       components={ChakraComponents}
//       jsx={`
//     <Button onClick={() => {alert("JSX")}}>JSX</Button>
//         `}
//     />;
//     //return r;
//     console.log("JSXPARSER", r);
//     console.log("BABELPARSER", 
//       parse("<Button onClick={() => {alert(\"JSX\")}}>JSX</Button>", {plugins: ["jsx"]}));
//     let JSX = acorn.Parser.extend(jsx()).parse("my(<jsx/>, '<Button onClick={() => {alert(\"JSX\")}}>JSX</Button>');");
//     console.log("JSX", JSX);
//     let JSX2 = acorn.Parser.extend(jsx()).parse("<Button onClick={() => {alert(\"JSX\")}}>JSX</Button>");
// console.log("JSX2", JSX2);
// let w = walk.simple(JSX2, {
//       CallExpression: (node) => {
//           console.log("NODE", node);
//       }
//   }, walk.base);
//   console.log(w);
//   //console.log("ESCODEGEN", escodegen.generate(JSX2, {parse: acorn.Parser.extend(jsx()).parse}));
//     throw "";
  }
  let States = {};
  if(component.statesGroup && states.done !== true){
    states = JSON.parse(decodeURI(component.states));
    states.chakraState = {};
    for(let key in states){
      states[key] = makeState(states[key], states, inputId);
      console.log("states[key]", states[key]);
    }
    appendStates(component, states, inputId);
    console.log("states", states);
    // for(let key in states){
    //   if(states[key].get && states[key].get().get) states[key].get = states[key].get().get;
    // }
    let statesGroup = component.statesGroup;
    delete component.statesGroup;
    //states.done = true;
    Shiny.addCustomMessageHandler(statesGroup, function(x){
      // if(states[x.state] === undefined){
      //   let root = document.getElementById(inputId);
      //   unmountComponentAtNode(root);
      //   let app = <InvalidState message={`Invalid state '${x.state}'.`}/>;
      //   ReactDOM.render(app, root);
      //   throw "";
      // }
      let bind = false;
      if(x.type === "html"){
        x.value = ReactHtmlParser(decodeURI(x.value));
        bind = true;
      }else if(x.type === "component"){
        x.value = chakraComponent(JSON.parse(JSON.stringify(x.value)), shinyValue, states, {}, inputId);
        //states.done = true;
        states[x.state].set(undefined);
        bind = true;
      }else if(x.type === "jsx"){
        x.value = jsxParser(x.value.__jsx, x.value.__preamble, inputId, states);
      }
      states[x.state].set(x.value);
      if(bind) Shiny.bindAll();
    });
//    States[component.statesGroup] = states;
    component.hasStates = true;
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
  if(isEmptyArray(props)){
    props = {};
  }
  for(const key in props){
    if(typeof props[key] === "string"){
      props[key] = decodeURI(props[key]);
    }else if(isJseval(props[key])){
      // ReactDOM.render(<InvalidState/>, document.getElementById("invalidstate"));
      // throw "" ;
      //let disclosure = component.disclosure; 
      props[key] = 
        Eval(decodeURI(props[key].__eval), states, inputId);
    }else if(isJSX(props[key])){
      props[key] = jsxParser(props[key].__jsx, props[key].__preamble, inputId, states);
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
    props.onClick = Eval(props.onClick, states, inputId);
  }
  if(component.widget === "alertdialog"){
    delete component.widget;
    shinyValue.add(props.id, null);
    const [isOpen, setIsOpen] = React.useState(false);
    const [disabled, setDisabled] = React.useState(false);
    const setShinyValue = value => {
      if(value !== undefined){
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    const onClose = () => {
      setIsOpen(false);
    };
    const onCloseButton = (e) => {
      setShinyValue(e.currentTarget.dataset.val);
      setIsOpen(false);
    };
    const cancelRef = React.useRef();
    let funcs = {
      Button: onCloseButton,
      IconButton: onCloseButton,
      OpenButton: () => {setIsOpen(true);},
      OpenIconButton: () => {setIsOpen(true);},
      CancelButton: onCloseButton,
      CancelIconButton: onCloseButton,
      DisableButton: (e) => {
        setShinyValue(e.currentTarget.dataset.val);
        setDisabled(true);
        setIsOpen(false);
      },
      DisableIconButton: (e) => {
        setShinyValue(e.currentTarget.dataset.val);
        setDisabled(true);
        setIsOpen(false);
      },
      RemoveButton: (e) => {
        setShinyValue(e.currentTarget.dataset.val);
        setIsOpen(false);
        $("#" + props.id).remove();
      },
      RemoveIconButton: (e) => {
        setShinyValue(e.currentTarget.dataset.val);
        setIsOpen(false);
        $("#" + props.id).remove();
      }
    };
    mergeOnClick(component, funcs, states, inputId);
    patch = {
      // Button: {
      //   onClick: onCloseButton
      // },
      OpenButton: {
        // onClick: () => {setIsOpen(true);},
        isDisabled: disabled
      },
      // DisableButton: {
      //   onClick: (e) => {
      //     setShinyValue(e.currentTarget.dataset.val);
      //     setDisabled(true);
      //     setIsOpen(false);
      //   }
      // },
      CancelButton: {
        ref: cancelRef
        // onClick: onCloseButton
      },
      // RemoveButton: {
      //   onClick: (e) => {
      //     setShinyValue(e.currentTarget.dataset.val);
      //     setIsOpen(false);
      //     $("#" + props.id).remove();
      //   }
      // },
      // UnmountingButton: {
      //   onClick: (e) => {
      //     let value = e.currentTarget.dataset.val;
      //     if(value) setShinyValue(decodeURI(value));
      //     unmountComponentAtNode(document.getElementById(props.id));
      //   }
      // },
      // IconButton: {
      //   onClick: onCloseButton
      // },
      OpenIconButton: {
        // onClick: () => {setIsOpen(true);},
        isDisabled: disabled
      },
      // DisableIconButton: {
      //   onClick: (e) => {
      //     setShinyValue(e.currentTarget.dataset.val);
      //     setDisabled(true);
      //     setIsOpen(false);
      //   }
      // },
      CancelIconButton: {
        ref: cancelRef
        // onClick: onCloseButton
      },
      // RemoveIconButton: {
      //   onClick: (e) => {
      //     setShinyValue(e.currentTarget.dataset.val);
      //     setIsOpen(false);
      //     $("#" + props.id).remove();
      //   }
      // },
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
    shinyValue.add(props.id, null);
    const setShinyValue = (value) => Shiny.setInputValue(props.id, value);
    let funcs = {
      OpenButton: onOpen,
      ClosingButton: onClose,
      Button: (e) => {
        let value = e.currentTarget.dataset.val;
        if(value !== undefined){
          setShinyValue(value);
          shinyValue.set(props.id, value);
        }
      }
    };
    mergeOnClick(component, funcs, states, inputId);
    patch = {
      OpenButton: {
        ref: btnRef
        // onClick: onOpen
      },
      Drawer: {
        isOpen: isOpen,
        onClose: onClose,
        finalFocusRef: btnRef
      }
      // ClosingButton: {
      //   onClick: onClose
      // },
      // Button: {
      //   onClick: (e) => {
      //     let value = e.currentTarget.dataset.val;
      //     if(value !== undefined){
      //       setShinyValue(value);
      //       shinyValue.set(props.id, value);
      //     }
      //   }
      // }
    };  
  }else if(component.name === "Menu" && component.process !== false){
    component.process = false;
    let selected = getMenuSelection(component);
    if(selected){
      shinyValue.add(props.id, selected);
      selected = JSON.stringify(selected);
      makeMenuComponent(component, shinyValue);
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
        let menulist = chakraComponent(component.children[1], shinyValue, {}, {}, inputId);
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
          children: [component],
          hasStates: component.hasStates
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
      shinyValue.add(props.id, null);
      let funcs = {
        MenuItem: (e) => {
          shinyValue.set(props.id, e.currentTarget.dataset.val);
          Shiny.setInputValue(props.id, e.currentTarget.dataset.val);
        }
      };
      mergeOnClick(component, funcs, states, inputId);
      // patch = $.extend(patch, {MenuItem: {
      //   onClick: (e) => {
      //     shinyValue.set(props.id, e.currentTarget.dataset.val);
      //     Shiny.setInputValue(props.id, e.currentTarget.dataset.val);
      //   }
      // }});
      let menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      if(menubutton.attribs.text){
        let buttonprops = menubutton.attribs;
        let textWhenOpen = decodeURI(buttonprops.text.textWhenOpen);
        let textWhenClose = decodeURI(buttonprops.text.textWhenClose);
        delete buttonprops.text;
        let menulist = chakraComponent(component.children[1], shinyValue, {}, patch, inputId);
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
  }else if(component.name === "Popover" && props.hasOwnProperty("id")){
    shinyValue.add(props.id, null);
    const setShinyValue = (value) => {
      if(value !== undefined){
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    let funcs = {
      Button: (e) => {setShinyValue(e.currentTarget.dataset.val)},
      IconButton: (e) => {setShinyValue(e.currentTarget.dataset.val)}
    };
    mergeOnClick(component, funcs, states, inputId);
    // patch = {
    //   Button: {
    //     onClick: (e) => {
    //       setShinyValue(e.currentTarget.dataset.val);
    //     }
    //   }
    // };  
  }else if(component.name === "PopoverTrigger"){
    let child = chakraComponent(component.children[0], shinyValue, {}, {}, inputId);
    return <PopoverTrigger>{child}</PopoverTrigger>;
    // props.children = component.children;
    // component.children = [];
  }else if(component.name === "Tabs" && props.hasOwnProperty("id")){
    let defaultIndex = props.defaultIndex ? props.defaultIndex : 0;
    shinyValue.add(props.id, defaultIndex);
    props.onChange = index => {
      Shiny.setInputValue(props.id, index);
      shinyValue.set(props.id, index);
    };
    props.className = "chakraTag";
    props["data-shinyinitvalue"] = defaultIndex;
  }else if(props.class === "checkboxWithChildren"){
    let state = makeCheckboxWithChildren(component, shinyValue);
    shinyValue.add(props.id, state);
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
  }else if(
    component.name === "NumberInput" && 
    //props.shinyValue !== false && 
    props.hasOwnProperty("id")
  ){
    let defaultValue = props.hasOwnProperty("defaultValue") ? props.defaultValue : 0;
    shinyValue.add(props.id, defaultValue);
    let f = props.onChange || (() => {});
    const [value, setValue] = React.useState(defaultValue);
    props.value = value;
    props.onChange = (valueAsString, valueAsNumber) => {
      shinyValue.set(props.id, valueAsNumber);
      Shiny.setInputValue(props.id, valueAsNumber);
      setValue(valueAsNumber);
      f(valueAsString, valueAsNumber);
    };
  }else if(
    component.name === "Switch" && 
    //props.shinyValue !== false && 
    props.hasOwnProperty("id")
  ){
    if(typeof props.isChecked !== "object"){
      if(props.defaultChecked === undefined){
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      let f = props.onChange;
      if(f){
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      }else{
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
  }else if(
    component.name === "Checkbox" && 
    //props.shinyValue !== false && 
    !component.dontprocess &&
    props.id !== undefined &&
    !["parentCheckbox", "childrenCheckbox"].includes(props.className)
  ){
    if(typeof props.isChecked !== "object"){
      if(props.defaultChecked === undefined){
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      //Shiny.setInputValue("id", 1, {priority: "event"});
      //shinyValue.set(props.id, props.defaultChecked);
      let f = props.onChange;
      if(f){
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      }else{
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
    // let reactState;
    // if(states){
    //   let chakraState = states["chakra" + props.id];
    //   reactState = [chakraState.get(), chakraState.set];
    // }else{
    //   reactState = React.useState(props.isChecked === true);
    // }
    // const [isChecked, setChecked] = reactState;
    // let onChange = null;
    // if(props.onChange){
    //   let f = props.onChange;
    //   onChange = event => {
    //     //alert(event.target.checked);
    //     //console.log("EEEEEEEEEVVVVVVVVENT",event);
    //     setChecked(event.target.checked);
    //     Shiny.setInputValue(props.id, event.target.checked);
    //     f(event);
    //   };
    // }else{
    //   onChange = event => {
    //     setChecked(event.target.checked);
    //     Shiny.setInputValue(props.id, event.target.checked);
    //   };
    // }
    // props = $.extend(props, 
    //   {
    //     isChecked: isChecked,
    //     onChange: onChange
    //   }
    // );
  }else if(component.name === "CheckboxGroup" && component.processed !== true){
    component.processed = true;
    let divattrs = {id: props.id};
    if(props.hasOwnProperty("defaultValue")){
      props.defaultValue = props.defaultValue.map(decodeURI);
      divattrs.className = "chakraTag";
      divattrs["data-shinyinitvalue"] = JSON.stringify(props.defaultValue);
      shinyValue.add(props.id, props.defaultValue);
    }
    component.attribs = $.extend(props, 
      {onChange: value => {
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }}
    );
    component = {
      name: "div",
      attribs: divattrs,
      children: [component]
    };
    props = divattrs;
  }else if(component.name === "RadioGroup"){
    shinyValue.add(props.id, radiogroupValues[props.id]);
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
          shinyValue.set(props.id, value);
        },
        value: radiogroupValues[props.id],
        className: "chakraTag",
        "data-shinyinitvalue": radiogroupValues[props.id]
      }
    );
  }else if(component.name === "ScriptTag" && component.decoded !== true){
    props.dangerouslySetInnerHTML.__html = decodeURI(props.dangerouslySetInnerHTML.__html);
    component.decoded = true;
  }else if(component.name === "Editable" && props.hasOwnProperty("id") && props.shinyValue !== false){
    let defaultValue = props.hasOwnProperty("defaultValue") ? props.defaultValue : "";
    props.className = "chakraTag";
    props["data-shinyinitvalue"] = defaultValue;
    shinyValue.add(props.id, defaultValue);
    let f = props.onChange || (() => {});
    const [value, setValue] = React.useState(defaultValue);
    props.value = value;
    const onChange_onCancel = (val) => {
      setValue(val);
      Shiny.setInputValue(props.id, val);
      shinyValue.set(props.id, val);
    };
    props.onChange = (val) => {
      onChange_onCancel(val);
      f(val);
    };
    props.onCancel = onChange_onCancel;
  }else if(component.name === "Input" && props.hasOwnProperty("id") && props.shinyValue !== false){
    props.className = "chakraTag";
    if(isNotEmpty(states) && states.hasOwnProperty("chakra" + props.id)){
      let chakraState = states["chakra" + props.id];
      props["data-shinyinitvalue"] = chakraState.get();  
      const getter = () => {
        let value = chakraState.get();
        if(Shiny.shinyapp.isConnected()) {
          Shiny.setInputValue(props.id, value);
        }
        shinyValue.set(props.id, value);
        return value;
      };
      props.value = getter();
    }else{
      const defaultValue = props.hasOwnProperty("defaultValue") ? 
        props.defaultValue : 
        (props.hasOwnProperty("value") ? props.value : "");
      const inputValue = defaultValue;
      props.defaultValue = inputValue;
      props["data-shinyinitvalue"] = inputValue;
      shinyValue.add(props.id, inputValue);
      delete props.value;
      const f = props.onChange;
      if(f){
        props.onChange = (event) => {
          Shiny.setInputValue(props.id, event.target.value);
          shinyValue.set(props.id, event.target.value);
          f(event);
        };
      }else{
        props.onChange = (event) => {
          Shiny.setInputValue(props.id, event.target.value);
          shinyValue.set(props.id, event.target.value);
        };
      }  
    }
  }else if(component.widget === "slider"){
    let defaultValue = props.defaultValue;
    props.className = "chakraTag";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const sliderMark = component.children.length === 3;
    const tooltip = component.children[1].name === "Tooltip";
    let sliderValue = null;
    let setSliderValue = () => {};
    if(sliderMark || tooltip){
      [sliderValue, setSliderValue] = React.useState(defaultValue);
      let child1 = component.children[1]; 
      if(sliderMark){
        child1.attribs.value = sliderValue;
        child1.children = [sliderValue];
      }else{ // tooltip
        const tooltipAttribs = $.extend(child1.attribs, {label: sliderValue});
        const thumbAttribs = child1.children[0].attribs;
        component.children[1] = <Tooltip {...tooltipAttribs}><SliderThumb {...thumbAttribs}/></Tooltip>;
      }
    }
    if(component.shinyValueOn === "end"){
      props.onChangeEnd = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
      };
      if(sliderMark || tooltip){
        props.onChange = (val) => {
          setSliderValue(val);
        };  
      }
    }else{
      props.onChange = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
        setSliderValue(val);
      };
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
        if(component.hasStates && isTag(component.children[i])){
          component.children[i].hasStates = true;
          component.children[i].force = component.force;
        }
        let x = component.hasStates || isJseval(component.children[i]) ? states : {};
        if(props.shinyValue === false && isTag(component.children[i])){
          let attribs = component.children[i].attribs;
          if(isEmptyArray(attribs)){
            attribs = {};
          }        
          attribs.shinyValue = false;
        }
        let cc = chakraComponent(
          component.children[i], shinyValue, x, patch, inputId, radiogroupValues, setRadiogroupValues
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
    // if(newprops.id === "uuuuu"){
    //   alert(JSON.stringify(component));
    //   alert(JSON.stringify(newprops));
    // }
    // if(tag === "PopoverTrigger"){
    //   return React.createElement(ChakraComponents[tag], {children: component.children});
    // }
    if(isNonEmptyArray(component.children)){
      return React.createElement(ChakraComponents[tag], newprops, component.children);
    }else{
      return React.createElement(ChakraComponents[tag], newprops);
    }
  }else{
    fixTagAttribs(newprops);
    if(isNonEmptyArray(component.children)){
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
  useClipboard,
  useToast, 
  createStandaloneToast,
  useEditableControls
};

const ChakraComponent = ({ configuration, value, setValue }) => {
  console.log("DOCBODY - ChakraComponent", JSON.stringify(document.body));

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
  // const [checkedItems, setCheckedItems] = React.useState(configuration.Checkboxes);
  // const checkboxOnChange = (e) => {
  //   let obj = {};
  //   for(let key in checkedItems){
  //     if(key === e.currentTarget.id){
  //       obj[key] = e.target.checked;
  //     }else{
  //       obj[key] = checkedItems[key];
  //     }
  //   }
  //   setCheckedItems(obj);
  //   Shiny.setInputValue(e.currentTarget.id, e.target.checked);    
  // };
  // RadioGroup
  let RadioGroups = configuration.RadioGroups; 
  if(RadioGroups){
    RadioGroups = Object.fromEntries(
      Object.entries(RadioGroups).map(entry => {return [entry[0], decodeURI(entry[1])];})
    );
  }
  const [radiogroupValues, setRadiogroupValues] = React.useState(RadioGroups);
  let shinyValue = new ShinyValue(configuration.inputId);
  //setValue("xxx");
  //$("#id").addClass("chakraTag");
  return (
    // <ChakraProvider>
    // {
      chakraComponent(
        JSON.parse(JSON.stringify(configuration.component)),
        shinyValue,
        {},
        patch,
        configuration.inputId,
        // null,//checkedItems,
        // null,//checkboxOnChange,
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
    console.log("GETVALUE", el, value);
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
    console.log("INITIALIZE", el);
  }
});

Shiny.inputBindings.register(chakraBinding);


//reactShinyInput('.chakracomponent', 'shinyChakraUI.chakracomponent', ChakraComponent);
reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput, {type: "shinyChakraUI.widget"});


Shiny.inputBindings.register(new class extends Shiny.InputBinding {

  /*
   * Methods override those in Shiny.InputBinding
   */

  find(scope) {
    return $(scope).find(".chakracomponent");
  }
  getValue(el) {
    console.log("DOCBODY - getValue", JSON.stringify(document.body));
    const element = React.createElement(ChakraComponent, {
      configuration: $(el).data("configuration")
    });
    ReactDOM.render(element, el);
    return $(el).data("value");
  }
  setValue(el, value, rateLimited = false) {
    /*
     * We have to check whether $(el).data('callback') is undefined here
     * in case shiny::renderUI() is involved. If an input is contained in a
     * shiny::uiOutput(), the following strange thing happens occasionally:
     *
     *   1. setValue() is bound to an el in this.render(), below
     *   2. An event that will call setValue() is enqueued
     *   3. While the event is still enqueued, el is unbound and removed
     *      from the DOM by the JS code associated with shiny::uiOutput()
     *      - That code uses jQuery .html() in output_binding_html.js
     *      - .html() removes el from the DOM and clears ist data and events
     *   4. By the time the setValue() bound to the original el is invoked,
     *      el has been unbound and its data cleared.
     *
     *  Since the original input is gone along with its callback, it
     *  seems to make the most sense to do nothing.
     */
    if ($(el).data('callback') !== undefined) {
      this.setInputValue(el, value);
      this.getCallback(el)(rateLimited);
      this.render(el);
    }
  }
  initialize(el) {
    console.log("DOCBODY - initialize", JSON.stringify(document.body));
    //$(el).data('value', JSON.parse($(el).next().text()));
    $(el).data('configuration', JSON.parse($(el).next().next().text()));
  }
  subscribe(el, callback) {
//    $(document).ready(function(){
      console.log("DOCBODY - subscribe", JSON.stringify(document.body));
//    });
  }
  unsubscribe(el) {
    ReactDOM.render(null, el);
  }
  receiveMessage(el, data) {
//    options.receiveMessage.call(this, el, data);
  }
  getType(el) {
    return "shinyChakraUI.component";
  }

}, 'shinyChakraUI.chakracomponent');

