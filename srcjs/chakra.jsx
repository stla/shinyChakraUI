import { reactShinyInput, hydrate } from 'reactR';
import React, { useState } from 'react';
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
const CloseButton = Button,
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
  CloseButton,
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
  MenuDivider,
  Drawer,
  DrawerBody,
  DrawerFooter,
  DrawerHeader,
  DrawerOverlay,
  DrawerContent,
  DrawerCloseButton,
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

const chakraComponent = (component, patch) => {
  let props = component.attribs;
  // if(props && typeof props.onchange === "string"){
  //   props.onChange = eval(decodeURI(props.onchange));
  // }
  for(const key in props){
    if(props[key].name){
      props[key] = hydrate(ChakraComponents, props[key]);
      //props[key] = React.createElement(ChakraComponents[props[key].name], props[key].attribs);
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
      tag = ChakraComponents[tag];
    }else{
      if(typeof component.attribs.style === "string"){
        component.attribs.style = getStyleObjectFromString(component.attribs.style);
      }
    }
    return React.createElement(tag, newprops);
  }else{
    if(component.name === undefined){
      if(component.tag){
        if(typeof component.tag.attribs.style === "string"){
          component.tag.attribs.style = getStyleObjectFromString(component.tag.attribs.style);
        }
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
  return hydrate(
    ChakraComponents, // if using components then provide them here wrapped in an object
    configuration
  )
};

reactShinyInput('.chakracomponent', 'shinyChakraUI.chakracomponent', ChakraComponent);
reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput, {type: "shinyChakraUI.widget"});