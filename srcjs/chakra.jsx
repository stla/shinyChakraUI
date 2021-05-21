import { reactShinyInput } from 'reactR';
import React, { useState } from 'react';
import { unmountComponentAtNode } from "react-dom";
import {
  ChakraProvider,
  Button,
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

//const evalComponent = new Function("React", "component", "return component");

const Fragment = React.Fragment;
const CancelButton = Button;
const OpenButton = Button;
const UnmountingButton = Button;

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
  let props = component.props;
  for(const key in props){
    if(props[key].element){
      props[key] = React.createElement(ChakraComponents[props[key].element], props[key].props);
    }
  }
  if(component.children !== undefined){
    let newprops = $.extend(props, patch[component.element]);
    newprops.children = component.children.map((x) => {return chakraComponent(x, patch);});
    return React.createElement(ChakraComponents[component.element], newprops);
  }else{
    if(component.element === undefined){
      return component;
    }else{
      return React.createElement(ChakraComponents[component.element], props);
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
  const onClose = () => {
    setIsOpen(false);
  };
  const onCloseButton = (e) => {
    setShinyValue(e.currentTarget.id);
    setIsOpen(false);
  };
  const cancelRef = React.useRef();
  const patch = {
    OpenButton: {
      onClick: () => {setIsOpen(true);}
    },
    CancelButton: {
      ref: cancelRef,
      onClick: onCloseButton
    },
    Button: {
      onClick: onCloseButton
    },
    UnmountingButton: {
      onClick: (e) => {
        setShinyValue(e.currentTarget.id);
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

const ChakraInput = ({ configuration, value, setValue }) => {
  switch (configuration.widget) {
    case "alert":
      return <ChakraAlert component={configuration.component}/>;
      break;
    case "alertdialog":
      return <ChakraAlertDialog component={configuration.component} setShinyValue={setValue} inputId={configuration.inputId}/>;
      break;
  }
//  return <input type='text' value={value} onChange={e => setValue(e.target.value)}/>;
};

reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput);