import { reactShinyInput, hydrate } from 'reactR';
import React, { useState } from 'react';
import { unmountComponentAtNode } from "react-dom";
import {
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

//const evalComponent = new Function("React", "component", "return component");

const Fragment = React.Fragment;
const CancelButton = Button;
const OpenButton = Button;
const UnmountingButton = Button;
const DisableButton = Button;
const CancelIconButton = IconButton;
const OpenIconButton = IconButton;
const UnmountingIconButton = IconButton;
const DisableIconButton = IconButton;

const ChakraComponents = {
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
  UnmountingButton,
  DisableButton,
  IconButton,
  CancelIconButton,
  OpenIconButton,
  UnmountingIconButton,
  DisableIconButton,
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
  MenuDivider
};

const chakraComponent = (component, patch) => {
  let props = component.attribs;
  // if(props && typeof props.onchange === "string"){
  //   props.onChange = eval(decodeURI(props.onchange));
  // }
  for(const key in props){
    if(props[key].name){
      props[key] = React.createElement(ChakraComponents[props[key].name], props[key].attribs);
    }
  }
  if(component.children !== undefined){
    let newprops = $.extend(props, patch[component.name]);
    // if(component.element === "MenuButton"){
    //   newprops.children = newprops.isActive ? 
    //     component.children.textWhenOpen : component.children.textWhenClose;
    // }
    if(component.name !== "MenuButton"){
      newprops.children = component.children.map((x) => {return chakraComponent(x, patch);});
    }
    return React.createElement(ChakraComponents[component.name], newprops);
  }else{
    if(component.name === undefined){
      if(component.tag){
        return hydrate(ChakraComponents, component.tag);
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
  let textWhenOpen = decodeURI(text.textWhenOpen);
  let textWhenClose = decodeURI(text.textWhenClose);
  const patch = (isOpen) => {return {
    MenuButton: {
      as: Button,
      isActive: isOpen,
      children: [isOpen ? textWhenOpen : textWhenClose]
    },
    MenuItem: {
      onClick: (e) => {
        setShinyValue(decodeURI(e.currentTarget.dataset.val));
      }
    }
  }};
  return (
    <ChakraProvider>
      <Menu closeOnSelect={closeOnSelect}>
        {({ isOpen }) => (
          chakraComponent(component, patch(isOpen))
        )}
      </Menu>
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
  }
};

const ChakraComponent = ({ configuration, value, setValue }) => {
  return hydrate(
    ChakraComponents, // if using components then provide them here wrapped in an object
    configuration
  )
};

reactShinyInput('.chakracomponent', 'shinyChakraUI.chakracomponent', ChakraComponent);
reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput, {type: "shinyChakraUI.widget"});