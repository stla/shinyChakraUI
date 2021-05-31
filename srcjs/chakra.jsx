import { reactShinyInput, hydrate } from 'reactR';
import * as React from 'react';
import { unmountComponentAtNode } from "react-dom";
import {
  useDisclosure,
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
  InputRightElement
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
const CloseButton = Button;
const UnmountingButton = Button;
const DisableButton = Button;
const RemoveButton = Button;
const CancelIconButton = IconButton;
const OpenIconButton = IconButton;
const UnmountingIconButton = IconButton;
const DisableIconButton = IconButton;

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
  CloseButton,
  UnmountingButton,
  DisableButton,
  IconButton,
  CancelIconButton,
  OpenIconButton,
  UnmountingIconButton,
  DisableIconButton,
  RemoveButton,
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
  InputRightElement
};

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
      value[grouptitle] = Array.isArray(selection) ? selection.map(decodeURI) : decodeURI(selection);
      setValue(value);
      Shiny.setInputValue(
        menu.attribs.id + ":shinyChakraUI.widget", {value: value, widget: "menuWithGroups"}
      );
    };
  }
};

const zip = (a, b) => a.map((k, i) => [k, b[i]]);

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
  let code = "setTimeout(function(){Shiny.setInputValue('" + 
    inputId + "', " +   
    JSON.stringify({value: state, widget: "checkboxWithChildren"}) + 
    ")})";
  return code;
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

const chakraComponent = (
  component, patch, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
) => {
  console.log("XXXXXXXXXXX");
  console.log(component);
  if(React.isValidElement(component)){
    return component;
  }
  if(typeof component === "string"){
    return decodeURI(component);
  }
  if(component.html){
    return ReactHtmlParser(decodeURI(component.html));
  }
  if(typeof component !== "object"){
    return component;
  }
  let props = component.attribs;
  if(Array.isArray(props) && props.length === 0){
    props = {};
  }
  if(props.title){
    props.title = decodeURI(props.title);
  }
  if(typeof props.value === "string"){
    props.value = decodeURI(props.value);
  }
  if(typeof props["data-val"] === "string"){
    props["data-val"] = decodeURI(props["data-val"]);
  }
  if(typeof props.onClick === "string"){
    props.onClick = eval(decodeURI(props.onClick));
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
      if(value) setShinyValue(decodeURI(value));
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
          if(value) setShinyValue(decodeURI(value));
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
          if(value) setShinyValue(decodeURI(value));
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
          if(value) setShinyValue(decodeURI(value));
          setDisabled(true);
          setIsOpen(false);
        }
      },
      CancelIconButton: {
        ref: cancelRef,
        onClick: onCloseButton
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
  }
  if(component.name === "Menu" && patch.process){
    let selected = getMenuSelection(component);
    if(selected){
      makeMenuComponent(component);
      patch.process = false;
      let code = "setTimeout(function(){Shiny.setInputValue('" + 
        component.attribs.id + 
        ":shinyChakraUI.widget', {value: " + 
        JSON.stringify(selected) + 
        ", widget: 'menuWithGroups'})})";
      component = {
        name: "Fragment",
        attribs: {},
        children: [
          component,
          <ScriptTag dangerouslySetInnerHTML={{__html: code}}/>
        ]
      };
    }else{
      patch = $.extend(patch, {MenuItem: {
        onClick: (e) => {
          Shiny.setInputValue(component.attribs.id, e.currentTarget.dataset.val);
        }
      }});
    }
  }
  if(props.class === "checkboxWithChildren"){
    let code = makeCheckboxWithChildren(component);
    props.className = "checkboxWithChildren";
    delete props.class;
    // let componentcopy = {
    //   name: component.name,
    //   attribs: component.attribs,
    //   children: [component.children[0], component.children[1]]
    // };
    component = {
      name: "Fragment",
      attribs: {},
      children: [
        component,
        <ScriptTag dangerouslySetInnerHTML={{__html: code}}/>
      ]
    };
  }
  if(
    component.name === "Checkbox" && 
    props.id !== undefined &&
    !["parentCheckbox", "childrenCheckbox"].includes(props.className)
  ){
    //props = $.extend(props, {isChecked: props["data-checked"][props["data-index"]]});
    props = $.extend(props, {isChecked: checkedItems[props.id], onChange: checkboxOnChange});
  }else if(component.name === "CheckboxGroup"){
    if(props.defaultValue){
      props.defaultValue = props.defaultValue.map(decodeURI);
    }
    props = $.extend(props, 
      {onChange: value => {
        Shiny.setInputValue(props.id, value);
      }}
    );
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
        value: radiogroupValues[props.id]
      }
    );
  }else if(component.name === "ScriptTag" && component.decoded !== true){
    props.dangerouslySetInnerHTML.__html = decodeURI(props.dangerouslySetInnerHTML.__html);
    component.decoded = true;
  }else if(component.name === "Input"){
    const [value, setValue] = React.useState(props.value);
    props.value = value;
    props.onChange = (event) => {
      setValue(event.target.value);
      Shiny.setInputValue(props.id, event.target.value);
    };
  }
  for(const key in props){
    if(isTag(props[key])){
      let name = props[key].name; 
      if(name[0] === name[0].toUpperCase()){
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
        newpropsChildren[i] = chakraComponent(
          component.children[i], patch, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
        );
      }
    }
    newprops.children = newpropsChildren;
      // component.children.map((x) => {
      //   return chakraComponent(
      //     x, patch, checkedItems, checkboxOnChange, radiogroupValues, setRadiogroupValues
      //   );
      // });
  }
  let tag = component.name;
  if(tag[0] === tag[0].toUpperCase()){
    if(tag === "ScriptTag"){
      console.log(component);
      console.log(newprops);
    }
    return React.createElement(ChakraComponents[tag], newprops);
  }else{
    fixTagAttribs(newprops);
    return React.createElement(tag, newprops);
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

const ChakraComponent = ({ configuration, value, setValue }) => {
  let patch = {
    MenuButton: {
      as: Button
    },
    process: true
  };
  // input elements
  // let inputs = configuration.inputs;
  // if(inputs){
  //   $(document).on('shiny:connected', function() {
  //       for(let i = 0; i < inputs.length; i++){
  //         let id = inputs[i].id;
  //         let val = inputs[i].value;
  //         Shiny.setInputValue(id, val);
  //         $("#" + id).val(val);
  //       }
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
        patch,
        checkedItems,
        checkboxOnChange,
        radiogroupValues,
        setRadiogroupValues
      )
    // }
    // </ChakraProvider>
  );
};

reactShinyInput('.chakracomponent', 'shinyChakraUI.chakracomponent', ChakraComponent);
reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput, {type: "shinyChakraUI.widget"});