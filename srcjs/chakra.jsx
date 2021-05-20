import { reactShinyInput } from 'reactR';
import React, { useState } from 'react';
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

//const evalComponent = new Function("React", "component", "return component");

const Fragment = React.Fragment;
const CancelButton = Button;
const OpenButton = Button;

const ChakraComponents = {
  Fragment,
  ChakraProvider,
  Button,
  CancelButton,
  OpenButton,
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
  if(component.children !== undefined){
    let props = $.extend(component.props, patch[component.element]);
    props.children = component.children.map((x) => {return chakraComponent(x, patch);});
    return React.createElement(ChakraComponents[component.element], props);
  }else{
    if(component.element === undefined){
      return component;
    }else{
      return React.createElement(ChakraComponents[component.element], component.props);
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

 const ChakraAlertDialog = ({component, setShinyValue}) => {
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
    AlertDialog: {
      isOpen: isOpen,
      leastDestructiveRef: cancelRef,
      onClose: onClose
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
      return <ChakraAlertDialog component={configuration.component} setShinyValue={setValue}/>;
      break;
  }
//  return <input type='text' value={value} onChange={e => setValue(e.target.value)}/>;
};

reactShinyInput('.chakra', 'shinyChakraUI.chakra', ChakraInput);