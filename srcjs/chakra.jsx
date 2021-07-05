import { reactShinyInput } from 'reactR';
import { unmountComponentAtNode } from "react-dom";
import ReactDOM from 'react-dom';
import parserBabel from "prettier/parser-babel";
import babelPluginTransformJsx from '@babel/plugin-transform-react-jsx';
import { transform } from '@babel/core';
import {
  useDisclosure,
  useClipboard,
  useToast,
  createStandaloneToast,
  useEditableControls,
  useBoolean,
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
  Tooltip,
  AspectRatio,
  Center, 
  Square, 
  Circle,
  Container,
  Spacer,
  Grid, 
  GridItem,
  SimpleGrid,
  VStack,
  Wrap,
  WrapItem,
  PinInput, 
  PinInputField,
  Select,
  Textarea,
  Heading,
  Text,
  Table,
  Thead,
  Tbody,
  Tfoot,
  Tr,
  Th,
  Td,
  TableCaption,
  Avatar, 
  AvatarBadge, 
  AvatarGroup,
  Image,
  CloseButton,
  Badge,
  Kbd,
  List, 
  ListItem, 
  ListIcon, 
  OrderedList, 
  UnorderedList,
  Tag,
  TagLabel,
  TagLeftIcon,
  TagRightIcon,
  TagCloseButton,
  CircularProgress, 
  CircularProgressLabel,
  Progress,
  Skeleton, 
  SkeletonCircle, 
  SkeletonText,
  Spinner,
  Accordion,
  AccordionItem,
  AccordionButton,
  AccordionPanel,
  AccordionIcon,
  VisuallyHidden,
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  BreadcrumbSeparator,
  Portal
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
  Tooltip,
  AspectRatio,
  Center, 
  Square, 
  Circle,
  Container,
  Spacer,
  Grid, 
  GridItem,
  SimpleGrid,
  VStack,
  Wrap,
  WrapItem,
  PinInput, 
  PinInputField,
  Select,
  Textarea,
  Heading,
  Text,
  Table,
  Thead,
  Tbody,
  Tfoot,
  Tr,
  Th,
  Td,
  TableCaption,
  Avatar, 
  AvatarBadge, 
  AvatarGroup,
  Image,
  CloseButton,
  Badge,
  Kbd,
  List, 
  ListItem, 
  ListIcon, 
  OrderedList, 
  UnorderedList,
  Tag,
  TagLabel,
  TagLeftIcon,
  TagRightIcon,
  TagCloseButton,
  CircularProgress, 
  CircularProgressLabel,
  Progress,
  Skeleton, 
  SkeletonCircle, 
  SkeletonText,
  Spinner,
  Accordion,
  AccordionItem,
  AccordionButton,
  AccordionPanel,
  AccordionIcon,
  VisuallyHidden,
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  BreadcrumbSeparator,
  Portal
};

const ChakraTags = Object.keys(ChakraComponents);


const isCapitalized = (word) => (word[0] === word[0].toUpperCase());


const getMenuOptionGroupSelections = menuoptiongroup => {
  const type = menuoptiongroup.attribs.type;
  let selections = [];
  const menuitemoptions = menuoptiongroup.children;
  for(let i = 0; i < menuitemoptions.length; i++){
    let attribs = menuitemoptions[i].attribs;
    if(attribs.isChecked === true || attribs.defaultChecked === true){
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
  const children = menulist.children;
  for(let i = 0; i < children.length; i++){
    let item = children[i];
    if(item.name === "MenuOptionGroup"){
      menuoptiongroups.push(item);
    }
  }
  return menuoptiongroups.length ? menuoptiongroups : null;
};

const getMenuListSelection = menulist => {
  const menuoptiongroups = getMenuOptionGroups(menulist);
  if(menuoptiongroups === null){
    return null;
  }
  let selection = {};
  for(let i = 0; i < menuoptiongroups.length; i++){
    let menuoptiongroup = menuoptiongroups[i];
    let title = decodeURI(menuoptiongroup.attribs.title);
    selection[title] = getMenuOptionGroupSelections(menuoptiongroup);
  }
  return selection;
};

const getMenuList = menu => {
  const children = menu.children;
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
  const selected = getMenuSelection(menu);
  if(selected === null){
    return ;
  }
  const [value, setValue] = React.useState(selected);
  const menuoptiongroups = getMenuOptionGroups(getMenuList(menu));
  for(let i = 0; i < menuoptiongroups.length; i++){
    let groupprops = menuoptiongroups[i].attribs;
    let grouptitle = groupprops.title;
    if(selected.hasOwnProperty(grouptitle)){
      groupprops.defaultValue = selected[grouptitle];
    }
    groupprops.onChange = (selection) => {
      value[grouptitle] = selection;//Array.isArray(selection) ? selection.map(decodeURI) : decodeURI(selection);
      shinyValue.set(menu.attribs.id, value);
      setValue(value);
      Shiny.setInputValue(
        menu.attribs.id + ":shinyChakraUI.widget", 
        {value: value, widget: "menuWithGroups"}
      );
    };
  }
};


const isEmptyArray = x => (Array.isArray(x) && x.length === 0);

const isNonEmptyArray = x => (Array.isArray(x) && x.length);

const isNotEmpty = x => Object.keys(x).length > 0;


const makeCheckboxWithChildren = (div, shinyValue) => {
  let childCheckboxes = JSON.parse(JSON.stringify(div.children[1].children));
  const n = childCheckboxes.length;
  let state = [];
  let indices = [];
  for(let i = 0; i < n; i++){
    indices.push(i);
    let attribs = childCheckboxes[i].attribs;
    if(isEmptyArray(attribs)){
      childCheckboxes[i].attribs = {};
    }
    state.push(attribs.isChecked === true || attribs.defaultChecked === true);
  }
  const [xcheckedItems, xsetCheckedItems] = React.useState(state);
  const allChecked = xcheckedItems.every(Boolean);
  const isIndeterminate = xcheckedItems.some(Boolean) && !allChecked;
  const checkedState = state.map(x => React.useState(x));
  let inputId = div.attribs.id + ":shinyChakraUI.widget";
  let parentCheckbox = div.children[0];
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
    for(let i = 0; i < n; i++){
      state[i] = checked;
      checkedState[i][1](checked);
    }
    shinyValue.set(div.attribs.id, state);
    xsetCheckedItems(state);
    Shiny.setInputValue(
        inputId, 
        {value: state, widget: "checkboxWithChildren"}
    );
  };
  div.children[1].children = [{
    name: "Fragment",
    attribs: {},
    children: indices.map(i => {
      let [isChecked, setIsChecked] = checkedState[i];
      return $.extend(
        childCheckboxes[i], 
        {attribs: $.extend(
          childCheckboxes[i].attribs,
          {
            className: "childrenCheckbox",
            isChecked: isChecked,
            onChange: (e) => {
              setIsChecked(e.target.checked);
              xcheckedItems[i] = e.target.checked;
              shinyValue.set(div.attribs.id, xcheckedItems);
              xsetCheckedItems(xcheckedItems);
              Shiny.setInputValue(
                inputId, 
                {value: xcheckedItems, widget: "checkboxWithChildren"}
              );
            }
          }
        )}
      );
    })
  }];
  return state;
};


const formatStringToCamelCase = str => {
  const splitted = str.split("-");
  if(splitted.length === 1) return splitted[0];
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
    if(!property) return;
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


const isnonnullobject = x => {
  return x !== null && (typeof x === "object");
};

const isTag = value => {
  return isnonnullobject(value) 
      && value.hasOwnProperty('name')
      && value.hasOwnProperty('attribs')
      && value.hasOwnProperty('children');
};

const isJseval = x => {
  return isnonnullobject(x) && x.hasOwnProperty("__eval");
};

const isHook = x => {
  return isnonnullobject(x) && x.hasOwnProperty("__hook");
};

const isHTML = x => {
  return isnonnullobject(x) && x.hasOwnProperty("__html");
};

const isJSX = x => {
  return isnonnullobject(x) && x.hasOwnProperty("__jsx");
};


function unescapeHtml(html) {
  let el = document.createElement('div');
  return html.replace(/\&[#0-9a-z]+;/gi, function(enc) {
      el.innerHTML = enc;
      return el.innerText;
  });
}


const getHookProperty = (states, inputId) => ((hook, key) => {
  if(!states.hasOwnProperty(hook)){
    throwApp(inputId, <InvalidState message={`Hook '${hook}' not found.`} />);
  }
  if(!states[hook].hasOwnProperty(key)){
    throwApp(
        inputId, 
        <InvalidState message={`Hook '${hook}' has no property '${key}'.`} />
    );
  }
  return states[hook][key];
});

const getState = (states, inputId) => ((state) => {
  if(!states.hasOwnProperty(state)){
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`} />);
  }
  return states[state].get();
});

const setState = (states, inputId) => ((state, value) => {
  if(!states.hasOwnProperty(state)){
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`} />);
  }
  if(!states[state].hasOwnProperty("set")){
    throwApp(
        inputId, 
        <InvalidState message={`State '${state}' has no 'set' method.`} />
    );
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
  return fn(...scopeValues);
};


const makeState = (x, states, inputId) => {
  if(isJseval(x)){
    return {get: Eval("() => " + decodeURI(x.__eval), states, inputId)};
  }else if(isHook(x)){
    let hook = Eval(decodeURI(x.__hook), states, inputId);
    if(typeof hook === "function"){
      return {get: () => hook};
    }else{
      return $.extend(hook, {get: () => hook});
    }
  }else if(isJSX(x)){
    x = jsxParser(x.__jsx, x.__preamble, inputId, states);
  }
  let [reactState, setReactState] = React.useState(x);
  return {get: () => reactState, set: setReactState};
};

const appendStates = (component, states, inputId) => {
  let attribs = component.attribs;
  if(attribs.hasOwnProperty("id") && attribs.shinyAuto !== false){
    const stateName = "chakra" + attribs.id;
    if(component.name === "Input"){
      let defaultValue = attribs.hasOwnProperty("defaultValue") ? 
        decodeURI(attribs.defaultValue) : null;
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
    }else if(
        component.name === "NumberInput" && 
        component.parent !== "combinedslider"
    ){
      let defaultValue = 
        attribs.hasOwnProperty("defaultValue") ? attribs.defaultValue : null;
      if(defaultValue === null){
        const hasValue = attribs.hasOwnProperty("value");
        const value = hasValue ? attribs.value : null;
        if(hasValue){
          if(!isJseval(value)){
            defaultValue = value;
          }else{
            states[stateName] = makeState(value, states, inputId);
          }
        }else{
          defaultValue = 0;
        }
      }
      if(defaultValue !== null){
        attribs.defaultValue = defaultValue;
      }
    }
  }
  for(let i = 0; i < component.children.length; i++){
    if(isTag(component.children[i])){
      //component.children[i].hasStates = true;
      appendStates(component.children[i], states, inputId);
    }
  }
};


const InvalidTag = ({message}) => {
  const text = `INVALID TAG (${message})`;
  return (
    <ChakraProvider>
      <Alert status="error">
        <AlertIcon />
        <AlertTitle mr={2}>Error.</AlertTitle>
        <AlertDescription>
          {text}
        </AlertDescription>
      </Alert>
    </ChakraProvider>
  );
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
  const body = ast.body;
  if(body.length !== 1){
    return false;
  }
  const node = body[0];
  if(node.type !== "ExpressionStatement"){
    return false;
  }
  const expressionType = node.expression.type;
  if(expressionType !== "JSXElement" && expressionType !== "JSXFragment"){
    return false;
  }
  return true;
};


function ShinyValue(inputId){
  const $el = $("#" + inputId);
  this.add = (key, v, force) => {
    let value = $el.data("value");
    if(force || value === undefined || value[key] === undefined){
      $el.data("value", $.extend(value, Object.fromEntries([[key,v]])));
      if(Shiny.shinyapp.isConnected()){
        Shiny.setInputValue(
            inputId + ":shinyChakraUI.component", 
            $el.data("value")
        );
      }
    }
  };
  this.set = (key, v) => {
    this.add(key, v, true);
  };
}


const mergeOnClick = (component, funcs, states, inputId) => {
  for(let i = 0; i < component.children.length; i++){
    let child = component.children[i];
    if(isTag(child)){
      if(funcs.hasOwnProperty(child.name)){
        let func = funcs[child.name];
        if(child.attribs.hasOwnProperty("onClick")){
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


const Modules = {
  acorn,
  acornjsx,
  prettier
};


const Hooks = {
  useDisclosure,
  useClipboard,
  useToast, 
  createStandaloneToast,
  useEditableControls,
  useBoolean
};


const transformSrc = code => {
  const result = transform(code, {
    plugins: [babelPluginTransformJsx]
  });
  return result.code.replace(/\n/g, "");
};


const throwApp = (inputId, app) => {
  const root = document.getElementById(inputId);
  unmountComponentAtNode(root);
  ReactDOM.render(app, root);
  throw "An error occured!";    
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
        let p = prettier.format(
            jsxString, 
            { parser: "babel", plugins: [parserBabel] }
        );
      } catch (err) {
        message = "Error in `jsx()`.";
        code = err.message;
      }
    }
    throwApp(inputId, <ErrorApp message={message} code={code} />);
  }
  const transformedCode = transformSrc(jsxString);
  if(preamble){
    preamble = decodeURI(preamble);
    try {
      let p = prettier.format(
        preamble, 
        { parser: "babel", plugins: [parserBabel] }
      );
    } catch (error) {
      let message = "Error in `jsx()` preamble.";
      let code = error.name + ": " + error.message;
      throwApp(inputId, <ErrorApp message={message} code={code} />);
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
    throwApp(inputId, <ErrorApp message={message} code={code} />);
  }
  return output;
};


/* MAIN FUNCTION ----------------------------------------------------------- */
const chakraComponent = (
  component, shinyValue, states, patch, 
  inputId, radiogroupValues, setRadiogroupValues
) => {
  if(React.isValidElement(component)){
    return component;
  }
  if(typeof component === "string"){
    return decodeURI(component);
  }
  if(isHTML(component)){
    return ReactHtmlParser(unescapeHtml(decodeURI(component.__html)));
  }
  if(isJSX(component)){
    return jsxParser(component.__jsx, component.__preamble, inputId, states);
  }
  if(isJseval(component)){
    const ev = Eval(decodeURI(component.__eval), states, inputId);
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
  if(component === null){
    return ;
  }
  const tagName = component.name;
  if(isCapitalized(tagName) && !ChakraTags.includes(tagName)){
    throwApp(inputId, <InvalidTag message={`tag '${tagName}'`} />);
  }

  /* ------------------------------------------------------------------------ */
  if(component.statesGroup && states.done !== true){
    states = JSON.parse(decodeURI(component.states));
    for(const key in states){
      states[key] = makeState(states[key], states, inputId);
    }
    appendStates(component, states, inputId);
    let statesGroup = component.statesGroup;
    delete component.statesGroup;
    //states.done = true;
    Shiny.addCustomMessageHandler(statesGroup, function(x){
      let bind = false;
      if(x.type === "html"){
        x.value = ReactHtmlParser(decodeURI(x.value));
        bind = true;
      }else if(x.type === "component"){
        x.value = chakraComponent(
          JSON.parse(JSON.stringify(x.value)), shinyValue, states, {}, inputId
        );
        //states.done = true;
        states[x.state].set(undefined);
        bind = true;
      }else if(x.type === "jsx"){
        x.value = jsxParser(x.value.__jsx, x.value.__preamble, inputId, states);
      }
      states[x.state].set(x.value);
      if(bind) Shiny.bindAll();
    });
    component.hasStates = true;
  }

  /* ------------------------------------------------------------------------ */
  let props = component.attribs;
  if(isEmptyArray(props)){
    props = {};
  }
  for(const key in props){
    if(typeof props[key] === "string"){
      props[key] = decodeURI(props[key]);
    }else if(isJseval(props[key])){
      props[key] = Eval(decodeURI(props[key].__eval), states, inputId);
    }else if(isJSX(props[key])){
      props[key] = 
        jsxParser(props[key].__jsx, props[key].__preamble, inputId, states);
    }
  }
  if(typeof props.onClick === "string"){
    props.onClick = Eval(props.onClick, states, inputId);
  }

  if( /*************************************************** WIDGET ALERTDIALOG */
    component.widget === "alertdialog"
  ){ 
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
      OpenButton: {
        isDisabled: disabled
      },
      CancelButton: {
        ref: cancelRef
      },
      OpenIconButton: {
        isDisabled: disabled
      },
      CancelIconButton: {
        ref: cancelRef
      },
      AlertDialog: {
        isOpen: isOpen,
        leastDestructiveRef: cancelRef,
        onClose: onClose,
        onEsc: () => {setShinyValue("esc");}
      }
    };
  }else if( /************************************************** WIDGET DRAWER */
    component.widget === "drawer"
  ){ 
    delete component.widget;
    const { isOpen, onOpen, onClose } = 
      useDisclosure({defaultIsOpen: component.isOpen});
    const btnRef = React.useRef();
    shinyValue.add(props.id, null);
    const setShinyValue = (e) => {
      const value = e.currentTarget.dataset.val;
      if(value !== undefined){
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    const [disabled, setDisabled] = React.useState(false);
    const funcs = {
      OpenButton: onOpen,
      OpenIconButton: onOpen,
      ClosingButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      ClosingIconButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      CancelButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      CancelIconButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      DisableButton: (e) => {
        setShinyValue(e);
        onClose();
        setDisabled(true);
      },
      DisableIconButton: (e) => {
        setShinyValue(e);
        onClose();
        setDisabled(true);
      },
      RemoveButton: (e) => {
        setShinyValue(e);
        onClose();
        $("#" + props.id).remove();
      },
      RemoveIconButton: (e) => {
        setShinyValue(e);
        onClose();
        $("#" + props.id).remove();
      },
      Button: setShinyValue,
      IconButton: setShinyValue
    };
    mergeOnClick(component, funcs, states, inputId);
    patch = {
      OpenButton: {
        ref: btnRef,
        isDisabled: disabled
      },
      Drawer: {
        isOpen: isOpen,
        onClose: onClose,
        finalFocusRef: btnRef
      }
    };  
  }else if( /*************************************************** WIDGET MODAL */
    component.widget === "modal"
  ){
    delete component.widget;
    const { isOpen, onOpen, onClose } = 
        useDisclosure({defaultIsOpen: component.isOpen});
    shinyValue.add(props.id, null);
    const setShinyValue = (e) => {
      let value = e.currentTarget.dataset.val;
      if(value !== undefined){
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    const [disabled, setDisabled] = React.useState(false);
    const funcs = {
      OpenButton: onOpen,
      OpenIconButton: onOpen,
      ClosingButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      ClosingIconButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      CancelButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      CancelIconButton: (e) => {
        setShinyValue(e);
        onClose();
      },
      DisableButton: (e) => {
        setShinyValue(e);
        onClose();
        setDisabled(true);
      },
      DisableIconButton: (e) => {
        setShinyValue(e);
        onClose();
        setDisabled(true);
      },
      RemoveButton: (e) => {
        setShinyValue(e);
        onClose();
        $("#" + props.id).remove();
      },
      RemoveIconButton: (e) => {
        setShinyValue(e);
        onClose();
        $("#" + props.id).remove();
      },
      Button: setShinyValue,
      IconButton: setShinyValue
    };
    mergeOnClick(component, funcs, states, inputId);
    patch = {
      OpenButton: {
        isDisabled: disabled
      },
      Modal: {
        isOpen: isOpen,
        onClose: onClose
      }
    };  
  }else if( /************************************************* COMPONENT MENU */
    component.name === "Menu" && component.process !== false
  ){ 
    component.process = false;
    let selected = getMenuSelection(component);
    if(selected){
      shinyValue.add(props.id, selected);
      selected = JSON.stringify(selected);
      makeMenuComponent(component, shinyValue);
      const menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      if(menubutton.attribs.text){
        let buttonprops = menubutton.attribs;
        const textWhenOpen = decodeURI(buttonprops.text.textWhenOpen);
        const textWhenClose = decodeURI(buttonprops.text.textWhenClose);
        delete buttonprops.text;
        const menulist = 
            chakraComponent(component.children[1], shinyValue, {}, {}, inputId);
        component = {
          name: "div",
          attribs: {
            id: props.id,
            className: "chakraShiny",
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
            className: "chakraShiny",
            "data-shinyinitvalue": selected,
            "data-widget": "menuWithGroups"          
          },
          children: [component],
          hasStates: component.hasStates
        };
      }
      props = component.attribs;
    }else{
      shinyValue.add(props.id, null);
      const funcs = {
        MenuItem: (e) => {
          shinyValue.set(props.id, e.currentTarget.dataset.val);
          Shiny.setInputValue(props.id, e.currentTarget.dataset.val);
        }
      };
      mergeOnClick(component, funcs, states, inputId);
      const menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      if(menubutton.attribs.text){
        let buttonprops = menubutton.attribs;
        const textWhenOpen = decodeURI(buttonprops.text.textWhenOpen);
        const textWhenClose = decodeURI(buttonprops.text.textWhenClose);
        delete buttonprops.text;
        const menulist = chakraComponent(
            component.children[1], shinyValue, {}, patch, inputId
        );
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
  }else if( /********************************************** COMPONENT POPOVER */
    component.name === "Popover" && props.hasOwnProperty("id")
  ){ 
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(null);
    shinyValue.add(props.id, null);
    const setShinyValue = (value) => {
      if(value !== undefined){
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    const funcs = {
      Button: (e) => {setShinyValue(e.currentTarget.dataset.val)},
      IconButton: (e) => {setShinyValue(e.currentTarget.dataset.val)}
    };
    mergeOnClick(component, funcs, states, inputId);
  }else if( /*************************************** COMPONENT POPOVERTRIGGER */
    component.name === "PopoverTrigger"
  ){ 
    const child = 
        chakraComponent(component.children[0], shinyValue, {}, {}, inputId);
    return <PopoverTrigger>{child}</PopoverTrigger>;
  }else if( /************************************************* COMPONENT TABS */
    component.name === "Tabs" && props.hasOwnProperty("id")
  ){ 
    const defaultIndex = props.defaultIndex ? props.defaultIndex : 0;
    shinyValue.add(props.id, defaultIndex);
    props.onChange = index => {
      Shiny.setInputValue(props.id, index);
      shinyValue.set(props.id, index);
    };
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = defaultIndex;
  }else if( /******************************************* CHECKBOXWITHCHILDREN */
    props.class === "checkboxWithChildren"
  ){ 
    const state = makeCheckboxWithChildren(component, shinyValue);
    shinyValue.add(props.id, state);
    props.className = "chakraShiny";
    delete props.class;
    props["data-shinyinitvalue"] = JSON.stringify(state);
    props["data-widget"] = "checkboxWithChildren";
  }else if( /****************************************** COMPONENT NUMBERINPUT */
    component.name === "NumberInput" && 
    component.parent !== "combinedslider" &&
    //props.shinyAuto !== false && 
    props.hasOwnProperty("id")
  ){
    if(isNotEmpty(states) && states.hasOwnProperty("chakra" + props.id)){
      const chakraState = states["chakra" + props.id];
      const getter = () => {
        let value = chakraState.get();
        if(Shiny.shinyapp.isConnected()){
          Shiny.setInputValue(props.id, value);
        }
        shinyValue.set(props.id, value);
        return value;
      };
      props.value = getter();
    }else{
      const defaultValue = 
        props.hasOwnProperty("defaultValue") ? props.defaultValue : 0;
      shinyValue.add(props.id, defaultValue);
      const f = props.onChange || (() => { });
      const [value, setValue] = React.useState(defaultValue);
      props.value = value;
      props.onChange = (valueAsString, valueAsNumber) => {
        shinyValue.set(props.id, valueAsNumber);
        Shiny.setInputValue(props.id, valueAsNumber);
        setValue(valueAsNumber);
        f(valueAsString, valueAsNumber);
      };
    }
  }else if( /*********************************************** COMPONENT SWITCH */
    component.name === "Switch" && 
    //props.shinyAuto !== false && 
    props.hasOwnProperty("id")
  ){
    if(typeof props.isChecked !== "object"){
      if(!props.hasOwnProperty("defaultChecked")){
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      const f = props.onChange;
      if(f){
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      }else{
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
  }else if( /********************************************* COMPONENT CHECKBOX */
    component.name === "Checkbox" && 
    //props.shinyAuto !== false && 
    !component.dontprocess &&
    props.hasOwnProperty("id") &&
    !["parentCheckbox", "childrenCheckbox"].includes(props.className)
  ){
    if(typeof props.isChecked !== "object"){
      if(!props.hasOwnProperty("defaultChecked")){
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      const f = props.onChange;
      if(f){
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      }else{
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
  }else if( /**************************************** COMPONENT CHECKBOXGROUP */
    component.name === "CheckboxGroup" && component.processed !== true
  ){
    component.processed = true;
    let divattrs = {id: props.id};
    if(props.hasOwnProperty("defaultValue")){
      props.defaultValue = props.defaultValue.map(decodeURI);
      divattrs.className = "chakraShiny";
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
  }else if( /******************************************* COMPONENT RADIOGROUP */
    component.name === "RadioGroup"
  ){
    shinyValue.add(props.id, radiogroupValues[props.id]);
    const fonchange = props.onChange || ((value) => { });
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
          fonchange(value);
        },
        value: radiogroupValues[props.id],
        className: "chakraShiny",
        "data-shinyinitvalue": radiogroupValues[props.id]
      }
    );
  }else if( /******************************************** COMPONENT SCRIPTTAG */
    component.name === "ScriptTag" && component.decoded !== true
  ){
    props.dangerouslySetInnerHTML.__html = 
        decodeURI(props.dangerouslySetInnerHTML.__html);
    component.decoded = true;
  }else if( /********************************************* COMPONENT EDITABLE */
    component.name === "Editable" && 
    props.hasOwnProperty("id") && 
    props.shinyAuto !== false
  ){
    const defaultValue = 
        props.hasOwnProperty("defaultValue") ? props.defaultValue : "";
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = defaultValue;
    shinyValue.add(props.id, defaultValue);
    const f = props.onChange || (() => {});
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
  }else if( /************************************************ COMPONENT INPUT */
    component.name === "Input" && 
    props.hasOwnProperty("id") && 
    props.shinyAuto !== false
  ){
    props.className = "chakraShiny";
    if(isNotEmpty(states) && states.hasOwnProperty("chakra" + props.id)){
      const chakraState = states["chakra" + props.id];
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
  }else if( /************************************************** WIDGET SLIDER */
    component.widget === "slider"
  ){
    let slider = component.children[component.children.length - 1];
    const defaultValue = slider.attribs.defaultValue;
    //props.class = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const sliderMark = slider.children.length === 3;
    const tooltip = slider.children[1].name === "Tooltip";
    let sliderValue = null;
    let setSliderValue = () => {};
    if(sliderMark || tooltip){
      [sliderValue, setSliderValue] = React.useState(defaultValue);
      let child1 = slider.children[1]; 
      if(sliderMark){
        child1.attribs.value = sliderValue;
        child1.children = [sliderValue];
      }else{ // tooltip
        const tooltipAttribs = $.extend(child1.attribs, {label: sliderValue});
        const thumbAttribs = child1.children[0].attribs;
        slider.children[1] = 
          <Tooltip {...tooltipAttribs}>
            <SliderThumb {...thumbAttribs}/>
          </Tooltip>;
      }
    }
    if(component.shinyValueOn === "end"){
      slider.attribs.onChangeEnd = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
      };
      if(sliderMark || tooltip){
        slider.attribs.onChange = (val) => {
          setSliderValue(val);
        };  
      }
    }else{
      slider.attribs.onChange = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
        setSliderValue(val);
      };
    }
  }else if( /****************************************** WIDGET COMBINEDSLIDER */
    component.widget === "combinedslider"
  ){
    let numberinput = component.children[0].children[0];
    let slider = component.children[0].children[1];
    const defaultValue = component.value;
    //props.class = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const [sliderValue, setSliderValue] = React.useState(defaultValue);
    const tooltip = slider.children[1].name === "Tooltip";
    if(tooltip){
      const child1 = slider.children[1]; 
      const tooltipAttribs = $.extend(child1.attribs, {label: sliderValue});
      const thumbAttribs = child1.children[0].attribs;
      slider.children[1] = 
        <Tooltip {...tooltipAttribs}>
          <SliderThumb {...thumbAttribs}/>
        </Tooltip>;
    }
    slider.attribs.value = sliderValue;
    numberinput.attribs.value = sliderValue;
    slider.attribs.onChange = (val) => {
      Shiny.setInputValue(props.id, val);
      shinyValue.set(props.id, val);
      setSliderValue(val);
    };
    numberinput.attribs.onChange = (valString, valNumber) => {
      Shiny.setInputValue(props.id, valNumber);
      shinyValue.set(props.id, valNumber);
      setSliderValue(valNumber);
    };
  }
  /* ------------------------------------------------------------------------ */
  for(const key in props){
    if(isTag(props[key])){
      const name = props[key].name; 
      if(isCapitalized(name)){
        if(!ChakraTags.includes(name)){
          const x = 
            `'${name}' in attribute '${key}' of component '${component.name}'`;
          throwApp(inputId, <InvalidTag message={x} />);
        }
        props[key] = 
            React.createElement(ChakraComponents[name], props[key].attribs);
      }else{
        fixTagAttribs(props[key].attribs);
        props[key] = React.createElement(name, props[key].attribs);
      }
    }
  }
  let newprops = $.extend(props, patch[component.name]);
  const nchildren = 
    Array.isArray(component.children) ? component.children.length : 0;
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
        const x = component.hasStates || isJseval(component.children[i]) ? 
            states : {};
        if(props.shinyAuto === false && isTag(component.children[i])){
          let attribs = component.children[i].attribs;
          if(isEmptyArray(attribs)){
            attribs = {};
          }        
          attribs.shinyAuto = false;
        }
        component.children[i] = chakraComponent(
          component.children[i], shinyValue, x, patch, 
          inputId, radiogroupValues, setRadiogroupValues
        );
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
  const tag = component.name;
  if(isCapitalized(tag)){
    if(isNonEmptyArray(component.children)){
      return React.createElement(
          ChakraComponents[tag], newprops, component.children
      );
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


const ChakraComponent = ({ configuration, value, setValue }) => {

  let patch = {
    process: true
  };

  let RadioGroups = configuration.RadioGroups; 
  if(RadioGroups){
    RadioGroups = Object.fromEntries(
      Object.entries(RadioGroups)
        .map(entry => {return [entry[0], decodeURI(entry[1])];})
    );
  }
  const [radiogroupValues, setRadiogroupValues] = React.useState(RadioGroups);
 
  let shinyValue = new ShinyValue(configuration.inputId);

  return (
    chakraComponent(
      JSON.parse(JSON.stringify(configuration.component)),
      shinyValue,
      {},
      patch,
      configuration.inputId,
      radiogroupValues,
      setRadiogroupValues
    )
  );
};


let chakraBinding = new Shiny.InputBinding();
$.extend(chakraBinding, {
  find: function (scope) {
    return $(scope).find(".chakraShiny");
  },
  getType: function (el) {
    return $(el).data("widget") ? "shinyChakraUI.widget" : false;
  },
  getValue: function (el) {
    const value = $(el).data("shinyinitvalue");
    const widget = $(el).data("widget");
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
    // $(el).off(".chakraBinding");
  },
  receiveMessage: function (el, data) {

  },
  getRatePolicy: function () {
    return {
      policy: 'debounce',
      delay: 250
    };
  },
  initialize: function initialize(el) {
    console.log("INITIALIZE", el); // why this does not appear?
  }
});
Shiny.inputBindings.register(chakraBinding);


Shiny.inputBindings.register(new class extends Shiny.InputBinding {

  find(scope) {
    return $(scope).find(".chakracomponent");
  }
  getValue(el) {
    const element = React.createElement(ChakraComponent, {
      configuration: $(el).data("configuration")
    });
    ReactDOM.render(element, el);
    return $(el).data("value");
  }
  setValue(el, value, rateLimited = false) {

  }
  initialize(el) {
    $(el).data("configuration", JSON.parse($(el).next().next().text()));
  }
  subscribe(el, callback) {

  }
  unsubscribe(el) {
    ReactDOM.render(null, el);
  }
  receiveMessage(el, data) {

  }
  getType(el) {
    return "shinyChakraUI.component";
  }

}, "shinyChakraUI.chakracomponent");

