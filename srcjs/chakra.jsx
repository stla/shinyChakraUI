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
  Portal,
  RangeSlider,
  RangeSliderTrack,
  RangeSliderFilledTrack,
  RangeSliderThumb,
  Icon
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

const AcastTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M256 64a192 192 0 1039 380l152-212c-12-95-93-168-191-168zm8 74c76 0 113 37 113 71l-93 134c-12 19-40 33-68 33-48 0-79-23-79-58 0-64 106-68 145-68v-42c0-8 0-24-19-24-17 0-18 11-18 14l2 14c0 14-18 24-45 24-29 0-47-15-47-39 0-30 39-59 109-59zm-28 169c0 13 8 20 21 20s23-10 23-22l1-31c-30 0-45 15-45 33z" />
  </Icon>
);
const AccessTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#155196" />
    <g fill="#fff">
      <path d="M194 128a36 36 0 10-39-36c0 6 2 12 4 18l13 180h132l54 126 71-28-11-26-40 15-52-121-123 1-1-23h88v-34h-92z" />
      <path d="M327 386a133 133 0 01-251-59c0-52 31-99 77-120l3 39a96 96 0 0052 177c49 0 90-37 95-85z" />
    </g>
  </Icon>
);
const AdobeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" fill="#ed2224" rx="15%" />
    <path fill="#fff" d="M296,120h114v272zm-80,0h-114v272zm39,99-48,118h52l23,55h46z" />
  </Icon>
);
const AirbnbTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ff5a5f" />
    <path fill="none" stroke="#fff" stroke-width="23" d="M255 84c-29 0-41 24-41 24-36 66-68 133-101 203 0 0-26 51 15 84 57 45 110-22 127-39s48-56 48-100c0 0-1-44-48-44s-49 44-49 44c0 41 32 83 49 100 17 18 71 85 129 39 36-29 13-84 13-84-31-68-67-143-100-203 0 0-10-24-42-24z" />
  </Icon>
);
const AmazonTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f90" />
    <path fill="#fff" d="M283 187c-62 2-121 19-121 81 0 43 26 64 61 64 31 0 51-12 68-30 8 11 10 16 24 27 3 2 8 2 10-1l31-27c4-3 2-8 0-10-7-11-15-19-15-39v-64c0-27 2-52-18-70-17-16-38-20-62-21-53-1-88 28-93 62-1 6 4 9 7 9l37 5c6 1 9-4 10-8 6-22 29-28 43-23 20 6 18 29 18 45zm-36 105c-15 0-25-13-25-30 1-36 29-42 61-42v18c0 32-17 54-36 54zm168 106c13-11 26-38 25-57 0-7-1-8-8-10-13-4-46-5-62 10-3 3-2 5 1 5 11-2 45-6 50 2 4 7-8 35-12 47-2 5 2 6 6 3zM58 342c96 91 247 94 345 25 7-4 0-12-6-9a376 376 0 0 1-335-21c-4-3-8 2-4 5z" />
  </Icon>
);
const Amazon_alexaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#00caff" d="M256 64a192 192 0 00-26 382v-39c0-11-7-21-17-24a134 134 0 11177-122v1a141 141 0 010 5v1a126 126 0 010 3 130 130 0 010 4v2c-18 108-159 169-160 169a194 194 0 0026 2 192 192 0 000-384" />
  </Icon>
);
const Amazon_s3TinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#e05243" d="M260 348l-137 33V131l137 32z" />
    <path fill="#8c3123" d="M256 349l133 32V131l-133 32v186" />
    <g fill="#e05243">
      <path id="a" d="M256 64v97l58 14V93zm133 67v250l26-13V143zm-133 77v97l58-8v-82zm58 129l-58 14v97l58-29z" />
    </g>
    <use fill="#8c3123" transform="rotate(180 256 256)" href="#a" />
    <path fill="#5e1f18" d="M314 175l-58 11-58-11 58-15 58 15" />
    <path fill="#f2b0a9" d="M314 337l-58-11-58 11 58 16 58-16" />
  </Icon>
);
const AmberframeworkTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M87 161l169-95-125 206-44 79z" fill="#f3c095" />
    <path d="M256 446L87 351l44-79L256 66l169 95v190z" fill="#fffefc" />
    <path d="M87 351l44-79 125 174zM316 358l-185-86 240-69z" fill="#e67e25" />
    <g fill-opacity=".9">
      <path d="M256 446L131 272l185 86z" fill="#e57d25" />
      <path d="M316 358l55-155 54 148z" fill="#e67e26" />
    </g>
    <g fill-opacity=".8">
      <path d="M131 272L256 66l115 137z" fill="#e68025" />
      <path d="M87 351V161l44 111z" fill="#e47e27" />
      <path d="M256 446l60-88 109-7z" fill="#e68025" />
    </g>
    <path d="M425 351l-54-148 54-42z" fill="#e67e25" />
    <path d="M371 203L256 66l169 95z" fill="#e67e24" />
  </Icon>
);
const AndotpTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <defs>
      <filter id="b">
        <feGaussianBlur stdDeviation="3" />
      </filter>
    </defs>
    <use filter="url(#b)" fill="#666" href="#a" transform="translate(2,2)" />
    <g fill="#6abf69">
      <circle id="a" r="192" cy="256" cx="256" />
    </g>
    <path fill="#fc0" d="M256 117a139 139 0 00-139 139 139 139 0 00139 139 139 139 0 00139-139 139 139 0 00-139-139zm0 38c45 0 85 30 97 73H159c12-43 52-73 97-73zm0 115a20 20 0 0120 20 20 20 0 01-12 18l16 36h-48l15-36a20 20 0 01-11-18 20 20 0 0120-20z" />
  </Icon>
);
const AndroidTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m338.1555 305.70985a14.86683 14.86683 0 1 1 14.8641-14.86963 14.88644 14.88644 0 0 1 -14.8641 14.86963m-164.311 0a14.86683 14.86683 0 1 1 14.864-14.86963 14.883638 14.883638 0 0 1 -14.864 14.86963m169.642-89.54555 29.7085-51.45542a6.1820238 6.1820238 0 1 0 -10.704-6.18821l-30.0839 52.10534c-23.0047-10.49951-48.8417-16.34595-76.4099-16.34595s-53.4024 5.85485-76.4072 16.34595l-30.081-52.10534a6.1811349 6.1811349 0 1 0 -10.7068 6.1798l29.7113 51.46383c-51.0156 27.7475-85.9094 79.39341-91.0135 140.41269h357c-5.1097-61.01928-40.0007-112.66519-91.0135-140.41269" fill="#3ddc84" />
  </Icon>
);
const AngellistTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M342 230c39 4 47 43 47 75 0 65-33 128-95 154-51 21-114 13-155-25-25-22-39-51-40-84 0-30 15-49 44-57-3-8-9-19-9-28 0-18 20-40 38-40 9 0 17 3 24 8-15-58-75-175-5-181 34-3 69 125 78 153 11-26 45-145 80-145 66 0 7 130-7 170zM138 348c13 13 22 41 45 41 29-3-18-76-39-76-17 0-26 21-26 36 0 38 31 74 65 89 50 23 111 12 149-29 33-37 43-88 34-136-3-24-35-29-54-33-23-6-47-8-71-8-30 0-17 36 3 44 26 9 55 9 83 9 6 0 9 6 9 12-13 10-30 13-43 23a79 79 0 00-34 86c2 7 4 14 4 21-26 0-27-37-27-54-5 5-13 4-20 3 4 18-5 38-27 38-24 0-55-26-55-52 0-4 1-11 4-14zm86 6c35 0-8-67-15-77-10-17-28-38-46-20s7 50 19 65c10 14 23 32 42 32zm28-140l-32-87c-4-12-18-56-32-56-26 0-7 51-4 62 7 22 17 51 31 85 10-7 26-6 37-4zm32 88c-15 0-32-2-45-8 5 13 10 24 13 38 9-12 20-22 32-30zm39-77c13-34 22-64 30-86 3-10 22-59-1-59-17 0-32 43-36 56l-29 82 36 7z" />
  </Icon>
);
const AngularTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#c3002f">
      <path id="a" d="M256 65v42l111 249h-42l-22-55h-47v146l151-84 27-235-178-63zm0 123v78h33l-33-78z" />
    </g>
    <use fill="#dd0031" href="#a" transform="matrix(-1,0,0,1,512,0)" />
  </Icon>
);
const AnsibleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="217" fill="#1A1918" />
    <path d="M259.7 171.4l56.2 138.9-85-67 28.8-72zm100 170.9L273 133.9a14 14 0 0 0-13.4-9.2c-6 0-11.3 3.2-13.8 9.2l-95 228.6h32.5l37.6-94.3L333.2 359c4.5 3.7 7.8 5.3 12 5.3 8.5 0 16-6.3 16-15.5 0-1.5-.6-3.9-1.6-6.4z" fill="#FFF" />
  </Icon>
);
const ApereoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m231,96c-97,0-171,97-150,203 30,104 162,142 258,80-15-32 0-66-21-99-36,68-112,93-165,19-32-57 6-112 36-125 82-42 120,13 205-10 10-4 23-30 32-46-72,13-116-15-179-22z" fill="#344" />
    <path d="m313 191c27 4 57 4 80-4 10 95-21 122 40 226-19-10-42-15-48-15-6 4-17 11-23 17-65-74-36-175-51-224z" fill="#6bc" />
  </Icon>
);
const AppleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#555" />
    <path fill="#f2f2f2" d="M410 334s-10 29-30 59c-5 9-29 43-58 43-21 0-35-15-62-15-33 0-46 15-67 15-11 1-22-5-34-16-77-73-81-181-52-225 18-29 48-47 81-48 26 0 54 17 65 17 8 0 50-20 74-18 33 3 56 15 73 38-49 24-66 117 10 150zM329 56c8 32-27 93-79 90-3-43 34-87 79-90z" />
  </Icon>
);
const Apple_musicTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="url(#g)" />
    <linearGradient id="g" x1=".5" y1=".99" x2=".5" y2=".02">
      <stop offset="0" stop-color="#FA233B" />
      <stop offset="1" stop-color="#FB5C74" />
    </linearGradient>
    <path fill="#fff" d="M199 359V199q0-9 10-11l138-28q11-2 12 10v122q0 15-45 20c-57 9-48 105 30 79 30-11 35-40 35-69V88s0-20-17-15l-170 35s-13 2-13 18v203q0 15-45 20c-57 9-48 105 30 79 30-11 35-40 35-69" />
  </Icon>
);
const Arch_linuxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M256 72c-14 35-23 57-39 91 10 11 22 23 41 36-21-8-35-17-45-26-21 43-53 103-117 220 50-30 90-48 127-55-2-7-3-14-3-22v-1c1-33 18-58 38-56 20 1 36 29 35 62l-2 17c36 7 75 26 125 54l-27-50c-13-10-27-23-55-38 19 5 33 11 44 17-86-159-93-180-122-250z" fill="#1793d1" />
  </Icon>
);
const Auth0TinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M358.1 378.8L319.6 260L420.5 186.9H295.7l-38.6-118.7l-.01-.03h124.8l38.6 118.7v-.003l0.03-.02c22.4 68.8-.7 147 -62.4 192zm-201.9 0l-.036 .03L257.13 452.2L358.09 378.84L257.17 305.51ZM93.85 186.85c-23.57 72.57 3.79 149.46 62.36 192l0.01-.036L194.77 260.17L93.89 186.87H218.6L257.15 68.2L257.2 68.2H132.4Z" fill="#eb5424" />
  </Icon>
);
const AuthyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ec1c24" />
    <path fill="none" stroke="#fff" stroke-width="46" stroke-linecap="round" d="M333 131l65 65c35 36 35 96 0 134-34 34-99 36-132 4l-68-69m-19 116l-65-65a97 97 0 0 1 0-134c34-35 98-36 131-4l69 69" />
  </Icon>
);
const BackboneTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g stroke="#848484" stroke-width="2">
      <path d="M380 102v167l-124 70v-48l83-47v-74l-83 47v-44l124-71" />
      <path fill="#002a41" d="M132 102v167l124 70v-48l-83-47v-74l83 47v-44l-124-71M380 410V243l-124-70v48l83 47v71l-83-48v48l124 71" />
      <path d="M132 410V243l124-70v48l-83 47v71l83-48v48l-124 71" />
    </g>
  </Icon>
);
const BadooTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#7000e3" />
    <path fill="#ff671b" d="M256 160a102 105 0 0 0-183 61c0 92 122 208 183 208s183-116 183-208c0-56-45-102-101-102-33 0-63 15-82 41z" />
  </Icon>
);
const BaiduTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m131 251c41-9 35-58 34-68-2-17-21-45-48-43-33 3-37 50-37 50-5 22 10 70 51 61m76-82c22 0 40-26 40-58s-18-58-40-58c-23 0-41 26-41 58s18 58 41 58m96 4c31 4 50-28 54-53 4-24-16-52-37-57s-48 29-50 52c-3 27 3 54 33 58m120 41c0-12-10-47-46-47s-41 33-41 57c0 22 2 53 47 52s40-51 40-62m-46 102s-46-36-74-75c-36-57-89-34-106-5-18 29-45 48-49 53-4 4-56 33-44 84 11 52 52 51 52 51s30 3 65-5 65 2 65 2 81 27 104-25c22-53-13-80-13-80" fill="#2319dc" />
    <path d="m214 266v34h-28s-29 3-39 35c-3 21 4 34 5 36 1 3 10 19 33 23h53v-128zm-1 107h-21s-15-1-19-18c-3-7 0-16 1-20 1-3 6-11 17-14h22zm38-70v68s1 17 24 23h61v-91h-26v68h-25s-8-1-10-7v-61z" fill="#fff" />
  </Icon>
);
const BandcampTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#1ad" d="M99 349h215l99-186H198" />
  </Icon>
);
const BehanceTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#4175fa" />
    <path d="m346.12 211.86c-73.376 0-73.471 73.1-73.471 73.476 0 0-5.027 73.191 73.471 73.191 0 0 65.465 3.722 65.465-50.938h-33.615s1.114 20.578-30.731 20.578c0 0-33.616 2.237-33.616-33.244h99.081s10.896-83.063-66.584-83.063zm-32.873 57.454s4.099-29.427 33.62-29.427c29.613 0 29.146 29.427 29.146 29.427h-62.766zm-83.987-18.807s29.146-2.142 29.146-36.41c0-34.173-23.838-50.938-54.103-50.938h-99.551v191.36h99.542s60.81 1.866 60.81-56.521c5e-3 0 2.613-47.491-35.844-47.491zm-80.645-53.361h55.684s13.504 0 13.504 19.926-7.916 22.815-16.95 22.815h-52.238v-42.741zm52.894 123.39h-52.894v-51.218h55.684s20.211-.186 20.116 26.352c0 22.353-14.99 24.68-22.906 24.866zm103.45-146.1v23.562h78.969v-23.562h-78.969z" fill="#fff" />
  </Icon>
);
const BingTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M145,73l73,26V356l103-59-50-24-32-79,162,57v83L218,439l-73-41Z" fill="#008373" />
  </Icon>
);
const BitbucketTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#2684ff" d="M422 130a10 10 0 00-9.9-11.7H100.5a10 10 0 00-10 11.7L136 409a10 10 0 009.9 8.4h221c5 0 9.2-3.5 10 -8.4L422 130zM291 316.8h-69.3l-18.7-98h104.8z" />
    <path fill="url(#a)" d="M59.632 25.2H40.94l-3.1 18.3h-13v18.9H52c1 0 1.7-.7 1.8-1.6l5.8-35.6z" transform="translate(89.8 85) scale(5.3285)" />
    <linearGradient id="a" x2="1" gradientTransform="rotate(141 22.239 22.239) scale(31.4)" gradientUnits="userSpaceOnUse">
      <stop offset="0" stop-color="#0052cc" />
      <stop offset="1" stop-color="#2684ff" />
    </linearGradient>
  </Icon>
);
const BitcoinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f7931a" />
    <path fill="#fff" d="m391 216c6-43-25-64-68-79l14-55-34-9-13 54-28-7 14-54-35-9-13 56-22-5-47-12-8 36 24 6c14 4 17 14 15 21l-15 63 3 1-3-1-22 89c-2 5-6 11-16 8l-24-6-17 39 68 17-13 57 33 8 14-55 26 6-13 55 34 9 14-56c58 11 102 6 120-46 14-42-1-66-32-82 22-5 39-20 44-49zm-77 108c-11 41-82 20-105 14l19-75c23 6 97 17 86 61zm9-110c-9 39-67 20-87 15l17-68c20 5 81 14 70 53z" />
  </Icon>
);
const BitwardenTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#175DDC" />
    <path fill="#fff" d="M372 297V131H256v294c47-28 115-74 116-128zm49-198v198c0 106-152 181-165 181S91 403 91 297V99s0-17 17-17h296s17 0 17 17z" />
  </Icon>
);
const BloggerTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#FF5722" />
    <path fill="#fff" d="M95 184c0-51 41-93 93-93h86c64 0 103 61 85 126 0 0 61-3 66 58v53c0 46-34 93-93 93H183c-49 0-88-39-88-88z" />
    <path stroke="#FF5722" stroke-width="55" d="M199 188h68m-74 129h133" />
  </Icon>
);
const BluetoothTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0082FC" />
    <path fill="none" stroke="#fff" stroke-width="33" d="M151 154l190 191-87 90V78l87 93-190 192" />
  </Icon>
);
const BraveTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a">
      <stop stop-color="#f50" />
      <stop offset="1" stop-color="#f20" />
    </linearGradient>
    <path d="M416 158l9-23c-24-25-33-43-72-34l-35-40H194l-35 40c-38-3-45 6-72 34l10 23-12 34 39 150c8 32 14 45 37 61l72 49c7 4 16 12 23 12 8 0 16-8 23-12l72-49c23-16 29-29 37-61l40-150" fill="url(#a)" />
    <path d="M343 127s45 54 45 66c-3 21-30 42-45 57-17 16 6 35-3 51-6 12-17 20-24 19-15-8-53-21-55-40 2-18 42-22 44-36 0-13-18-31-17-44 8-14 44-24 59-29 2-2 2-3-6-3-17-2-52-3-66 8-4 16 17 68 4 71-19 5-26 3-45 0-13-8 11-52 3-71-19-12-45-11-66-8-7 0-8 1-6 3 14 7 57 14 59 29 1 17-17 29-17 44 7 15 43 20 45 35-7 20-38 36-55 41-7 1-18-7-25-19-10-20 14-38-3-51-13-15-45-41-45-57 0-12 45-66 45-66l43 7c5 0 17-5 27-8s17-3 17-3 7 0 17 3 22 8 27 8l43-7m-35 216-52 39c-18-12-37-28-52-39-8-9 13-15 22-20 10-5 20-9 30-11 10 3 20 6 30 11 9 4 30 13 22 20" fill="#fff" />
  </Icon>
);
const BriarTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#87c214">
      <path id="a" d="m145.7 224V409.2c0 15 12.2 27.4 27.4 27.4H186c15 0 27.4-12.4 27.4-27.4V224zm67.7-89.5v-34.5c0-15.4-12.4-27.8-27.4-27.8H173.1c-15 0-27.4 12.4-27.4 27.8v34.5z" />
      <use href="#a" transform="rotate(180,256,256)" />
    </g>
    <g fill="#95d220">
      <use href="#a" transform="rotate(90,256,256)" />
      <use href="#a" transform="rotate(270,256,256)" />
    </g>
  </Icon>
);
const BufferTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#000" />
    <path d="M84 166q-7.5-4.5 0-9l162-75q10-4.5 20 0l162 75q7.5 4.5 0 9l-162 75q-10 4.5-20 0z" />
    <path id="a" d="M84 251q-7.5 5 0 10l162 75q10 3 20 0l162-75q7.5-5 0-10l-32-14q-10.5-4.5-21 0l-109 50q-10 4.5-20 0l-109-50q-10.5-4.5-21 0z" />
    <use transform="translate(0 94)" href="#a" />
  </Icon>
);
const BugcrowdTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f26922" d="m38.5 260.4 107.1 185.1h219.5l109.1-185.1L365.1 66.5H145.6zm178.7-115.7c7.6 4.7 8.1 8.3 8.1 47v31.2l6.8-6.2c3.8-3.4 11.1-8.1 16.3-10.7c8.4-3.9 11.6-4.4 26.6-4.2c18.2 0 28.5 3 41.6 12.2c13.5 9.5 25.7 31.1 29.1 51.2c7.3 44.7-9.2 83.6-42.2 99.3c-10.9 5.1-12.7 5.4-30.2 5.4c-16.5 0-19.8-.5-28.1-4.4c-5.1-2.4-12.2-7.2-15.6-10.4l-6.5-5.9v18.1h-38.6V273c0-51.9-.5-94.9-1.2-95.5c-.6-.7-5.2-1.7-10-2.2l-8.8-.9V158.6c-.2-11.1.5-16.2 1.8-17c1.2-.7 11.9-1 23.7-.9c18.5.4 22.2.9 27.2 4zM258 236.4c-22.3 5.2-33.9 22.7-33.5 50.9c.2 28 14.6 47.6 36 49.1c13.8 1 22.5-1.9 31.3-10.7c18.4-18 19-59.2 1.4-77.9c-8.9-9.3-23.7-14.1-35.2-11.4z" />
  </Icon>
);
const CalendarTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <defs>
      <clipPath id="c">
        <rect width="512" height="512" rx="15%" />
      </clipPath>
    </defs>
    <g clip-path="url(#c)">
      <rect width="512" height="512" fill="#dee" />
      <rect width="512" height="180" fill="#d34" />
    </g>
    <g id="b">
      <circle fill="#eab" cx="384" cy="100" r="14" id="a" />
      <use x="43" href="#a" />
      <use x="86" href="#a" />
    </g>
    <use y="43" href="#b" />
    <text font-size="64" x="256" y="480" id="w">Sunday</text>
    <text fill="#fff" font-size="140" x="140" y="164" id="m">FEB</text>
    <text font-size="256" x="256" y="400" id="d">29</text>
  </Icon>
);
const CentosTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g id="g">
      <rect x="118" y="118" fill="#9ccd2a" width="124" height="124" />
      <rect x="270" y="118" fill="#932279" width="124" height="124" />
      <rect x="270" y="270" fill="#efa724" width="124" height="124" />
      <rect x="118" y="270" fill="#262577" width="124" height="124" />
    </g>
    <use href="#g" transform="rotate(225 256 256)" />
    <path fill="none" stroke="#fff" stroke-width="9" d="m236 256-87 88-88-88 88-88zm6-14H118V118H242zm0 28V394H118V270zm14-34-88-87 88-88 88 88zm0 40-88 87 88 88 88-88zm14-34V118H394V242zm0 28H394V394H270zm6-14 87 88 88-88-88-88z" />
  </Icon>
);
const ChromeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <path d="M256 140h228A256 256 0 0 1 244 511.7" fill="#fc4" />
    <path d="M357 314 244 511.7A256 256 0 0 1 40 118" fill="#0f9d58" />
    <path d="M256 140h228A256 256 1 0 0 40 118L155 314" fill="#db4437" />
    <circle cx="256" cy="256" r="105" fill="#4285f4" stroke="#f1f1f1" stroke-width="24" />
  </Icon>
);
const ChromiumTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <path fill="#a2c2fa" d="M256 140h228a256 256 0 01-240 371.7" />
    <path fill="#6199f6" d="M357 314L244 511.7A256 256 0 0140 118" />
    <path fill="#396bd7" d="M256 140h228a256 256 1 00-444-22l115 196" />
    <circle cx="256" cy="256" r="105" fill="#4687f4" stroke="#f1f1f1" stroke-width="24" />
  </Icon>
);
const CitrixTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m390 266-29 35c-5 5-13-2-8-7l31-35-30-35c-5-5 2-13 8-7l29 34 29-34c5-6 13 1 7 7l-30 35 31 35c5 5-2 12-8 7l-30-35z" />
    <circle cx="390.5" cy="194.5" r="8.7" />
    <path d="M323 221c0-8 10-8 10 0v76c0 8-11 8-10 0v-76zm-17 6c-3 0-6-4-13-3-12 0-19 10-19 23v50c0 8-11 8-11 0v-76c0-8 11-8 11 0v2c5-6 12-10 20-10 5 0 10 2 15 4 5 3 2 10-3 10zm-79 70c0 8-11 8-11 0V192c0-8 11-8 11 0v24h19c7 0 7 10 0 10h-19v71zm-45-76c0-8 11-8 11 0v76c0 8-11 8-11 0v-76z" />
    <circle cx="187.8" cy="194.5" r="8.7" />
    <path d="M82 259c0-27 18-45 43-45 28-1 38 19 38 25s-8 8-11 1c-4-10-14-17-26-17-19 0-33 15-33 36s13 35 32 35c13 0 22-6 27-19 3-6 11-4 11 2 0 9-12 27-38 27-25 0-43-18-43-45z" />
  </Icon>
);
const Citrix_compactTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect rx="15%" height="512" width="512" fill="#fff" />
    <path d="M346.2 340.2A12.6 12.6 0 0 1 345 358a12.7 12.7 0 0 1-17.8-1.2l-69.8-80.3-69.8 80.3a12.6 12.6 0 0 1-19-16.6l72.1-82.9-72.1-82.9a12.6 12.6 0 0 1 19-16.6l69.8 80.3 69.8-80.3a12.6 12.6 0 0 1 19 16.6l-72.1 82.9 72.1 82.9zm-88.8-251a20.1 20.1 0 0 0 0 40.2 20.1 20.1 0 0 0 0-40.2z" />
  </Icon>
);
const ClojureTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M48 107a256 256 0 0 1 464 149c0 135-142 116-142 116a163 163 0 0 0-179-265c-79-45-143 0-143 0" fill="#466acd" />
    <path d="M465 404a256 256 0 0 1-464-149c0-135 142-116 142-116a163 163 0 0 0 179 265c79 45 143 0 143 0" fill="#53a526" />
    <path d="M213 128a135 135 0 0 1 123 237c-37 3-68-108-73-125s-19-79-50-112" fill="#71aefd" />
    <path d="M176 365a135 135 0 0 1 2-220c36 19 59 90 59 90 0 0-54 102-61 130m33 18c0 0 38 18 89 2-30-25-48-111-53-123-7 14-43 87-36 121" fill="#81d837" />
  </Icon>
);
const CloudflareTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f38020" d="M331 326c11-26-4-38-19-38l-148-2c-4 0-4-6 1-7l150-2c17-1 37-15 43-33 0 0 10-21 9-24a97 97 0 0 0-187-11c-38-25-78 9-69 46-48 3-65 46-60 72 0 1 1 2 3 2h274c1 0 3-1 3-3z" />
    <path fill="#faae40" d="M381 224c-4 0-6-1-7 1l-5 21c-5 16 3 30 20 31l32 2c4 0 4 6-1 7l-33 1c-36 4-46 39-46 39 0 2 0 3 2 3h113l3-2a81 81 0 0 0-78-103" />
  </Icon>
);
const CodebergTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <defs>
      <linearGradient id="A" x1="259.804" x2="383.132" y1="161.4" y2="407.835" gradientUnits="userSpaceOnUse">
        <stop offset="0" stop-color="#fff" stop-opacity="0" />
        <stop offset=".5" stop-color="#71c2ff" />
        <stop offset="1" stop-color="#39aaff" />
      </linearGradient>
    </defs>
    <path fill="url(#A)" d="M259.804 161.4c-.44 0-1.1 0-1.32.44l-.44 1.1L332.04 440.21a192.039 192.039 0 0 0 86.77-74.437L261.125 162.06a1.762 1.762 0 0 0-1.321-.661z" opacity=".5" paint-order="stroke markers fill" />
    <path fill="#2185d0" d="M255.3 71.8a192 192 0 0 0-162 294l160.1-207c.5-.6 1.5-1 2.6-1s2 .4 2.6 1l160 207a192 192 0 0 0 29.4-102c0-106-86-192-192-192a192 192 0 0 0-.7 0z" paint-order="stroke markers fill" />
  </Icon>
);
const CodepenTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#111" />
    <g fill="none" stroke="#e6e6e6" stroke-width="33" stroke-linejoin="round">
      <path d="M81 198v116l175 117 175-117V198L256 81z" />
      <path d="M81 198l175 116 175-116M256 81v117" />
      <path d="M81 314l175-116 175 116M256 431V314" />
    </g>
  </Icon>
);
const CoffeescriptTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M114 137c-85 34 40 64 147 64s218-27 152-61c23 27-54 45-152 45s-181-21-147-48m65 120c-83-58-132 82-28 98c-127 40-99-152 9-115m-73-49c29 39 284 56 347 0c-22 123-64 114-83 184c-29 45-162 38-180 0c-12-53-57-60-84-184m121-63c21-13-47-20-47 4s46 36 85 11c20-13 59-23 76-14s-31 30-39 9c-26 4-14 22 18 22s46-6 47-22s-24-28-53-28c-58 0-65 29-98 32c-16 1-25-2-25-9s28-9 36-5" />
  </Icon>
);
const CoilTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path fill="#000" d="M423 377c0 35-83 71-140 71-70 0-136-37-170-98-16-28-24-60-24-92 0-37 11-74 32-106 17-25 48-59 104-77 14-5 39-11 67-11 79 0 129 55 129 103 0 33-27 80-93 80-30 0-41-13-41-27 0-20 18-42 32-42 6 0 9 6 20 4s16-9 16-17c0-17-20-39-62-39-14 0-29 2-48 8-38 11-58 38-69 55a127.4 127.4 0 0 0-6 130c22 40 66 64 113 64 65 0 83-35 96-40 23-10 44 18 44 34z" />
  </Icon>
);
const CoinpotTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#e0e0e0" />
    <defs>
      <g id="c">
        <path d="M0 0h84v13Q42 18 0 13" fill="#ffd54e" />
        <ellipse cx="42" rx="42" ry="3" fill="#c6a900" />
      </g>
    </defs>
    <g transform="translate(78,255)">
      <g id="s">
        <use href="#c" />
        <use y="18" href="#c" />
        <use y="36" href="#c" />
        <use y="54" href="#c" />
        <use y="72" href="#c" />
      </g>
    </g>
    <use x="174" y="202" href="#s" />
    <use x="174" y="256" href="#s" />
    <use x="269" y="173" href="#s" />
    <use x="269" y="245" href="#s" />
    <path d="M62 328C152 366 261 332 385 233v150H62" fill="#e0e0e0" />
    <path d="M62 335C152 373 261 339 385 240l-13-10l77-28l-17 73l-13-11C203 413 132 367 62 335" fill="#03a9f3" />
  </Icon>
);
const ColaboratoryTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path style="fill:#ffc107" d="m46.7 151.5a147.8 147.8 90 000 208.9L97 310.1a76.6 76.6 90 01-.1-108.3zm368.4 50.3A76.6 76.6 90 01306.7 310.2L256 360.5a147.8 147.8 90 00209.3-209z" />
    <path style="fill:#ffd836" d="m96.9 201.8a76.6 76.6 90 01108.4 0l36.5-62.5A147.8 147.8 90 0046.7 151.5zm108.3 108.4a76.6 76.6 90 01-108.4 0l-50.1 50.3a147.8 147.8 90 00195.2 12zm101.1-.1a76.6 76.6 90 11108.4-108.4l50.6-50.2A147.8 147.8 90 00256 360.4z" />
  </Icon>
);
const CplusplusTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#004482" d="M270.3 445l141.1-81.4c4.1-2.3 7.8-6.4 10.4-11l-166.3-96-166.3 96c2.7 4.6 6.4 8.7 10.4 11L240.8 445c8.1 4.7 21.4 4.7 29.5 0z" />
    <path fill="#659AD2" d="M421.8 160.5c-2.7-4.6-6.4-8.7-10.4-11L270.3 68c-8.1-4.7-21.4-4.7-29.6 0l-141 81.5c-8.1 4.7-14.8 16.2-14.8 25.6V338c0 4.7 1.7 9.9 4.3 14.6l166.3-96 166.3-96.1z" />
    <circle cx="256" cy="256" r="86" fill="none" stroke="#fff" stroke-width="57" />
    <path fill="#00599C" d="M421.8 352.6c2.7-4.6 4.3-9.9 4.3-14.6V175.2c0-4.7-1.7-10-4.3-14.7l-166.3 96.1 166.3 96z" />
    <path stroke="#fff" stroke-width="13" d="M350.5 237 v39 M331,257 h39  M397.5 237 v39 M378,257 h39" />
  </Icon>
);
const CrystalTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m46 200 56 210 210 56 154-154-56-210-210-56zm11 3 205-55-55 205z" />
  </Icon>
);
const Css3TinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <path fill="#264de4" d="M72 460L30 0h451l-41 460-184 52" />
    <path fill="#2965f1" d="M256 37V472l149-41 35-394" />
    <path fill="#ebebeb" d="m114 94h142v56H119m5 58h132v57H129m3 28h56l4 45 64 17v59L139 382" />
    <path fill="#fff" d="m256 208v57h69l-7 73-62 17v59l115-32 26-288H256v56h80l-5.5 58Z" />
  </Icon>
);
const DartTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m93.6 294.2c-10-13.3-9.5-27.5-.8-42.3l51.3-107.2 8.1 208.6z" fill="#01579b" />
    <path d="m365.2 363.9-200.9 1.6 59.7 60.3 141.1.4z" fill="#40c4ff" />
    <path d="m297.6 99c-14.2-15.4-31.6-17.1-52.1-5.7l-101.4 51.4v184.5c-.5 9.2 2.6 18.8 8.1 24.2l12.3 12.2h200.7l61 .3v-138.8z" fill="#2cb7f6" />
    <path d="m426.1 225.9-72.4-70.9c-7.5-7.1-15.5-10.4-24-10.3h-185.6l221.1 220.9h60.9z" fill="#01579b" />
  </Icon>
);
const DatacampTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#05192d" />
    <path fill="#03EF62" d="m273.2 378.4v-95.3l150.4-85.8-36.6-20.9-113.8 64.9v-95.7c0-6.4-3.5-12.5-9.1-15.7L127.2 51.3a26.1 26.1 90 00-26.5.8A26.1 26.1 90 0088.4 74.4v268.9c0 9.1 4.6 17.5 12.3 22.3a26 26 90 0026.5.8l109.7-62.6V389c0 6.5 3.6 12.6 9.2 15.8l140.7 80.1 36.6-21-150.2-85.5zm-36.3-222.2V262l-112.2 64V91.8l112.2 64.4z" />
  </Icon>
);
const DebianTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M388 225c.4 11-3 17-6 27-10 3-8 14-9 17-6 3-35 34-25 17-10 7-8 10-24 15l-.4-1c-39 18-94-18-94-68-.4 3-1 2-2 3-1-56 64-88 102-54-25-29-78-31-96 4-10 6-12 26-16 29-5 88 75 145 150 78 8-6 16-16 19-17-3 5.7.6 2-2 7 6-10 1-31 12-16.2.8-19 22-58 11-23 3-12 1-36 6-14-3-12 3-21 5-28-6-15-18-43-4-23-29-60 1-35 12 5-1-10.81-4.9-21.2-8-31 2 1-4-22 3-6-9-33-38-62-65-78 18 18-52-15-69-21 12 7-61 7-20.5.8-14-1-32 4-15-5-10.8.6-25 6-21 1-21 11-85 54-67 31-23 21-37 36-49 64-79 111-2 278 123 325 11 4 29 4 44 4-17-5-20-2-37-8-12-5-15-12-24-20-.7 8-24-.5-16-10-5-.4-14-9-17-14-9 2-17-14-17-20-1 3-37-33-16-23-5-5-12-6-6-12-5-14-18-20-3-15-22-15-35-39-25-40-5-6-5-11-4-19-17-37 1-83 14-114-21 2 38-50 54-50-2-8 11-18 27-23-1-1 56-26 32-8 67-22 141 36 145 96 4 1-.5 45-1 48" fill="#d70751" />
  </Icon>
);
const DeezerTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#231f20" />
    <path stroke="#f1796e" d="M78 241h64m-64 26h64" />
    <path stroke="#ec2529" d="M78 293h64m-64 26h64m-64 26h64" />
    <path stroke="#f6dd05" d="M148 293h64m-64 26h64m-64 26h64" />
    <path stroke="#e78dcc" d="M218 241h64m-64 26h64m-64-52h64m-64-26h64" />
    <path stroke="#d81996" d="M218 293h64m-64 26h64m-64 26h64" />
    <path stroke="#d6e465" d="M288 241h64m-64 26h64" />
    <path stroke="#adda1a" d="M288 293h64m-64 26h64m-64 26h64" />
    <path stroke="#b0d8e6" d="M358 241h64m-64 26h64m-64-52h64m-64-26h64m-64-26h64" />
    <path stroke="#56bbe9" d="M358 293h64m-64 26h64m-64 26h64" />
  </Icon>
);
const DeliciousTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <clipPath id="a">
      <rect width="512" height="512" rx="15%" />
    </clipPath>
    <g clip-path="url(#a)">
      <path fill="#333" d="M512 512H0V0" />
      <path fill="#39F" d="M512 512V0H0" />
      <path fill="#fff" d="M0 0h256v256H0" />
      <path fill="#eee" d="M256 256h256v256H256z" />
    </g>
  </Icon>
);
const Dev_toTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path fill="#fff" d="M140.47 203.94h-17.44v104.47h17.45c10.155-.545 17.358-8.669 17.47-17.41v-69.65c-.696-10.364-7.796-17.272-17.48-17.41zm45.73 87.25c0 18.81-11.61 47.31-48.36 47.25h-46.4V172.98h47.38c35.44 0 47.36 28.46 47.37 47.28zm100.68-88.66H233.6v38.42h32.57v29.57H233.6v38.41h53.29v29.57h-62.18c-11.16.29-20.44-8.53-20.72-19.69V193.7c-.27-11.15 8.56-20.41 19.71-20.69h63.19zm103.64 115.29c-13.2 30.75-36.85 24.63-47.44 0l-38.53-144.8h32.57l29.71 113.72 29.57-113.72h32.58z" />
  </Icon>
);
const DigidentityTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path stroke="#00e864" d="M213 296l-96 95zm43-40h.1" />
    <path stroke="#000" d="M256 63v135m0 116v135M63 256h135m116 0h135M119 119l96 96m82 82l96 96m0-274l-96 96" />
  </Icon>
);
const DigitaloceanTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#0080ff" d="M78 373v-47h47v104h57V300h74v147A191 191 0 1065 256h74a117 117 0 11117 117" />
  </Icon>
);
const DiscordTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m386 137c-24-11-49.5-19-76.3-23.7c-.5 0-1 0-1.2.6c-3.3 5.9-7 13.5-9.5 19.5c-29-4.3-57.5-4.3-85.7 0c-2.6-6.2-6.3-13.7-10-19.5c-.3-.4-.7-.7-1.2-.6c-23 4.6-52.4 13-76 23.7c-.2 0-.4.2-.5.4c-49 73-62 143-55 213c0 .3.2.7.5 1c32 23.6 63 38 93.6 47.3c.5 0 1 0 1.3-.4c7.2-9.8 13.6-20.2 19.2-31.2c.3-.6 0-1.4-.7-1.6c-10-4-20-8.6-29.3-14c-.7-.4-.8-1.5 0-2c2-1.5 4-3 5.8-4.5c.3-.3.8-.3 1.2-.2c61.4 28 128 28 188 0c.4-.2.9-.1 1.2.1c1.9 1.6 3.8 3.1 5.8 4.6c.7.5.6 1.6 0 2c-9.3 5.5-19 10-29.3 14c-.7.3-1 1-.6 1.7c5.6 11 12.1 21.3 19 31c.3.4.8.6 1.3.4c30.6-9.5 61.7-23.8 93.8-47.3c.3-.2.5-.5.5-1c7.8-80.9-13.1-151-55.4-213c0-.2-.3-.4-.5-.4Zm-192 171c-19 0-34-17-34-38c0-21 15-38 34-38c19 0 34 17 34 38c0 21-15 38-34 38zm125 0c-19 0-34-17-34-38c0-21 15-38 34-38c19 0 34 17 34 38c0 21-15 38-34 38z" fill="#5865f2" />
  </Icon>
);
const DisqusTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#2e9fff" d="M83 387l26-65a159 159 0 1142 56zm168-52q90-6 90 -81t-89-80h-61v161zm2-39h-18v-82h18q43 2 43 40t-43 42" />
  </Icon>
);
const DjangoprojectTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#113228" />
    <path fill="#fff" d="M227 101h56v257c-29 5-50 8-73 8-69 0-104-31-104-90 0-57 37-93 96-93 9 0 16 0 25 2zm0 129c-7-2-12-3-19-3-29 0-45 18-45 48s15 46 44 46c6 0 11 0 20-2zm145-44v129c0 45-3 66-13 84-9 18-21 29-46 42l-52-25c25-11 37-22 44-37 8-16 11-34 11-83V186zm-56-85h56v57h-56z" />
  </Icon>
);
const DockerTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path stroke="#066da5" stroke-width="38" d="M296 226h42m-92 0h42m-91 0h42m-91 0h41m-91 0h42m8-46h41m8 0h42m7 0h42m-42-46h42" />
    <path fill="#066da5" d="m472 228s-18-17-55-11c-4-29-35-46-35-46s-29 35-8 74c-6 3-16 7-31 7H68c-5 19-5 145 133 145 99 0 173-46 208-130 52 4 63-39 63-39" />
  </Icon>
);
const DribbbleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="192" fill="#c32361" />
    <path d="M383 153a163 163 0 0 1 37 102c-6-1-60-13-114-6l-15-32c61-25 88-60 92-64zm-18-19c-3 4-28 37-86 59a885 885 0 0 0-62-96c57-14 113 5 148 37zm-179-26a1035 1035 0 0 1 61 94c-77 21-144 20-152 20a165 165 0 0 1 91-114zM92 251c7 0 87 1 168-23l14 28c-72 21-116 72-140 110a164 164 0 0 1-42-115zm63 135c3-6 38-72 130-103 18 42 33 108 35 124-36 17-104 25-165-21zm192 6c-1-10-10-58-31-117 51-8 96 5 102 7a163 163 0 0 1-71 110z" fill="#ea4c89" />
  </Icon>
);
const DroneTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#1E375A" d="M150 112l61 64c-9 14-14 31-14 50 0 54 39 89 89 89 18 0 35-5 50-14l62 63c-32 43-84 70-142 70-98 0-178-77-178-178 0-60 28-112 72-144zm29-17c24-11 50-17 77-17 98 0 178 77 178 178 0 28-6 54-17 77l-56-57c9-14 14-30 14-50 0-53-40-89-89-89-19 0-36 5-50 14zm107 185c-30 0-54-22-54-54s24-53 54-53 53 21 53 53-23 54-53 54z" />
  </Icon>
);
const DropboxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M158 101l-99 63 295 188 99-63m-99-188l99 63-295 188-99-63m99 83l98 63 98-63-98-62z" />
  </Icon>
);
const DrupalTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path fill="#00598e" d="M383 152a175 175 0 1 1-281 203" />
    <path fill="#0073ba" d="M243 97v-49c26 31 40 47 84 65c21 9 40 21 56 38c19 25 27 97-91 166s-155 72-190 38c-44-79-8-159 9-181" />
    <path fill="#93c5e4" d="M122 161c-71 102 146-28 115-59 24-16 6-52 6-52V86" />
    <path d="M221 104c42 7-104 105-105 75 0-15 23-38 40-50s87-29 86-79C242 50 266 88 221 104m1 171c-70 0-100 106-10 106 36 0 86-47 110-47s45 45 62 45c32 0 58-97 12-97-19 0-59 40-75 38C292 316 265 275 222 275m20 142c25 19 79 14 103-4 6-5 3-14-3-9-17 14-74 18-92 2C245 401 231 409 242 417m42-32c6-5 11-13 26-13s20 11 23 14 9-2 6-8-6-17-28-17-30 14-34 17S275 392 284 385" />
    <path stroke="#004975" fill="none" stroke-width="4" d="M186 113c31-15 53-24 57-65 26 31 40 47 84 65a175 175 0 1 1-141 0" />
  </Icon>
);
const DuckduckgoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="256" height="256" rx="15%" x="-128" y="-128" />
    <circle r="108" fill="#d53" />
    <circle r="96" fill="none" stroke="#fff" stroke-width="7" />
    <path d="M-32-55C-62-48-51-6-51-6l19 93 7 3M-39-73h-8l11 4s-11 0-11 7c24-1 35 5 35 5" fill="#ddd" />
    <path d="M25 95S1 57 1 32c0-47 31-7 31-44S1-58 1-58c-15-19-44-15-44-15l7 4s-7 2-9 4 19-3 28 5c-37 3-31 33-31 33l21 120" />
    <path d="M25-1l38-10c34 5-29 24-33 23C0 7 9 32 45 24s9 20-24 9C-26 20-1-3 25-1" fill="#fc0" />
    <path d="M15 78l2-3c22 8 23 11 22-9s0-20-23-3c0-5-13-3-15 0-21-9-23-12-22 2 2 29 1 24 21 14" fill="#6b5" />
    <path d="M-1 67v12c1 2 17 2 17-2s-8 3-13 1-2-13-2-13" fill="#4a4" />
    <path d="M-23-32c-5-6-18-1-15 7 1-4 8-10 15-7m32 0c1-6 11-7 14-1-4-2-10-2-14 1m-33 16a2 2 0 1 1 0 1m-8 3a7 7 0 1 0 0-1m52-6a2 2 0 1 1 0 1m-6 3a6 6 0 1 0 0-1" fill="#148" />
  </Icon>
);
const EaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M158 172l-21 34 137-1 21-33zm165 0l-85 134h-94l22-33h58l21-33H116l-22 33h31l-42 67h174l66-105 24 38h-21l-21 33h63l21 34h40z" />
  </Icon>
);
const EbayTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#e53238" d="M98 208c-30 0-55 12-55 51 0 31 17 49 56 49 46 0 49-30 49-30h-23s-4 17-28 17c-19 0-32-13-32-31h85v-12c0-17-11-44-52-44zm-1 14c18 0 30 11 30 28H65c0-18 16-28 32-28z" />
    <path fill="#0064d2" d="M150 171v119l-1 16h22l1-14s10 17 39 17c30 0 50-21 50-51 0-28-18-50-50-50-31 0-39 16-39 16v-53zm55 52c21 0 33 15 33 35 0 22-15 36-33 36-22 0-33-17-33-35s10-36 33-36z" />
    <path fill="#f5af03" d="M314 208c-46 0-48 25-48 28h22s2-14 24-14c31 0 27 24 27 24h-27c-35 0-53 11-53 31s17 32 40 32c32 0 41-17 41-17l1 14h20v-62c0-30-25-36-47-36zm25 52s4 35-35 35c-16 0-23-8-23-18 0-17 24-17 58-17z" />
    <path fill="#86b817" d="M348 212h25l37 72 36-72h23l-65 129h-24l18-36z" />
  </Icon>
);
const EdgeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <radialGradient id="a" cx=".6" cy=".5">
      <stop offset=".8" stop-color="#148" />
      <stop offset="1" stop-color="#137" />
    </radialGradient>
    <radialGradient id="b" cx=".5" cy=".6" fx=".2" fy=".6">
      <stop offset=".8" stop-color="#38c" />
      <stop offset="1" stop-color="#269" />
    </radialGradient>
    <linearGradient id="c" y1=".5" y2="1">
      <stop offset=".1" stop-color="#5ad" />
      <stop offset=".6" stop-color="#5c8" />
      <stop offset=".8" stop-color="#7d5" />
    </linearGradient>
    <path d="M439 374c-50 77-131 98-163 96-191-9-162-262-47-261-82 52 30 224 195 157 17-12 20 3 15 8" fill="url(#a)" />
    <path d="M311 255c18-82-31-135-129-135S38 212 38 259c0 124 125 253 287 203-134 39-214-116-146-210 46-66 123-68 132 3 M411 99h1" fill="url(#b)" />
    <path d="M39 253C51-15 419-30 472 202c14 107-86 149-166 115-42-26 26-20-3-99-48-112-251-103-264 35" fill="url(#c)" />
  </Icon>
);
const ElasticTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m206.4 217.2 90.1 40.3 90.9-78.1A101.6 99.7 0 0 0 203.9 103.4l-15.1 76.9z" fill="#ffd00a" />
    <path d="m113.1 310.8a103.4 101.4 0 0 0-2 19.9 101.9 99.9 0 0 0 186.1 56.2l15-76.7-20-37.5-90.5-40.4z" fill="#20b9af" />
    <path d="m112.6 157.9 61.7 14.3 13.5-68.9a48.8 47.8 0 0 0-75.2 54.6" fill="#ee5096" />
    <path d="m107.2 172.3a68.1 66.8 0 0 0-3 125.8l86.6-76.8-15.9-33.3z" fill="#12a5df" />
    <path d="m313.1 386.9a48.7 47.8 0 0 0 75.1-54.5l-61.7-14.2z" fill="#90c640" />
    <path d="m325.6 302.4 67.9 15.6a68.7 67.4 0 0 0 46.8-63.4 68 66.7 0 0 0-43.9-62.3l-88.8 76.4z" fill="#05799f" />
  </Icon>
);
const ElementTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" fill="#0dbd8b" r="192" />
    <path fill="none" stroke="#fff" stroke-width="28.155" stroke-linecap="round" d="m153.25 277.15c.47-46.35 37.79-81.6 81.6-81.6m0-42.3c46.35.47 81.6 37.79 81.6 81.6m42.3 0c-.47 46.35-37.79 81.6-81.6 81.6m0 42.3c-46.35 0-81.6-37.79-81.6-81.6" />
  </Icon>
);
const ElementaryosTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="180" stroke-width="16" stroke="#000" fill="none" />
    <path d="M123 365c129-29 220-136 206-203-14-65-93-72-149-18-59 58-58 164 0 203 91 61 192-18 247-113-1-12-2-16-5-25-57 108-149 165-219 127-68-37-52-133-11-181 63-73 136-23 119 46-7 28-60 125-201 146-1 7 6 20 13 18z" fill="#000" />
  </Icon>
);
const EmailTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="teal" />
    <rect width="356" height="256" x="78" y="128" fill="#fff" rx="8%" />
    <path fill="none" stroke="teal" stroke-width="20" d="M434 128L269 292c-7 8-19 8-26 0L78 128m0 256l129-128m227 128L305 256" />
  </Icon>
);
const EpubTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#FFF" />
    <path fill="#86b918" d="M256 377L135 256l121-121 40 41-80 80 40 40 121-120L272 70c-9-8-23-8-32 0L70 240c-8 9-8 23 0 32l170 170c9 8 23 8 32 0l170-170c8-9 8-23 0-32l-25-24z" />
  </Icon>
);
const EspressifTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ff3034" />
    <path fill="#fff" d="M126 120.53a188.46 188.46 0 00266.53 266.52a7.69 7.69 0 1110.87 10.87a203.83 203.83 0 01-288.26-288.26A7.69 7.69 0 01126 120.53zm52.5 240.22a26 26 0 100 1M409 334a273 273 0 00-231.5-231.5A150 150 0 00139 130v26a216 216 0 01217 216h26a111 111 0 0027-39M240 83l-4 12a298 298 0 01181 180l11-4A172 172 0 00240 83zm5 342a118 118 0 00-95-171a10.61 10.61 0 013-21a140 140 0 01120 177l31 9l26.5-10a195 195 0 00-163-230a66.6 66.6 0 10-18 131.5a63 63 0 0142 95.5l21 14z" />
  </Icon>
);
const EthereumTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#3C3C3B" d="m256 362v107l131-185z" />
    <path fill="#343434" d="m256 41l131 218-131 78-132-78" />
    <path fill="#8C8C8C" d="m256 41v158l-132 60m0 25l132 78v107" />
    <path fill="#141414" d="m256 199v138l131-78" />
    <path fill="#393939" d="m124 259l132-60v138" />
  </Icon>
);
const EtsyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f2521b" d="M218 137c0-4 2-6 8-6h94c17 0 25 14 31 40l5 20h16c2-59 5-86 5-86s-40 5-64 5H194l-64-2v17l22 4c16 2 19 6 20 20 0 0 1 41 1 108s-1 108-1 108c0 12-5 17-20 19l-22 4v17l64-2h107c24 0 81 2 81 2 1-14 10-82 11-89h-16l-16 36c-13 29-31 30-52 30h-61c-20 0-30-8-30-25v-93s46 0 60 1c12 .8 18 4 22 20l5 22h18l-1-53 2-54h-18l-6 24c-4 16-6 18-22 20-20 2-60 1-60 1V135" />
  </Icon>
);
const EvernoteTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#46c850" />
    <path d="m121 143h35c3 0 4-1 4-4l-1-38c0-10 6-19 6-19h-1l-68 67v1s10-7 25-7zm271-6c-3-15-12-23-20-25-32-8-65-12-98-11-2-19-18-29-54-29-31-1-49 6-49 29v39c0 8-5 13-14 13h-34c-7 0-13 2-18 4-4 2-14 7-14 30-1 19 13 95 23 115 3 9 6 12 14 15 16 8 54 15 73 18 17 2 28 6 36-8 2-4 10-30 9-52 0-1 2-2 2 0 0 7-2 36 19 43l45 9c16 1 28 7 28 49 0 25-6 28-34 28-22 0-30 1-30-17 0-14 14-13 25-13 4 0 1-3 1-12s5-14 0-14c-36-1-58 0-58 45 0 42 16 49 68 49 40 0 55-1 71-52 25-78 18-205 9-253zm-46 115c-5-6-31-8-40-4 2-10 6-22 22-22 15 0 18 16 18 26z" fill="#4b4b4b" />
  </Icon>
);
const FacebookTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#1877f2" />
    <path d="M355.6 330l11.4-74h-71v-48c0-20.2 9.9-40 41.7-40H370v-63s-29.3-5-57.3-5c-58.5 0-96.7 35.4-96.7 99.6V256h-65v74h65v182h80V330h59.6z" fill="#fff" />
  </Icon>
);
const FinderTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="url(#a)" />
    <defs>
      <linearGradient id="a" x2="0" y1="100%">
        <stop offset="0" stop-color="#1e73f2" />
        <stop offset="1" stop-color="#19d3fd" />
      </linearGradient>
      <linearGradient id="b" x2="0" y1="100%">
        <stop offset="0" stop-color="#dbe9f4" />
        <stop offset="1" stop-color="#f7f6f6" />
      </linearGradient>
    </defs>
    <path fill="url(#b)" d="M435.2 0H274.4c-21.2 49.2-59.2 129.6-60.8 283.4a9.9 9.9 0 0010 10.1h58.7a9.9 9.9 0 019.9 10.2A933.3 933.3 0 00311.3 512h123.9a76.8 76.8 0 0076.8-76.8V76.8A76.8 76.8 0 00435.2 0z" />
    <path fill="none" stroke="#000" stroke-linecap="round" stroke-width="20" d="M371 149v34m-229-34v34m263.4 147.2a215.2 215.2 0 01-298.8 0" />
  </Icon>
);
const FirefoxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a" x1=".7" x2=".3" y2=".8">
      <stop offset=".3" stop-color="#fd5" />
      <stop offset=".6" stop-color="#f85" />
      <stop offset="1" stop-color="#d06" />
    </linearGradient>
    <radialGradient id="b" cx=".4" cy=".7">
      <stop offset=".4" stop-color="#74d" />
      <stop offset="1" stop-color="#a2d" />
    </radialGradient>
    <linearGradient id="c" x1=".8" y1=".2" x2=".4" y2=".8">
      <stop offset=".2" stop-color="#fd5" />
      <stop offset="1" stop-color="#f33" />
    </linearGradient>
    <g transform="scale(4)">
      <path d="M48 49s-3-9-1-16c-9 2-33 35-33 35a51 48 0 1087-32s5 9 5 15c-3-9-20-25-26-37-24 13-16 39-16 39" fill="url(#a)" />
      <circle cx="64" cy="67" r="26" fill="url(#b)" />
      <path d="M21 45l43 12c-6 11-16 3-23 14a22 22 0 1034-20s33 3 17 42H28m36 25h1" fill="url(#a)" />
      <path d="M35 43c16 0 12 7 29 14-18 6-23-9-38 0 5 9 12 8 12 8 1 43 72 29 67-17a50 46.6 47 01-88 33c-9-18-1-40 16-51" fill="url(#c)" />
    </g>
  </Icon>
);
const FlattrTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#FFF" />
    <path d="M112 254c0-77 63-140 141-140h76l-41 40 19 19 84-86H252c-92 0-167 75-167 167v131l27-25v-1-105zM420 124l-27 25v105c0 78-63 141-141 141h-76l41-40-19-19-84 86h138c93 0 168-75 168-167V124z" />
  </Icon>
);
const FlickrTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="157" cy="256" fill="#0063dc" r="79" />
    <circle cx="355" cy="256" fill="#ff0084" r="79" />
  </Icon>
);
const FlutterTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#e8e9eb" />
    <defs>
      <linearGradient id="f" x1="249" x2="321" y1="401" y2="358" gradientUnits="userSpaceOnUse">
        <stop stop-opacity=".4" />
        <stop stop-color="#124793" stop-opacity="0" offset="1" />
      </linearGradient>
    </defs>
    <g fill="#5cc8f8">
      <path d="M191.45,342.89,249.11,401,407.75,241.12H292.4Z" />
      <path d="M292.4,66.69H407.75L162.61,313.82l-57.7-58.13Z" />
    </g>
    <path fill="#075b9d" d="M249.11,401l43.29,43.59H407.75L306.8,342.89Z" />
    <path d="M334.67,371.16,306.8,342.89,249.11,401Z" fill="url(#f)" />
    <path d="M191.45,342.87l57.69-58.18,57.7,58.15L249.14,401Z" fill="#16b9fd" />
  </Icon>
);
const Foobar2000TinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#1B1817" />
    <path fill="#ffffff" d="M256 473.5C256 473.5 221 445 186 408C158.5 379 132 343.5 118 316C86.5 253.5 105 179 177 59L231 133C231 133 243 131 256 130.9C269 131 281 133 281 133L335 59C407 179 425.5 253.5 394 316C380 343.5 353.5 379 326 408C291 445 256 473.5 256 473.5Z" />
    <path fill="#000000" d="M149 212C180.5 220 206.5 250.5 220 279C235 311.5 229 341 194 329.5C154.5 315.5 135.5 284.5 126.5 260.5C121.5 247.5 112 202.5 149 212Z" />
    <path fill="#000000" d="M363 212C331.5 220 305.5 250.5 292 279C277 311.5 283 341 318 329.5C357.5 315.5 376.5 284.5 385.5 260.5C390.5 247.5 400 202.5 363 212Z" />
    <path fill="#000000" d="M256 371L223 406C219 410 216 411 210 408C207 406 208 402 210 400L248 357C252 352 260 352 264 357L302 400C304 402 305 406 302 408C296 411 293 410 289 406Z" />
  </Icon>
);
const FreebsdTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m420.1 119.5c18 17.9-31.8 96.8-40.2 105.2-8.4 8.4-29.8 0.7-47.7-17.3-18-17.9-25.7-39.3-17.3-47.7 8.4-8.4 87.3-58.2 105.2-40.2M168.4 138.5 168.4 138.5 168.4 138.5c-27.4-15.6-66.4-32.9-78.8-20.4-12.6 12.6 5.4 52.4 21.1 79.9 14-24.3 33.9-44.8 57.7-59.5M392.8 218.6c2.5 8.6 2.1 15.6-2 19.7-9.6 9.6-35.4-0.6-58.7-22.8-1.6-1.5-3.2-3-4.8-4.6-8.4-8.4-15-17.4-19.2-25.6-8.2-14.6-10.2-27.5-4-33.7 3.4-3.4 8.7-4.3 15.3-3.1 4.3-2.7 9.3-5.7 14.9-8.8-22.5-11.7-48.1-18.4-75.2-18.4-90 0-163 73-163 163 0 90 73 163 163 163 90 0 163-73 163-163 0-29.1-7.6-56.3-21-79.9-2.9 5.3-5.7 10.1-8.2 14.2" fill="#ab2b28" />
  </Icon>
);
const FreecodecampTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M377 129c-2 0-3 3-3 4 0 3 4 8 11 16 29 28 45 62 44 103 0 46-17 84-47 111-6 6-9 10-9 15l4 4a9 9 0 0 0 5 4c7 0 17-8 29-25 25-30 36-63 37-109 0-46-13-77-42-109-10-11-18-17-24-17-2 0-4 1-5 3zm-88 131c-11-2 33-56-47-119 0 0 11 33-42 108-52 75 23 118 23 118s-36-19 7-87c7-11 17-22 29-49 0 0 11 16 5 48-9 50 36 37 37 37 16 18-13 51-14 52s81-51 22-128c-4 5-10 23-21 20zm-154-131a7 7 0 0 1 3 4c0 3-3 8-12 16a138 138 0 0 0-43 103c0 46 16 82 46 111 7 6 9 11 9 14l-3 5a9 9 0 0 1-5 4c-8 0-17-9-30-25a165 165 0 0 1-36-109c0-46 13-77 41-109 11-11 19-17 25-17 2 0 4 1 5 3z" />
  </Icon>
);
const FriendicaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <defs>
      <linearGradient id="l" x2="0" y2="1">
        <stop stop-color="#fff" stop-opacity="0.4" offset="0" />
        <stop offset=".3" stop-color="#d6d7e8" stop-opacity="0" />
        <stop stop-opacity="0" offset=".7" />
        <stop stop-opacity=".4" offset="1" />
      </linearGradient>
    </defs>
    <rect rx="50" height="334" width="334" x="89" y="89" />
    <path d="m144 89c-30 0-55 25-55 55v225c0 30 25 55 55 55h225c30 0 55-25 55-55v-225c0-30-25-55-55-55z" />
    <path d="m144 102c-23 0-42 18-42 42v225c0 23 18 42 42 42h52v-88h108v-67h-108v-81h107.54687v-73z" fill="#ffc019" />
    <path d="m316 102v87h-107v67h107v81h-107v74h160c23 0 42-18 41-42v-225c0-23-18-42-42-42z" fill="#1872a2" />
    <rect fill="url(#l)" rx="50" height="334" width="334" x="89" y="89" />
  </Icon>
);
const FritzTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#F8EC17" />
    <use href="#a" x="4" y="3.5" />
    <g fill="#e2001a">
      <path id="a" d="m246 298h-34v-88l13-3-4-16h25zm-127 26h33v-87h6c3 0 10 4 10 12 0 10-9 17-16 23l34,56c9-7 19-16 26-24l-27-32c14-11 17-20 16-30-2-21-21-25-36-27-12-1-33-1-45-0zm194 0v-83l28 1h2v-30h-93v30h2l28 -1v83zm66-109l-43,82c32 0 54 0 88 0v-30c-18 1-30 1-40 0l43-80c-38-2-65-2-84-2v30c15-1 26-1 36-1zm-269-28c-27 0-50 1-66 1v119h34v-42h29v-28h-29v-21h32v-10zm350 74l8.5-56-28-2-3.5 57zm-15 33l18-15-15-18-18 15z" stroke="#000" stroke-width="2.6" />
    </g>
  </Icon>
);
const GandiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="url(#a)" />
    <defs>
      <linearGradient id="a" x1="72" y1="512" x2="433" y2="12" gradientUnits="userSpaceOnUse">
        <stop offset="0" stop-color="#3daca3" />
        <stop offset="1" stop-color="#13526b" />
      </linearGradient>
    </defs>
    <path fill="#fff" d="M255 66a54 54 0 1054 54 54 54 0 00-54-54zm0 71a17 17 0 1117-17 17 17 0 01-17 17z" />
    <path fill="#fff" d="M145 155c13-13 27-5 34 1s26 43 76 43 64-28 80-44c10-11 24-8 33 1s6 25 0 33c-36 49-97 69-116 82-29 20-49 40-49 69 0 24 17 60 53 60s52-25 52-37c0-15-10-19-13-19-15 0-15 18-34 18-15 0-22-12-22-24 0-18 27-42 55-42 38 0 62 27 62 64 0 42-39 88-99 88-65 0-102-61-102-106s21-78 56-101c-26-10-51-27-71-58-2-2-9-16 5-28z" />
  </Icon>
);
const GatehubTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <g id="g">
      <circle cx="83" cy="256" r="36" stroke="#f7f6f2" stroke-width="15" fill="none" />
      <rect x="169" y="250" width="88" height="13" fill="#9d9fa7" />
    </g>
    <use href="#g" transform="rotate(120 256 256)" />
    <use href="#g" transform="rotate(240 256 256)" />
  </Icon>
);
const GhostTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#e8e9eb" />
    <path stroke="#3d515b" stroke-width="61" d="M101 134h187zm246 0h61zM101 257h310zm0 121h123zm187 0h123z" />
  </Icon>
);
const GitTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f05133" d="M440.8 238.9L273 71.2a24.7 24.7 0 00-35 0l-34.8 34.9l44.2 44.1a29.4 29.4 0 0137.2 37.5l42.5 42.5a29.4 29.4 0 11-17.6 16.6l-39.7-39.7v104.5a29.4 29.4 0 11-24.2-.9V205.3a29.4 29.4 0 01-16-38.6l-43.5-43.5l-115 115a24.7 24.7 0 000 34.9L239 440.8a24.7 24.7 0 0035 0l166.9-167a24.7 24.7 0 000-34.9" />
  </Icon>
);
const GiteaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect rx="15%" height="512" width="512" fill="#fff" />
    <path d="M419 150c-98 7-186 2-276-1-27 0-63 19-61 67 3 75 71 82 99 83 3 14 35 62 59 65h104c63-5 109-213 75-214zm-311 67c-3-21 7-42 42-42 3 39 10 61 22 96-32-5-59-15-64-54z" fill="#592" />
    <path d="m293 152v70" stroke="#fff" stroke-width="9" />
    <g transform="rotate(25.7 496 -423)" stroke-width="7" fill="#592">
      <path d="M561 246h97" stroke="#592" />
      <rect x="561" y="246" width="97" height="97" rx="16" fill="#fff" />
      <path d="M592 245v75" stroke="#592" />
      <path d="M592 273c45 0 38-5 38 48" fill="none" stroke="#592" />
      <circle cx="592" cy="320" r="10" />
      <circle cx="630" cy="320" r="10" />
      <circle cx="592" cy="273" r="10" />
    </g>
  </Icon>
);
const GithubTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#181717" />
    <path fill="#fff" d="M335 499c14 0 12 17 12 17H165s-2-17 12-17c13 0 16-6 16-12l-1-44c-71 16-86-34-86-34-12-30-28-37-28-37-24-16 1-16 1-16 26 2 40 26 40 26 22 39 59 28 74 22 2-17 9-28 16-35-57-6-116-28-116-126 0-28 10-51 26-69-3-6-11-32 3-67 0 0 21-7 70 26 42-12 86-12 128 0 49-33 70-26 70-26 14 35 6 61 3 67 16 18 26 41 26 69 0 98-60 120-117 126 10 8 18 24 18 48l-1 70c0 6 3 12 16 12z" />
  </Icon>
);
const GitlabTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#30353e" />
    <path fill="#e24329" d="M84 215l43-133c2-7 12-7 14 0l115 353L371 82c2-7 12-7 14 0l43 133" />
    <path fill="#fc6d26" d="M256 435L84 215h100.4zm71.7-220H428L256 435l71.6-220z" />
    <path fill="#fca326" d="M84 215l-22 67c-2 6 0 13 6 16l188 137zm344 0l22 67c2 6 0 13-6 16L256 435z" />
  </Icon>
);
const GlitchTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a">
      <stop offset=".2" stop-color="#e9f" />
      <stop offset="1" stop-color="#f66" />
    </linearGradient>
    <g fill="#a6f">
      <g id="b">
        <path d="M78 189q20 25-15 30 50 40 97 32 14 35 76 25l-2-16s72 2 138-26c12-3 79 35 64 9s6-22-5-54" fill="url(#a)" />
        <path d="M139 131q-68 15-78 68q9 2 22 11h95c-4 9 8 9 8 0h12l-5 16c-3 6 5 9 8 3l6-19h33v-11h194c-9-31 9-19 3-60-40 3-40 45-143-3" />
        <circle cx="125" cy="179" r="18" fill="#fff" />
        <path d="M110 189a14 14 0 111 1 5 5 0 10-1-1" fill="#000" />
        <path d="M184 206h3-3s9-21-7-48m27 48h3-3s9-24-4-53m0 0c74 0 130 16 182 41" stroke="#e9f" stroke-width="8" stroke-linecap="round" />
      </g>
      <path d="M294 136l-10-10c-8-8-77-21-77-21s-13 1-30 25c-34-3-53 5-53 5zm-56 62v12h53v-12" fill="#a6f" />
    </g>
    <g fill="#33f">
      <use href="#b" y="120" />
      <path d="M293 257l52-13v-3H209v10h-70" />
    </g>
  </Icon>
);
const GmailTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M158 391v-142l-82-63V361q0 30 30 30" fill="#4285f4" />
    <path d="M 154 248l102 77l102-77v-98l-102 77l-102-77" fill="#ea4335" />
    <path d="M354 391v-142l82-63V361q0 30-30 30" fill="#34a853" />
    <path d="M76 188l82 63v-98l-30-23c-27-21-52 0-52 26" fill="#c5221f" />
    <path d="M436 188l-82 63v-98l30-23c27-21 52 0 52 26" fill="#fbbc04" />
  </Icon>
);
const Gmail_oldTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f2f2f2" d="M120 392V151.075h272V392" />
    <path fill-opacity=".05" d="M256 285L120 392l-4-212" />
    <path fill="#d54c3f" d="M120 392H97c-12 0-22-10-22-23V143h45z" />
    <path fill-opacity=".08" d="M317 392h77V159H82" />
    <path fill="#f2f2f2" d="M97 121h318L256 234" />
    <path fill="#b63524" d="M392 392h23c12 0 22-10 22-23V143h-45z" />
    <path fill="none" stroke="#de5145" stroke-linecap="round" stroke-width="44" d="M97 143l159 115 159-115" />
  </Icon>
);
const GoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#00acd7" d="M308 220c1 2-1 2-2 2l-34 9c-3 2-5-1-5-1-21-26-65-8-67 30-2 36 45 50 67 14h-38c-3 0-8-1-3-10l8-17c2-4 3-4 9-4h70c0 81-90 117-138 68-22-23-29-75 16-112 36-29 96-29 117 21m16 96c-45-39-21-120 50-133 73-13 105 55 76 106-24 43-88 61-126 27m94-51c9-25-9-49-36-47-30 3-51 42-32 65 19 22 58 12 68-18m-321-2v-1l2-5 2-1h41l1 1-1 5-1 1H97m-48-18s-2 0-1-1l4-6 2-1h92l1 1-2 5-1 1-95 1m30-19l-1-1 5-5 2-1h72v1l-3 5-2 1H79" />
  </Icon>
);
const GogcomTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path id="g" d="M84 265h82q17-1 18-18V139q-1-17-18-18h-64q-17 1-18 18v64q1 17 18 18h43v-24h-29q-8 0-8-8v-36q0-8 8-8h36q8 0 8 8v80q0 8-8 8H84z" />
    <path id="o" d="M224 221h64q17-1 18-18v-64q-1-17-18-18h-64q-17 1-18 18v64q1 17 18 18zm14-24q-8 0-8-8v-36q0-8 8-8h36q8 0 8 8v36q0 8-8 8z" />
    <use x="244" href="#g" />
    <use x="-19" y="170" href="#o" />
    <path d="M307 391h24v-67q0-8 8-8h16v75h24v-67q0-8 8-8h16v75h24V291H325q-17-1-18 18zM167 291h-65q-17 1-18 18v64q1 17 18 18h65v-24h-51q-8 0-8-8v-36q0-8 8-8h51z" />
  </Icon>
);
const GojekTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" fill="#fff" rx="15%" />
    <circle cx="256" cy="261" r="64" fill="#00AA13" />
    <path fill="#00AA13" d="M256 91a171 171 0 00-66 328 32 32 0 0044-24 32 32 0 00-19-35 106 106 0 0141-205 107 107 0 0141 205 32 32 0 0013 61 33 33 0 0012-3 170 170 0 00-66-327" />
  </Icon>
);
const GoodreadsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ece9d4" />
    <path d="m380 73h-35v37c-54-75-165-51-196 23-20 48-19 96 2 144 22 50 85 71 135 57 16-3 32-11 43-21 6-5 12-10 16-15-1 19-2 38-5 56-4 23-14 43-36 54-48 25-105 6-126-43h-33c2 32 19 53 46 66 32 16 66 18 100 12 44-7 73-32 83-76 4-16 5-32 6-48 .9-90-.2-173 .2-246zm-40 178c-6 18-17 32-31 42-3 2-20 14-45 15-1 .1-6 .2-11 0-.2 .1-.3 .1-.6 .1-36-2-63-23-75-58-10-29-10-59-3-88 11-43 42-69 81-70 .9-.1 1-.1 1-.1 20-2 36 7 42 9 21 11 37 32 44 61 7 30 8 60-2 89z" fill="#814910" />
  </Icon>
);
const GoogleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#4285f4" d="M386 400c45-42 65-112 53-179H260v74h102c-4 24-18 44-38 57z" />
    <path fill="#34a853" d="M90 341a192 192 0 0 0 296 59l-62-48c-53 35-141 22-171-60z" />
    <path fill="#fbbc02" d="M153 292c-8-25-8-48 0-73l-63-49c-23 46-30 111 0 171z" />
    <path fill="#ea4335" d="M153 219c22-69 116-109 179-50l55-54c-78-75-230-72-297 55z" />
  </Icon>
);
const Google_calendarTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M100 340h74V174H340v-74H137Q100 100 100 135" fill="#4285f4" />
    <path d="M338 100v76h74v-41q0-35-35-35" fill="#1967d2" />
    <path d="M338 174h74V338h-74" fill="#fbbc04" />
    <path d="M100 338v39q0 35 35 35h41v-74" fill="#188038" />
    <path d="M174 338H338v74H174" fill="#34a853" />
    <path d="M338 412v-74h74" fill="#ea4335" />
    <path d="M204 229a25 22 1 1 1 25 27h-9h9a25 22 1 1 1-25 27M270 231l27-19h4v-7V308" stroke="#4285f4" stroke-width="15" stroke-linejoin="bevel" fill="none" />
  </Icon>
);
const Google_collaborative_content_toolsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M131.5 344h83v-174h83v-86h-136q-30 0-30 30" fill="#ffba00" />
    <path d="M297.5 84v86h83" fill="#ea4335" />
    <path d="M297.5 170h83v174h-83" fill="#2684fc" />
    <path d="M131.5 342v56q0 30 30 30h55v-86" fill="#00832d" />
    <path d="M214.5 342h85v86h-85" fill="#00ac47" />
    <path d="M297.5 342h83v56q0 30-30 30h-53" fill="#0066da" />
  </Icon>
);
const Google_docs_editorsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M131.5 344h83v-174h83v-86h-136q-30 0-30 30" fill="#ffba00" />
    <path d="M297.5 84v86h83" fill="#ea4335" />
    <path d="M297.5 170h83v174h-83" fill="#2684fc" />
    <path d="M131.5 342v56q0 30 30 30h55v-86" fill="#00832d" />
    <path d="M214.5 342h85v86h-85" fill="#00ac47" />
    <path d="M297.5 342h83v56q0 30-30 30h-53" fill="#0066da" />
  </Icon>
);
const Google_driveTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#2684fc">
      <path id="b" d="M337 301l53 96q-3 2-10 2h-247.6 q-6 0-10-2l55-95" />
    </g>
    <g fill="#ea4335">
      <path id="c" d="M335 301l55 96q6-3 10-10l43-76q2-6 2-10" />
    </g>
    <g transform="rotate(120 256 256)">
      <use href="#b" fill="#00ac47" />
      <use href="#c" fill="#0066da" />
    </g>
    <g transform="rotate(240 256 256)">
      <use href="#b" fill="#ffba00" />
      <use href="#c" fill="#00832d" />
    </g>
  </Icon>
);
const Google_drive_oldTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#4587f4" d="M468 299H112v120h288" />
    <path fill="#1da261" d="M187 51L44 299l68 120L325 51" />
    <path fill="#ffcf48" d="M325 51l143 248H331L187 51" />
  </Icon>
);
const Google_mapsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <clipPath id="a">
      <path d="M375 136a133 133 0 00-79-66 136 136 0 00-40-6 133 133 0 00-103 48 133 133 0 00-31 86c0 38 13 64 13 64 15 32 42 61 61 86a399 399 0 0130 45 222 222 0 0117 42c3 10 6 13 13 13s11-5 13-13a228 228 0 0116-41 472 472 0 0145-63c5-6 32-39 45-64 0 0 15-29 15-68 0-37-15-63-15-63z" />
    </clipPath>
    <g stroke-width="130" clip-path="url(#a)">
      <path stroke="#fbbc04" d="M104 379l152-181" />
      <path stroke="#4285f4" d="M256 198L378 53" />
      <path stroke="#34a853" d="M189 459l243-290" />
      <path stroke="#1a73e8" d="M255 120l-79-67" />
      <path stroke="#ea4335" d="M76 232l91-109" />
    </g>
    <circle cx="256" cy="198" r="51" fill="#fff" />
  </Icon>
);
const Google_maps_oldTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect id="a" width="512" height="512" x="0" y="0" rx="15%" fill="#fff" />
    <clipPath id="b">
      <use href="#a" />
    </clipPath>
    <g clip-path="url(#b)">
      <path fill="#35a85b" d="M0 512V0h512z" />
      <path fill="#5881ca" d="M256 288L32 512h448z" />
      <path fill="#c1c0be" d="M288 256L512 32v448z" />
      <path stroke="#fadb2a" stroke-width="71" d="M0 512L512 0" />
      <path fill="none" stroke="#f2f2f2" stroke-width="22" d="M175 173h50a50 54 0 1 1-15-41" />
      <path fill="#de3738" d="M353 85a70 70 0 0 1 140 0c0 70-70 70-70 157 0-87-70-87-70-157" />
      <circle cx="423" cy="89" r="25" fill="#7d2426" />
    </g>
  </Icon>
);
const Google_meetTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M166 106v90h-90" fill="#ea4335" />
    <path d="M166 106v90h120v62l90-73v-49q0-30-30-30" fill="#ffba00" />
    <path d="M164 406v-90h122v-60l90 71v49q0 30-30 30" fill="#00ac47" />
    <path d="M286 256l90-73v146" fill="#00832d" />
    <path d="M376 183l42-34c9-7 18-7 18 7v200c0 14-9 14-18 7l-42-34" fill="#00ac47" />
    <path d="M76 314v62q0 30 30 30h60v-92" fill="#0066da" />
    <path d="M76 196h90v120h-90" fill="#2684fc" />
  </Icon>
);
const Google_playTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <clipPath id="a">
      <path d="M465 239L169 69c-15-9-35 2-35 20v334c0 18 20 29 35 20l296-171c13-7 13-25 0-33z" />
    </clipPath>
    <g clip-path="url(#a)" transform="translate(-10 17) scale(.93324)">
      <path fill="#0e7" d="M20 53h400v355" />
      <path fill="#0df" d="M512 444H98V30" />
      <path fill="#f34" d="M399 181v322H76" />
      <path fill="#fd0" d="M324 256l180 180V76" />
    </g>
  </Icon>
);
const Google_plusTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#dc4639" />
    <path fill="#fff" d="M191 234v47h72c-2 19-21 55-72 55-43 0-78-36-78-80s33-80 76-80c25 0 42 10 51 19l35-33a125 125 0 0 0-211 94c0 70 57 127 127 127 74 0 122-53 122-125l-2-24" />
    <path stroke="#fff" stroke-width="29" d="M404 192v118m59-59H345" />
  </Icon>
);
const Google_podcastsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path stroke="#fab908" d="m256 109v22zm0 86v122m0 64v22z" />
    <path stroke="#ea4335" d="m181 176v75zm0 139v21z" />
    <path stroke="#34a853" d="m331 176v21zm0 85v75z" />
    <path stroke="#4285f4" d="m405 245v22" />
    <path stroke="#0066d9" d="m107 245v22" />
  </Icon>
);
const Google_scholarTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#4285f4" />
    <path fill="#fff" d="M213 111l-107 94h69c5 45 41 64 78 67-7 18-4 27 7 39-43 1-103 26-103 67 4 45 63 54 92 54 38 1 81-19 90-54 4-35-10-54-31-71-23-18-28-28-21-40 15-17 35-27 39-51 2-17-2-28-6-43l45-38-1 16c-3 2-5 6-5 9v103c2 13 22 11 23 0V160c0-3-2-7-5-8v-25l16-16zm58 141c-61 10-87-87-38-99 56-11 83 86 38 99zm-5 73c60 13 61 63 10 78-44 9-82-4-81-30 0-25 35-48 71-48z" />
  </Icon>
);
const GradleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M427 132.7a61 61 0 00-85-1a6 6 0 000 9l7 8a6 6 0 008 1a35 35 0 0146 53c-48 48-113 -87 -259 -17a20 20 0 00-9 28l25 43a20 20 0 0027 7l1 0l0 0l11-6a257 257 0 0035-26a6 6 0 018 0v0a6 6 0 010 9a263 263 0 01-37 28h0l-11 6a31 31 0 01-15 4a32 32 0 01-28-16L126 219C81 259 53 314 68.13 392.26a6 6 0 006 4.74H100.6a6 6 0 005.93-5.3a40 40 0 0178.62 0a6 6 0 005.72 5.08h26.2a6 6 0 005.7-5.1a40 40 0 0178.6 0a6 6 0 005.7 5h26a6 6 0 005.8-5.72c1-37 10 -79 38.7 -100c98-73 72 -136 49.4 -158.3zm-100 110l-19-9v0a12 12 0 1119 9z" fill="#02303a" />
  </Icon>
);
const GrafanaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <linearGradient id="a" x1="9%" y1="30%" x2="9%" y2="99%">
      <stop stop-color="#F05A28" offset="0" />
      <stop offset="1" stop-color="#FBCA0A" />
    </linearGradient>
    <path fill="url(#a)" d="M390 146c5-22-7-40-7-40-20-2-34 6-38 10-13-6-26-9-39-11-9-29-35-41-35-41a78 78 0 00-34 45c-16 5-31 12-43 21-24-10-53-9-77 2-3 43 16 70 20 74-5 14-9 29-10 42-37 19-48 56-48 56 16 17 43 38 67 38 7 12 15 22 24 32-11 32 1 58 1 58 35 2 57-15 62-18 19 5 37 9 56 8 11 14 27 23 45 26 11-16 21-33 21-49 14-10 26-23 35-37 22 2 39-14 39-14-3-14-10-30-22-38 3-23-2-46-13-65-19-30-51-47-85-47-23 0-44 11-58 27a71 71 0 00-15 65c5 19 21 35 38 39s34 2 43-7c3-3-1-8-5-6-7 3-14 4-22 3-59-9-45-86 10-89 11-2 26 3 35 7 32 21 39 52 26 84a92 92 0 01-76 51c-18 0-35-5-49-12-34-20-56-53-58-92-3-76 41-110 90-121 29-6 61-3 87 10 36 18 61 52 72 91 1 4 6 4 6-1 0-38-17-75-43-101z" />
  </Icon>
);
const GuacamoleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#000" />
    <g fill="#fff">
      <path d="m140 169c-14 6-26 17-34 30-7 15-2 32 0 48 2 13 7 27 20 33 49 32 109 42 166 34 35-5 71-16 100-36 13-8 15-25 18-39 3-15 5-34-6-47-3-6-13-8-16-1-5 11 5 26-4 36-23 28-60 38-94 43-25 2-50 2-75-1-28-5-56-13-77-33-12-11-15-30-5-43 3-7 10-13 10-21 0-1-2-2-3-2z" />
      <path d="m126 308c-3 4 3 9 5 13 21 32 58 51 95 56 22 3 44 1 66 0 37-7 72-29 92-62 1-5-6-3-8-1-40 25-88 33-134 31-40-2-80-12-112-35-1-1-3-2-4-1z" />
    </g>
    <path d="m255 136c-10 0-18 4-27 7-13 2-27 4-39 11-7 5-14 11-22 14-14 8-22 24-27 39-2 10 7 18 14 25 17 14 39 19 61 24 33 6 67 4 100-3 22-5 44-15 58-33 4-6 4-18-4-21-9-1-13 10-21 11-5-5-6-14-12-19-6-7-14-12-18-20 1-7 7-13 4-20-6-10-20-11-31-12-13-1-25-6-37-5z" fill="#583" />
    <path d="m356 131c-6 0-12 5-13 11-3 7-8 14-9 22-1 7 2 15 8 19 4 3 6 8 10 10 5 3 10-2 14-4 11-7 23-13 31-24 3-4 3-11-1-15s-10-6-14-9c-8-5-16-10-25-11z" fill="#CA3" />
  </Icon>
);
const GuildedTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f5c400" />
    <path d="m91.8 129.6c-.4.6.1 16.2.8 30.2 2.5 46.7 11.4 90.9 25.3 126.2 2.9 7.3 11 23.8 15.7 32.1 24.8 43.1 56.9 74 100.3 96.6 8.8 4.6 21.9 10.5 24 10.8 2.6.4 16.1-5.4 30-12.8 34.2-18.2 64.2-45.6 85.5-77.9 18.2-27.8 33.2-62.8 41.1-96l1.5-6.6c0-.1-44.5-.2-98.8-.2l-98.8.7c0 1.6 1.7 10 3 15.1 4.7 17.9 13.2 33.3 25.5 45.9l5.3 5.4h33.2l33.2.4c0 .3-1.2 2.1-2.6 4.2-12.5 18.2-33.2 36.2-54.1 47l-3.4 1.8-4.9-2.5c-10.7-5.3-20.4-12.6-31.7-23.8-12.2-12.1-22.2-25.3-31.2-41.1-10.3-18.1-18.3-41.9-22.3-65.9-.9-5.2-2.5-20-2.5-22.4 0-.6 21.4-.7 127.8-.7l127.8-.4c0-.2.5-4.3 1-9.1a474.3 474.3 0 0 0 2.9-43.4l.3-14.1h-166.8l-167.1.6z" fill="#2d2d32" fill-rule="nonzero" />
  </Icon>
);
const HackernewsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f60" />
    <path fill="#fff" d="M124 91h51l81 162 81-164h51L276 293v136h-40V293z" />
  </Icon>
);
const HackeroneTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M174 56c-10 1-23 5-25 16v367c2 9 11 15 20 16h14c9-2 20-7 21-17a116708 116708 0 0 0 0-366c-3-11-15-15-25-16h-5zM333 200c-7 1-13 2-17 5l-74 47c-4 3-5 8-5 12 2 12 8 21 17 27 7 4 18 7 25 2l29-19v165c3 10 12 15 21 17h10c9-2 19-5 23-14l1-3a18494 18494 0 0 0 0-222c-1-12-16-16-26-17h-4z" />
  </Icon>
);
const HamlTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#3e3e2a" />
    <use href="#a" stroke="#29291c" stroke-width="22" />
    <path id="a" fill="#ecdfa7" d="M115 91l81 165-43 184c27 19 61 25 90 17a11062 11062 0 0028-153c18 21 47 29 72 32-1 5-7 16-2 18 17 10 40 13 55 0 8-7 12-15 12-25 12-6 23-16 21-29-1-19-18-32-31-41-11-8-34-10-40-21-8-13 2-24 2-37l28-24 3 2s9 1 14-12l-2-2c3-3 10-9 9-10-2-2-10 4-14 7l-9-6 18-15c5 1 14 8 16 3-7-16-37-30-47-32-2 0-3 2-5 3l-9-3-112 95-46-99h3c1-2 3-13-9-11 0-2-7-22-11-23-15-6-53 10-72 17zm68-6l6 12-13 1-6-11zm12 24l52 101-8 7-56-106zm188 9c7 1 35 20 36 22-3 0-35-20-36-22zm-39 94c-4 11-5 24 2 32 11 15 31 14 46 23 12 7 27 18 28 32 1 10-5 17-12 23 0-1-3-20-5-15-9 24-28 15-45 8l-3 1-10 15c-31-3-64-39-72-44l2-23c23-16 46-34 69-52zm-75 53l2 3-32 183-3 1 26-185 114-99 6 5z" />
  </Icon>
);
const HerokuTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path d="M367 99H145c-22 0-30 8-30 30v254c0 22 8 30 30 30h222c22 0 30-8 30-30V129c0-22-9-30-30-30" stroke="#fff" stroke-width="16" />
    <path fill="#fff" d="M182 284c56-28 94-31 107-25 9 4 9 15 9 15v99h33V273s-1-32-27-44-62-1-88 6v-95h-34m124 54s22-22 25-54h-34c-5 29-25 54-25 54m-90 178l37-33-37-33" />
  </Icon>
);
const HomekitTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M118 406a11 11 0 01-5 0 13 13 0 010-5V218c0-6-5-11-11-11H82L256 69l104 82c8 5 18 0 18-9v-25h15v55a11 11 0 004 8l34 27h-21c-6 0-11 5-11 11v183a13 13 0 010 4 11 11 0 01-5 1zM241 83l-114 90c-7 5-14 14-14 29v177c0 15 9 25 24 25h238c15 0 24-10 24-25V202c0-15-7-24-14-29L271 83c-10-6-22-6-30 0zm-67 261V217c0-4 1-5 2-6l80-63 80 63c1 1 2 1 2 6v127zm82-189c-6 0-9 1-14 5l-58 45c-9 7-9 15-9 20v97c0 12 8 20 19 20h124c11 0 19-8 19-20v-97c0-5 0-13-9-20l-58-46c-5-3-9-4-14-4zm-28 134v-49l28-21 28 21v48zm28-66c-4 0-6 2-10 5l-11 9a15 15 0 00-6 11v26c0 8 6 13 13 13h28c7 0 13-6 13-13v-26a15 15 0 00-6-11l-10-9-11-5" stroke="#000" stroke-width="22" stroke-linejoin="round" />
  </Icon>
);
const HpTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#0096d6" d="M256 64c-2.9 0-5.8 0-8.6.2l-39.3 108h34.2c20.3 0 31.3 15.6 24.3 34.8l-48.4 133h-40.7l52-142.6H199L147 340h-40.6l61-168 36.9-101a192 192 0 0 0 7.2 371.7l35.7-98 62.8-172.7h75c20.3 0 31.3 15.7 24.3 34.9l-42.5 116.9a26.5 26.5 0 0 1-23.2 16.2h-54l-39.2 107.8 5.7.1a192 192 0 0 0 0-384zm85.6 133.3l-42.8 117.4h30.6l42.8-117.4z" />
  </Icon>
);
const Html5TinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <path fill="#e34f26" d="M71 460L30 0h451l-41 460-185 52" />
    <path fill="#ef652a" d="M256 472l149-41 35-394H256" />
    <path fill="#ebebeb" d="M256 208h-75l-5-58h80V94H114l15 171h127zm-1 147l-63-17-4-45h-56l7 89 116 32z" />
    <path fill="#fff" d="M255 208v57h70l-7 73-63 17v59l116-32 16-174zm0-114v56h137l5-56z" />
  </Icon>
);
const HuluTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#040405" />
    <path fill="#1ce783" d="M297 197h29v119h-29zm-51 85c0 4-3 7-8 7h-16c-4 0-8-3-8-7v-48h-29v50c0 21 14 31 33 31h28c18 0 29-13 29-31v-50h-29v48zm162-48v48c0 4-4 7-8 7h-17c-4 0-7-3-7-7v-48h-29v50c0 21 13 31 33 31h28c17 0 28-13 28-31v-50h-28zm-275 0h-19l-10 1v-38H76v118h28v-48c0-4 4-7 8-7h17c4 0 8 3 8 7v48h28v-51c0-22-14-30-32-30" />
  </Icon>
);
const HumblebundleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M333.3,287c4.3,2.4,16.3,8.9,16.2,50.8q0,35.8-24.5,53.6t-71.3,17.7c-33.9,0-59.9-6.6-77.8-19.8s-28.7-39.1-28.8-75c0-27.2,8.3-48.9,24.6-65.1,24.3-22.9,66.4-38.1,67.1-38.4q45.8-17.6,58.8-41.1a31.6,31.6,0,0,0,4.5-16.4c0-5.7-1.4-10-4.5-12.8s-3.5-4.6-1.3-5c4.1.6,17.9,14.6,15.2,31.2a100.9,100.9,0,0,1-11.4,33.8c-5.1,9.2-13.8,20.4-26,33.5-14.8,15.1-29.3,35.1-31.5,38.1-17.8,24.3-11.4,44.2-11.4,44.2,2.1,6.6,8,11.8,18,16-2.6-2.1-9.8-12.1-10-28.7,0-6.9,3.7-16.1,13.5-27.2,5.3-6.9,22.7-19,22.4-19ZM256.2,153.5c0,10.1,4.7,19.7,14.1,29l-16.9,9.4a82.7,82.7,0,0,1-6.9-34,25.2,25.2,0,0,1,12.6-21.6c2.7-1.3,4-1.3,4-.2s-.8,2.5-2.1,3.9c-3.1,3-4.6,7.5-4.8,13.5ZM244,197.4l-32.2,12.5L104.6,153.8c-4.2-2.1-10.2-8.2-4-18.1s12.6-6.5,15.5-5.1Zm53.6,28,145.3,75.1c5.8,3.2,6.7,8.4,2.4,16.6s-10.1,8.6-13.8,6.9L281,245.8Z" fill="#cc2929" />
  </Icon>
);
const I18nextTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M287 154v48l54 140s17 35-31 43H202s-44-5-33-40l57-143v-48h61Zm-84 140-20 47c-9 29 28 32 28 32h90c39-6 27-33 26-34l-18-44c-47-15-87-7-106-1Zm29-47c-6 0-11 6-11 13s5 13 11 13 11-6 11-13-5-13-11-13Zm39-14c-7 0-13 7-13 15 0 9 6 16 13 16s13-7 13-16c0-8-6-15-13-15Z" fill="#009688" />
    <path d="M288 149h-65c-6 0-10-5-10-11 0-5 4-10 10-10h65c5 0 9 5 9 10 0 6-4 11-9 11Zm3 50v-23s30-6 44 28c0 0-22 17-44-5Zm-71 0v-23s-29-6-44 28c0 0 23 17 44-5Zm21 114c0 5-7 9-15 9-9 0-16-4-16-9s7-9 16-9c8 0 15 4 15 9Zm55 0c0 5-7 9-16 9-8 0-15-4-15-9s7-9 15-9c9 0 16 4 16 9Z" fill="#004d40" />
  </Icon>
);
const IbmTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="none" stroke="#1f70c1" stroke-width="12" d="M54 332h404M54 311h404m-224-22h202m-359 0h124M77 267h359M77 246h359m-202-22h202m-359 0h124M54 202h404M54 180h404" />
    <path fill="#fff" d="M111 215h56v81h-56zm33-42v166h-11V173zm197 0l28 76 26-76zm-6 72v94h67v-94l-33 93zm-105-71c34 0 62 49 17 82 44 32 18 82-17 82v3h49v-36l22-10v-77l-22-10v-36h-49z" />
  </Icon>
);
const IheartradioTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" fill="#fff" rx="15%" />
    <path id="h" fill="#c6002b" d="M147.4 301.3c-32.3-28.6 -48.6 -58.4 -48.6 -86.7c0-28.3 15.9 -57.9 36.9 -71.1c10.3-4.4 14.6 8.2 8 12.6c-16.7 10.5-29.9 35.1 -29.9 58.7c0 23.6 14.7 49.6 43.6 75.2c7 8.7-3.8 16.5 -9.9 11.2zm48.5-25.5c-21.9-12.3 -36.6 -36.3 -36.6 -59.4c0-23.1 12.5 -43.7 32.3 -54c10.5-3.7 14 9.3 7 13.2c-15 7.8-24.3 23.3 -24.3 40.2c0.1 18.4 11.7 37.2 29 46.9c8.7 7.1-.6 16.7 -7.4 13.2zM256 253.9c-17.9 0-32.5 -14.5 -32.5 -32.4c0-17.9 14.6 -32.5 32.5 -32.5v-30.7c-19.4-28.9 -52.8 -48.8 -90.3 -48.8c-59.6 0-107.9 48.3 -107.9 107.9c0 37.8 24 65.1 49 90.3l97.9 92.6c6.3 3.9 13.5 1.3 13.6-5.8v-72.1c0-20.9 16.9 -37.8 37.8 -37.8z" />
    <use transform="matrix(-1 0 0 1 510 0)" href="#h" />
  </Icon>
);
const ImdbTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f5c518" />
    <path d="M104 328V184H64v144zM189 184l-9 67-5-36-5-31h-50v144h34v-95l14 95h25l13-97v97h34V184zM256 328V184h62c15 0 26 11 26 25v94c0 14-11 25-26 25zm47-118l-9-1v94c5 0 9-1 10-3 2-2 2-8 2-18v-56-12l-3-4zM419 220h3c14 0 26 11 26 25v58c0 14-12 25-26 25h-3c-8 0-16-4-21-11l-2 9h-36V184h38v46c5-6 13-10 21-10zm-8 70v-34l-1-11c-1-2-4-3-6-3s-5 1-6 3v57c1 2 4 3 6 3s6-1 6-3l1-12z" />
  </Icon>
);
const ImgurTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path stroke="#000" stroke-linecap="round" stroke-width="90" d="M256 211v219" />
    <circle cx="256" cy="91" r="53" fill="#89c623" />
  </Icon>
);
const InstagramTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" id="b" />
    <use fill="url(#a)" href="#b" />
    <use fill="url(#c)" href="#b" />
    <radialGradient id="a" cx=".4" cy="1" r="1">
      <stop offset=".1" stop-color="#fd5" />
      <stop offset=".5" stop-color="#ff543e" />
      <stop offset="1" stop-color="#c837ab" />
    </radialGradient>
    <linearGradient id="c" x2=".2" y2="1">
      <stop offset=".1" stop-color="#3771c8" />
      <stop offset=".5" stop-color="#60f" stop-opacity="0" />
    </linearGradient>
    <g fill="none" stroke="#fff" stroke-width="30">
      <rect width="308" height="308" x="102" y="102" rx="81" />
      <circle cx="256" cy="256" r="72" />
      <circle cx="347" cy="165" r="6" />
    </g>
  </Icon>
);
const IntelTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#0071c5" d="M177 237v62h-20v-78h41c17 0 23 12 23 23v55h-19v-55c0-4-3-7-9-7zm133-1c-11 0-15 7-15 17h31c-1-9-4-17-16-17zm-15 30c0 10 7 17 18 17 9 0 13-2 18-7l12 12c-8 7-16 12-30 12-19 0-37-10-37-40 0-26 8-40 36-40s33 20 33 46zm-36 33c-16 0-23-11-23-23v-76h20v21h15v16h-15v38c0 5 2 7 7 7h8v17zm-119-89h-20v-19h20zm0 90c-15-2-20-11-20-21v-58h20zm237-2c-15-1-20-10-20-21v-88h20zm69-97c-18-88-188-93-298-26v7c110-56 265-56 280 25 4 27-11 55-38 71v21c33-12 66-51 56-98zM246 355c-75 7-155-4-166-63-5-29 8-60 26-80v-10c-32 28-49 63-39 105 12 53 80 84 184 74 41-4 95-18 132-38v-29c-34 20-90 37-137 41z" />
  </Icon>
);
const IntercomTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0E24D1" />
    <path fill="#fff" d="M365 272a10 10 0 01-11 10 10 10 0 01-10-10v-91a10 10 0 0110-10c3 0 6 1 8 3s3 4 3 7v91zm-4 63c-1 2-39 33-108 33s-106-31-108-33a10 10 0 1113-15c1 1 34 28 95 28s95-28 95-28a10 10 0 0114 1 10 10 0 01-1 14zM142 181a10 10 0 0110-10 10 10 0 0110 10v91a10 10 0 01-10 10 10 10 0 01-10-10v-91zm50-20a10 10 0 0111-10 10 10 0 0110 10v135a10 10 0 01-11 10 10 10 0 01-10-10V161zm51-5a10 10 0 0110-10 10 10 0 0111 10v146a10 10 0 01-11 11 10 10 0 01-10-11V156zm51 5a10 10 0 0110-10 10 10 0 0110 10v135a10 10 0 01-10 10 10 10 0 01-10-10V161zm73-56H139a38 38 0 00-35 24c-2 4-3 9-3 14v228a38 38 0 0024 35c4 2 9 3 14 3h228a38 38 0 0035-24c2-4 3-9 3-14V143a38 38 0 00-23-35l-15-3" />
  </Icon>
);
const Internet_archiveTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m81 419h350v18h-350zm14-34h323v25h-323zm-2-284h321v35h-321zm319-10 10-11-169-39-168 39 10 11h158zm-273 154-1-51-3-47c0-2 0-2-2-2a67 67 0 0 0 -28 0c-1 0-2 0-2 2l-2 47a2223 2223 0 0 0 0 127l2 43 1 8 15 3c6-1 11-1 16-3l1-8 2-43a1616 1616 0 0 0 1-76zm88 0-2-51-2-47c0-2-1-2-2-2a67 67 0 0 0 -28 0c-2 0-2 0-2 2l-3 47a2223 2223 0 0 0 0 127l2 43 1 8c5 2 11 2 16 3l16-3v-8l2-43a1620 1620 0 0 0 2-76zm101 0-1-51-3-47c0-2 0-2-2-2a67 67 0 0 0 -28 0c-1 0-2 0-2 2l-2 47a2223 2223 0 0 0 0 127l2 43 1 8 15 3c5-1 11-1 16-3l1-8 2-43a1624 1624 0 0 0 1-76zm85 0-1-51-2-47c0-2-1-2-2-2a67 67 0 0 0 -29 0l-1 2-3 47a2227 2227 0 0 0 0 127l2 43 1 8c5 2 10 2 16 3l15-3 1-8 2-43a1620 1620 0 0 0 1-76z" />
  </Icon>
);
const Itch_ioTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M118 95c-16 10-49 47-49 56v16c0 21 19 38 36 38 21 0 38-17 38-37 0 20 17 37 38 37 20 0 36-17 36-37 0 20 18 37 39 37s39-17 39-37c0 20 16 37 36 37 21 0 38-17 38-37 0 20 17 37 38 37 17 0 36-17 36-38v-16c0-9-33-46-49-56a3511 3511 0 00-276 0zm99 101l-7 9a43 43 0 01-68-9l-7 9c-8 8-19 13-31 13l-4-1-2 46v18c0 36-4 118 16 138 30 7 86 10 142 10s112-3 142-10c20-20 16-102 16-138v-18l-2-46-4 1c-12 0-23-5-31-13l-7-9-7 9a43 43 0 01-68-9 43 43 0 01-38 22h-1-1a43 43 0 01-38-22zm-31 40c12 0 23 0 37 15l33-2 33 2c14-15 25-15 37-15 6 0 29 0 45 46l18 63c13 46-4 47-26 47-31-1-49-24-49-47a371 371 0 01-117 0c1 23-17 46-48 47-22 0-39-1-26-47l18-63c16-46 39-46 45-46zm70 36s-33 31-39 42l22-1v19h34v-19l22 1c-6-11-39-42-39-42z" />
  </Icon>
);
const Itunes_podcastsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="url(#t)" />
    <defs>
      <linearGradient id="t" y1="100%" x2="0">
        <stop stop-color="#832bc1" offset="0" />
        <stop offset="1" stop-color="#f452ff" />
      </linearGradient>
    </defs>
    <path d="M293 294c-8-8-21-13-37-13s-29 5-37 13c-4 5-6 9-7 15-1 12 0 22 1 39a891 891 0 0 0 13 87c3 9 14 18 30 18 17 0 27-9 30-18a891 891 0 0 0 14-126c-1-6-3-10-7-15zm-79-72a42 42 0 1 0 84 0 42 42 0 0 0-84 0zm42-165a180 180 0 0 0-60 350c2 0 4-1 4-3l-3-18c0-3-2-4-4-5a157 157 0 1 1 126 0c-2 1-4 2-4 5l-3 18c0 2 2 3 4 3a180 180 0 0 0-60-350zm-4 82a98 98 0 0 1 71 169c-2 1-3 4-2 6l-1 20c0 2 2 4 4 2a121 121 0 1 0-136 1c2 1 4-1 4-3v-20c0-2-1-5-3-6a97 97 0 0 1 63-169z" fill="#fff" />
  </Icon>
);
const JacobinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="none" stroke="#000" stroke-width="34" d="m166 326a84 84 0 10170 0V124H158" />
  </Icon>
);
const JavaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M274 235c18 21-5 40-5 40s47-24 25-54-35-42 48-90C342 130 211 163 274 235M294 53s40 40-38 100c-62 49-14 77 0 109-36-33-63-61-45-88C238 134 310 115 294 53" fill="#f8981d" />
    <path d="M206 347s-15 8 10 11 46 3 79-3a137 137 0 0 0 21 10C242 397 147 364 206 347m-9-42s-16 12 9 15 58 4 102-5a45 45 0 0 0 16 10C233 351 132 327 197 305m175 73s11 9-12 16c-43 13-179 17-217 1-14-6 15-17 33-17-17-10-98 21-42 30C287 432 412 396 372 378M213 262s-69 16-25 22c19 3 57 2 92-1s57-8 57-8a122 122 0 0 0-17 9c-70 18-206 10-167-9S213 262 213 262m124 69c73-37 39-80 7-66 36-30 101 36-9 68v-2M220 432c69 4 174-2 176-35 0 0-5 12-57 22s-131 10-174 3C166 422 175 429 220 432" fill="#5382a1" />
  </Icon>
);
const JavascriptTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f7df1e" />
    <path d="M324 370c10 17 24 29 47 29c20 0 33-10 33 -24c0-16 -13 -22 -35 -32l-12-5c-35-15 -58 -33 -58 -72c0-36 27 -64 70 -64c31 0 53 11 68 39l-37 24c-8-15 -17 -21 -31 -21c-14 0-23 9 -23 21c0 14 9 20 30 29l12 5c41 18 64 35 64 76c0 43-34 67 -80 67c-45 0-74 -21 -88 -49zm-170 4c8 13 14 25 31 25c16 0 26-6 26 -30V203h48v164c0 50-29 72 -72 72c-39 0-61 -20 -72 -44z" />
  </Icon>
);
const JellyfinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <defs>
      <path d="M190.56 329.07c8.63 17.3 122.4 17.12 130.93 0 8.52-17.1-47.9-119.78-65.46-119.8-17.57 0-74.1 102.5-65.47 119.8z" id="A" />
      <linearGradient id="B" gradientUnits="userSpaceOnUse" x1="126.15" y1="219.32" x2="457.68" y2="410.73">
        <stop offset="0%" stop-color="#aa5cc3" />
        <stop offset="100%" stop-color="#00a4dc" />
      </linearGradient>
      <path d="M58.75 417.03c25.97 52.15 368.86 51.55 394.55 0S308.93 56.08 256.03 56.08c-52.92 0-223.25 308.8-197.28 360.95zm68.04-45.25c-17.02-34.17 94.6-236.5 129.26-236.5 34.67 0 146.1 202.7 129.26 236.5-16.83 33.8-241.5 34.17-258.52 0z" id="C" />
    </defs>
    <use href="#A" fill="url(#B)" />
    <use href="#A" fill-opacity="0" stroke="#000" stroke-opacity="0" />
    <use href="#C" fill="url(#B)" />
    <use href="#C" fill-opacity="0" stroke="#000" stroke-opacity="0" />
  </Icon>
);
const JsonTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a" x1=".175" y1=".15" x2="1" y2=".85">
      <stop offset="0" />
      <stop offset="1" stop-color="#fff" />
    </linearGradient>
    <path id="b" fill="url(#a)" d="M256 64c-99 0-192 81-192 192 0 123 102 192 192 192-21 0-125-23-125-166 0-89 73-139 125-119 0 0 56 21 56 93s-56 93-56 93c51 20 125-27 125-119 0-129-87-166-125-166z" />
    <use transform="rotate(180 256 256)" href="#b" />
  </Icon>
);
const JuliaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle fill="#389826" cx="256" cy="137" r="83" />
    <circle fill="#cb3c33" cx="145" cy="329" r="83" />
    <circle fill="#9558b2" cx="367" cy="329" r="83" />
  </Icon>
);
const KaggleTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#20BEFF" d="M106,103c-.06,.3-.3,.4-.8,.4h-8c-.5,0-.9-.2-1.3-.6L82.746,86.028l-3.655,3.477v13c0,.6-.3,.9-.9,.9h-6.152c-.6,0-.9-.3-.9-.9V44c0-.6,.3-.9,.9-.9h6.1c.6,0,.9,.3,.9,.9v36l15.692-15.87c.416-.415,.832-.624,1.248-.624h8.204c.356,0,.593,.149,.713,.445c.119,.4,.1,.6-.1,.8L88,81C106,102,106,103,106,103" transform="scale(5.5,5.5) translate(-40-30)" />
  </Icon>
);
const KeepassdxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#43A047" />
    <defs>
      <filter id="a" x="-12%" y="-10%" width="124%" height="130%">
        <feDropShadow dx="1" dy="10" stdDeviation="10" flood-opacity=".45" />
      </filter>
    </defs>
    <path fill="#eaeaea" filter="url(#a)" d="M282.79 195.24l-173.43 173.6-.53 34.98 34.97-.53 36.32-36.28h39.14V330.2h36.8v-39.06l57.25-57.18-30.52-38.72z" />
    <path fill="#c6c6c6" filter="url(#a)" d="M108.83 109.36l.53 34.97 258.96 258.96 34.97.53-.53-34.97-258.95-258.97-34.98-.52z" />
    <path fill="#eaeaea" filter="url(#a)" d="M346.22 84.82a82.83 82.83 0 1057.35 24.26 82.85 82.85 0 00-57.35-24.26zm32.53 61.34a24.54 24.54 0 11-24.53 24.54 24.54 24.54 0 0124.53-24.54z" />
  </Icon>
);
const KemalTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#f92727" d="M412 362s-17-156-26-208c0-1-1-3-3-3H257v211h155z" />
    <path fill="#ff4f4f" d="M101 362s17-156 26-208c0-1 1-3 3-3h127v211H101z" />
    <path d="M339 279h-6V151h6z" />
  </Icon>
);
const KeskonfaiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fab12d" />
    <path d="M284.2 404L236 324.8l-29.6 28v43.4q0 15.8-8.4 24.4-8.2 8.4-19 8.4-12.6 0-19.8-8.4-7.2-8.4-7.2-24.8V163q0-18.2 7-27.6 7-9.6 20-9.6 12.6 0 20 8.6t7.4 25.4v132.4l61.4-64.4q11.4-12 17.4-16.4 6-4.4 14.6-4.4 10.2 0 17 6.6 6.8 6.4 6.8 16.2 0 12-22.2 32l-29 26.6 56 88q6.2 9.8 8.8 15 2.8 5 2.8 9.6 0 13-7.2 20.6-7 7.4-18.6 7.4-10 0-15.4-5.4T284.2 404z" />
    <path fill="#fff" d="M298.6 70.1a41.5 41.5 0 00-31.2 65 4239.5 4239.5 0 0134.1 54.9l16.5-26.5 17.6-28.3a41.6 41.6 0 00-37-65zm6.3 17.6a20.8 20.8 0 11-23.5 25.8 20.8 20.8 0 0123.5-25.7z" />
  </Icon>
);
const KeybaseTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#282828">
      <path d="m201 80 22-31 18 10c-9 18-8 24-8 26 8-3 81 10 59 80 0 0 44 12 76 57 29 39 11 104-57 84-58-17-111-13-177 40l32-81-79 102c-3-99 10-140 79-190-23-1-41-18-40-38l2-27c1-19 17-35 37-34 1-1 36 1 36 2zm36 96c-5-6-15 1-9 7l21 25-10 8c-2 2-3 5-1 7l2 3c3 3 6 0 6 0l10-9 10 10-22 17c-2 2-2 5-1 7l9 11c2 2 5 2 7 1l22-17 6 7c5 6 14-1 9-7zm-50-70-21-2c-5 0-10 4-11 9l-1 27c0 6 4 10 9 10l16 1c-1-6 4-36 8-45z" />
      <circle cx="215" cy="348" r="14" />
      <circle cx="298" cy="348" r="14" />
    </g>
  </Icon>
);
const KickstarterTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m188 169v174l47-85 89-89-89 89 89 85" stroke="#034752" stroke-linecap="round" stroke-linejoin="round" stroke-width="163" />
  </Icon>
);
const KoFiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#478db1" />
    <path fill="#fff" d="M371 140H100c-18 0-20 20 -20 20v184s3 40 40 40h188c41 0 40-40 40 -40v-26h23a89 89 0 000-178m0 132h-23v-86h23a43 43 0 010 86" />
    <path fill="#f1464d" d="M286 219c-10-30-63-33-77 3-15-36-67-33-77-3-7 19-4 35 9 54s68 64 68 64 56-45 68-64 15-35 9-54" />
  </Icon>
);
const KodiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#17b2e7">
      <path d="M441.5 269.5L383 327.9c-7 7-14.5 7-21.5 0l-60.3-60.4c-6.8-6.8-6.8-14.3 0-21.1l60.6-60.7c6.6-6.5 14.3-6.5 20.9 0l58.7 58.8c9 8.7 8.4 16.6 0 25z" />
      <path d="M245 441l-58.3-58.5c-7-7-7-14.4 0-21.4l60.4-60.4c6.7-6.7 14.3-6.7 21 0l60.4 60.4c6.9 6.9 7 14.5 0 21.4l-58.8 59c-8.6 8.7-16.5 7.6-24.7-.6z" />
      <path d="M184 141.5c0-6.5 1.5-11.6 6.4-15.8 18.8-18.4 39-38.9 55.6-55.5 7-7 14.4-7 21.3 0l60.3 60.3c6.9 6.9 6.9 14.5 0 21.4L193.4 286.2c-7.8 4.2-9-1.5-9.2-7.7-.4-47.1.4-93.2-.2-137z" />
      <path d="M136.1 319c.1 5.2-3.7 10.9-7.7 7l-61-61a10.4 10.4 0 0 1 0-15.4l60.2-61c5.5-5.6 8.2 1.6 8.5 6.7V319z" />
    </g>
  </Icon>
);
const KotlinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#27282c" />
    <path fill="#09d" d="M410 410H102V102h154v154" />
    <path fill="#f80" d="M410 102H256L102 267v143" />
  </Icon>
);
const LaravelTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m103 136v226l130 73 132-73v-75l-68-38-64 37v-150l-66-38z" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m103 136 64 38v151l66 37 132-75" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m167 175 66-38" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m167 325 66-39" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m233 362v73" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m365 287 66-38v-78l-66-38-68 38v78" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m297 171 68 39 66-39" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
    <path d="m365 209v75" stroke="#ff2d20" stroke-linejoin="round" stroke-width="11" fill="none" />
  </Icon>
);
const LastpassTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#d32d27" />
    <g stroke-linecap="round" stroke="#fff">
      <path d="M108 256zm119 0zm120 0z" stroke-width="88" />
      <path d="M438 170 v172" stroke-width="20" />
    </g>
  </Icon>
);
const LiberapayTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f6c915" />
    <path fill="#fff" d="M209 359c-17 0-30-2-39-7-10-4-16-10-20-17-4-8-6-16-6-26s1-20 4-31l44-185 54-8-48 201-2 11c0 4 0 7 2 9 1 3 4 5 7 7l14 3-10 43M404 243c0 17-3 33-9 47a103 103 0 0 1-59 60 117 117 0 0 1-68 7l-16 63h-51l57-241a305 305 0 0 1 71-11c13 0 24 2 34 6a63 63 0 0 1 36 40c3 9 5 19 5 29m-127 72l15 1c9 0 17-1 25-5 7-3 13-8 19-14 5-6 9-13 12-22 3-8 4-18 4-28s-2-18-6-25c-5-7-13-11-23-11l-21 2-25 102" />
  </Icon>
);
const LineTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#00B900" />
    <path d="m443 231c-2 45-21 76-51 103-53 47-137 105-148 96-11-14 21-47-20-52-88-12-155-74-155-147 0-82 85-150 188-150s189 68 186 150z" fill="#fff" />
    <path d="m371 232h-34m34-36h-36v72h36m-123 0v-72l54 72v-72m-89 72v-72m-66 0v72h37" fill="none" stroke="#00B900" stroke-linecap="round" stroke-linejoin="round" stroke-width="21" />
  </Icon>
);
const LinkedinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0077b5" />
    <circle cx="142" cy="138" r="37" />
    <path stroke="#fff" stroke-width="66" d="M244 194v198M142 194v198" />
    <path d="M276 282c0-20 13-40 36-40 24 0 33 18 33 45v105h66V279c0-61-32-89-76-89-34 0-51 19-59 32" />
  </Icon>
);
const LinuxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g transform="matrix(2 0 0 2 256 256)">
      <path d="M-32-25c-3 7-24 29-22 51 8 92 36 30 78 53 0 0 75-42 15-110-17-24-2-43-13-59s-30-17-44-2 6 37-14 67" />
      <path d="M42 21s9-18-8-31c16 17 6 32 6 32h-3C36-13 27 6 14-56 29-73 0-88 0-60h-9c1-24-20-12-8 5-1 37-23 52-23 78-7-18 6-32 6-32s-18 15-7 37 31 17 17 27c22 15 56 5 55-27 1-8 22-5 24-3s-3-4-13-4m-56-78c-7-2-5-11-2-11s8 7 2 11m19 1c-5-7-1-14 4-13s5 13-4 13" fill="#eee" />
      <g fill="#fc2" stroke="#333" stroke-width="1">
        <path d="M-41 31l21 30c11 7 5 35-25 21-17-5-31-4-33-13s4-10 3-14c-4-22 14-11 19-22s5-16 15-2M71 45c-4-6 0-17-14-16-6 12-23 24-24 0-10 0-3 24-7 35-9 27 17 29 28 16l26-18c2-3 5-6-9-17m-92-92c-3-6 11-14 16-14s12 4 19 6 4 9 2 10S3-35-5-35s-10-8-16-12" />
        <path d="M-21-48c8 6 17 11 35-3" />
      </g>
      <path d="M-10-54c-2 0 1-2 2-1m7 1c1-1-1-2-3-1" />
    </g>
  </Icon>
);
const Linux_mintTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <filter id="b">
      <feGaussianBlur stdDeviation="3" />
    </filter>
    <linearGradient id="g">
      <stop stop-color="#c7f994" offset="0" />
      <stop stop-color="#87cf3e" offset="1" />
    </linearGradient>
    <use href="#p" filter="url(#b)" opacity=".5" />
    <g fill="#fff">
      <path id="p" d="M59.6 97.5v100h40v101a121 121 0 00120 120h198v-201a121 121 0 00-120-120z" />
    </g>
    <path fill="url(#g)" d="M83.6 122.2v51.3h13.3a25 25 0 0124 24v94.9c-.3 55.9 46.7 101.4 101.5 101.5H365c13.9-.1 25-11.4 25-25V224c.3-56-46.7-101.5-101.6-101.7H83.6z" />
    <path d="M83.6 122.2v51.3h13.3a25 25 0 0124 24v94.9c-.3 55.9 46.7 101.4 101.5 101.5H365c13.9-.1 25 -11.4 25 -25V224c0.3-56 -46.7 -101.5 -101.6 -101.7H83.6z" opacity=".1" filter="url(#b)" />
    <g fill="none" stroke="#fff" stroke-width="32">
      <path d="M160 144v160a48 48 0 0048 48h32m112-48v-80a32 32 0 00-64 0v80m0-80a32 32 0 00-64 0v80" />
      <path d="M240 352h64a48 48 0 0048-48" opacity=".5" />
    </g>
  </Icon>
);
const LobstersTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ac130c" />
    <path d="m420.955 428.064h-308.597v-23.49c9.85-.296 17.913-1.183 24.189-2.688 12.981-3.332 21.501-10.844 23.88-22.831 1.21-6.585 2.27-15.078 2.27-25.533v-199.802c-1.549-21.164-1.89-43.092-23.906-47.935-5.375-1.478-15.951-2.526-24.915-3.13v-21.005h170.627v21.004c-10.16.296-23.504 1.196-29.78 2.688-23.436 6.18-21.125 32.869-21.004 51.509v183.326c-.874 33.903 8.761 51.76 41.162 57.61 23.315-.202 44.078.403 64.947-3.373 21.596-4.435 39.616-18.895 48.378-36.62 4.784-9.85 10.55-33.018 10.55-45.018h22.24z" fill="#fff" />
  </Icon>
);
const LockTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#29303d" />
    <g fill="#29303d">
      <path stroke="#e0e4eb" stroke-width="32" d="M346 214v-37c0-123-180-123-180 0v37" />
      <rect fill="#ff0" height="210" rx="5%" width="280" x="115" y="210" />
      <circle cx="256" cy="296" r="28" />
      <path d="M262 296h-12l-16 69h44" />
    </g>
  </Icon>
);
const LogitechTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#00a7e0" d="M348.9 390.7H426V223.3H258.6v77.1h90.3v90.3zm-91.8-24.5a109.4 109.4 0 0 1 0-218.8V70C153 70 68.9 153.8 68.9 256.6s84.5 186.7 187.9 186.7l.3-77.1z" />
  </Icon>
);
const LuckyframeworkTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <radialGradient id="a" cx="7.25" cy="4" r="7.73">
      <stop offset=".975" stop-color="#9cfd65" />
      <stop offset=".975" stop-color="#34db96" />
      <stop offset="1" stop-color="#34db96" />
      <stop offset="1" stop-color="#1b92b1" />
    </radialGradient>
    <path stroke="url(#a)" stroke-linejoin="round" stroke-width="150" d="M146.1 351.1H366L256 161z" />
  </Icon>
);
const MacosTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M282 170v-4c-52 0-5 34 0 4zm24-18c7-21 43-23 47 3h-10c-3-15-28-16-28 11 0 15 23 24 28 6h10c-6 33-59 21-47-20zm-146-16h10v9c5-12 27-13 31 1 7-15 35-14 35 7v37h-11v-34c0-15-22-15-22 1v33h-11v-35c-2.447-9.36-14.915-11.23-20-3l-2 5v33h-10zm23 259c-47 0-76-33-76-86s29-85 76-85 77 33 77 85-29 86-77 86zm88-205c-29 7-33-30-3-31l14-1v-4c1-12-19-13-22-2h-10a14 14 0 012-7c8-14 41-14 41 8v37h-10v-9a18 18 0 01-12 9zm68 205c-36-2-61-19-63-49h24c23 72 146-5 25-30-19-4-33-13-39-24-38-74 109-96 113-20h-23c-7-49-98-22-65 12 14 14 43 13 64 22 50 23 26 91-36 89zM183 245c-32 0-52 25-52 64s20 64 52 64 53-24 53-64-20-64-53-64z" />
  </Icon>
);
const MailTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#328cff" />
    <path d="m250 186c-46 0-69 35-69 74 0 44 29 72 68 72 43 0 73-32 73-75 0-44-34-71-72-71zm-1-37c30 0 57 13 77 33 0-22 35-22 35 1v150c-1 10 10 16 16 9 25-25 54-128-14-187-64-56-149-47-195-15-48 33-79 107-49 175 33 76 126 99 182 76 28-12 41 26 12 39-45 19-168 17-225-82-38-68-36-185 67-248 78-46 182-33 244 32 66 69 62 197-2 246-28 23-71 1-71-32v-11c-20 20-47 32-77 32-57 0-108-51-108-108 0-58 51-110 108-110" fill="#fff" />
  </Icon>
);
const MailchimpTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect rx="15%" width="512" height="512" fill="#fd2" />
    <path fill="#222" d="M418 306l-6-17s25-38-37-51c0 0 4-47-18-69 48-47 37-118-72-72-56-107-272 144-182 184-9 12-9 72 53 78 42 90 144 96 203 69s93-113 59-122zm-263 40c-51-5-56-75-12-82s55 86 12 82zm-15-95c-14 0-31 19-31 19-68-33 123-252 164-167 0 0-100 48-133 148zm200 85c0-4-21 6-59-7 3-21 48 18 123-33l6 21c28-5 0 90-90 89-73-1-96-76-56-117 8-8-29-24-22-59 3-15 16-37 49-31s40-24 62-13 9 53 12 59 35 7 41 24-41 54-114 44c-17-2-27 20-16 34 22 32 112 11 127-20-38 29-116 40-122 9 22 10 59 4 59 0zm-131-158c22-27 51-43 51-43l-6 15s21-16 44-16l-8 8c26 1 37 11 37 11s-61-18-118 25zm135 39c13-1 9 29 9 29h-8s-14-28-1-29zm-59 33c-9 1-19 6-18 2 4-16 41-12 40 2s-9-6-22-4zm21 12c1 2-7 0-13 1s-12 4-12 2 23-11 25-3zm20 3c3-6 15 0 12 6s-15 0-12-6zm25 2c-6 0-6-13 0-13s6 14 0 14zm-180 53c3 3-6 9-13 4s8-29-10-35-13 17-18 14 7-35 28-22-6 33 6 39 5-2 7 0z" />
  </Icon>
);
const MaltTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#FC5656" d="m408.4 103.8c-32.5-32.4-67.1-11.4-88.8 10.2L114.8 318.8c-21.7 21.7-44.4 54.7-10.2 88.8c34.1 34.1 67 11.4 88.7-10.3l204.8-204.8c21.7-21.6 42.7-56.3 10.3-88.7zm-195.7-8.4 43.4 43.4 44.1-44.2c3-3 6-5.8 9.1-8.4c-4.6-23.3-17.9-44.4-53.3-44.4c-35.4 0-48.7 21.2-53.2 44.5c3.3 2.9 6.6 5.8 9.9 9.1zm87.5 322.1-44.1-44.1-43.4 43.3c-3.3 3.3-6.5 6.4-9.8 9.2c5 23.8 19 45.5 53.1 45.5c34.2 0 48.3-21.9 53.2-45.7c-3-2.6-6-5.2-9-8.2zm-105.9-217h-83.6c-30.7 0-70 9.7-70 55.5c0 34.3 21.9 48.3 45.8 53.2c2.8-3.2 107.8-108.7 107.8-108.7zm231.5 2.3c-2.6 3-107.9 108.8-107.9 108.8h82.4c30.7 0 70-7.3 70-55.6c0-35.3-21.1-48.6-44.5-53.2zm-204.1-29.7 14.9-14.9-43.3-43.4c-21.7-21.7-54.6-44.4-88.8-10.2c-25 25-19.4 49.4-6.2 69.1c4.1-.3 123.4-.6 123.4-.6zm68.7 165.9-15 15 44.2 44.1c21.7 21.7 56.3 42.7 88.7 10.3c24.2-24.2 18.7-49.7 5.3-70c-4.3.3-123.2.6-123.2.6z" />
  </Icon>
);
const ManjaroTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <polygon fill="#4db05e" points="301 192 301 102 102 102 102 410 192 410 192 192 301 192" />
    <rect fill="#4db05e" x="211" y="211" width="90" height="199" />
    <rect fill="#4db05e" x="320" y="102" width="90" height="308" />
  </Icon>
);
const MarkdownTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M410 366H102C88 366 76 354 76 340V170c0-14 12 -26 26 -26h307c14 0 26 12 26 26v170c0 14-11 26 -25 26zM102 162c-4 0-9 4 -9 9v170c0 5 4 9 9 9h307c5 0 9-4 9 -9V170c0-5 -4 -9 -9 -9c1 0-307 0 -307 0zm26 153V196h34l34 43l34-43H265V314h-34v-68l-34 43l-34-43v68zm216 0l-52-57h34v-61h34v60h34z" />
  </Icon>
);
const MastodonTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path d="m409 290c-5 24-43 50-85 56-86 11-137-6-137-6 3 13-4 54 70 52 31 0 58-7 58-7l2 27c-51 24-107 15-140 6-67-17-79-90-81-162v-59c0-74 49-96 49-96 50-24 180-22 222 0 0 0 49 22 49 96 0 0 1 55-7 93" fill="#3088d4" />
    <path d="m358 202v91h-35v-88c0-18-8-27-23-27-18 0-27 11-27 33v47h-34v-47c0-22-9-33-27-33-15 0-23 9-23 27v88h-35v-91c0-18 5-60 52-60 39 0 50 37 50 37s10-37 50-37c45 0 52 42 52 60" />
  </Icon>
);
const MattermostTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M429.6 174.4a190 190 0 00-55.3-69.8l2 41.2l2.2 2.9a141.3 141.3 0 0125.3 113.6a144.8 144.8 0 01-179 112.7C153 357 105 283.4 118.6 210.6c10.7-57.5 44.7 -95.8 99.9 -115.2l2-.8l1.6-1.2l20.1-29A190.9 190.9 0 0065 237.5a191.5 191.5 0 00152.4 206.1a191.2 191.2 0 00222-132c14.3-46.7 11 -92.8 -9.7 -137.3zm-236 61.7a69.7 69.7 0 0078.5 62.4a70 70 0 0060.3-81.3c-5.7-30.2 -12.1 -60.3 -18.2 -90.4l-7.8-38.1l-2 1.7l-40.2 39.5l-49 48a68.1 68.1 0 00-21.5 58.2z" />
  </Icon>
);
const MediumTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#12100e" />
    <path fill="#fff" d="M125 173c0-4-2-9-5-11l-31-38v-6h98l75 166 67-166h93v6l-27 26c-2 1-3 4-3 7v190c0 3 1 6 3 8l27 25v6H289v-6l27-26c3-3 3-4 3-8V193l-76 192h-10l-88-192v129c-1 5 1 11 5 15l35 43v5H85v-5l35-43c4-4 6-10 5-15z" />
  </Icon>
);
const MeetupTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ed1c40" />
    <path d="m335 138c6 1 21-16 54-7 57 17 11 98 4 113-10 19-53 101-13 109 18 4 46 0 42 26-3 27-65 13-77 7-52-22-39-77-14-118 10-21 45-70 23-78-14-5-29 34-34 45-6 12-44 86-52 98-20 32-57 16-49-11 11-35 56-116 29-120-14-2-21 14-25 23-8 16-38 102-53 134-19 40-99 23-85-37 5-23 34-113 40-129 12-30 24-69 70-70 13 0 33 15 47 20 14 4 24-24 50-26 32-2 31 20 43 21z" fill="#fff" />
  </Icon>
);
const MessengerTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a" x1="256" x2="256" y1="78.2" y2="441.2" gradientUnits="userSpaceOnUse">
      <stop offset="0" stop-color="#00B2FF" />
      <stop offset="1" stop-color="#006AFF" />
    </linearGradient>
    <path fill="url(#a)" d="M256 78.2c-102.4 0-181.8 75 -181.8 176.4c0 53 21.7 98.8 57 130.4a14.7 14.7 0 015 10.4l1 32.3a14.6 14.6 0 0020.4 12.9l36-16a14.5 14.5 0 019.8-.7a197.8 197.8 0 0052.6 7c102.4 0 181.8-75 181.8 -176.3S358.4 78.2 256 78.2z" />
    <path fill="#fff" d="M146.8 306.1l53.4-84.7a27.3 27.3 0 0139.5-7.3l42.5 31.9a11 11 0 0013 0l57.5-43.6c7.6-5.8 17.6 3.4 12.5 11.5l-53.4 84.7a27.3 27.3 0 01-39.4 7.3L229.9 274a11 11 0 00-13.2 0l-57.4 43.6c-7.6 5.8-17.6 -3.4 -12.5 -11.5z" />
  </Icon>
);
const MicroformatsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <defs>
      <linearGradient id="b" y2="1">
        <stop offset="0" stop-color="#6ba140" />
        <stop offset="1" stop-color="#77ae40" />
      </linearGradient>
      <linearGradient id="m" y2="1">
        <stop offset="0" stop-color="#92c73c" />
        <stop offset="1" stop-color="#78b143" />
      </linearGradient>
      <linearGradient id="t" y2="1">
        <stop offset="0" stop-color="#BCD531" />
        <stop offset="1" stop-color="#94c63a" />
      </linearGradient>
    </defs>
    <g stroke="#fff" stroke-width="15">
      <rect x="108" y="159" width="246" height="246" rx="51" fill="url(#b)" />
      <rect x="192" y="126" width="192" height="192" rx="39" fill="url(#m)" />
      <rect x="276" y="114" width="132" height="132" rx="24" fill="url(#t)" />
    </g>
  </Icon>
);
const MicrosoftTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M75 75v171h171v-171z" fill="#f25022" />
    <path d="M266 75v171h171v-171z" fill="#7fba00" />
    <path d="M75 266v171h171v-171z" fill="#00a4ef" />
    <path d="M266 266v171h171v-171z" fill="#ffb900" />
  </Icon>
);
const MinecraftTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#111" />
    <g id="a" transform="matrix(19 11 0 22 76 142)">
      <path fill="#432" d="M.5.5h9v9h-9" />
      <path stroke="#864" d="M2 8v1h2V8h5V7 H7V5" />
      <path stroke="#643" d="M1 5zM2 9zM1 8V7h2V6h1M5 9h2V8H6V4M7 6h1v1M9 9zM9 4v1" />
      <path stroke="#a75" d="M1 7h1M4 7h1M9 6z" />
      <path stroke="#555" d="M5 5z" />
      <path stroke="#593" d="M4 4V1h4v2H7V2H4v1H2v1" />
      <path stroke="#6a4" d="M2 1h1M6 1zM7 2zM9 1v1" />
      <path stroke="#7c5" d="M5 3zM3 2h1" />
      <path stroke="#9c6" d="M1 1v1h1M8 1z" />
    </g>
    <use href="#a" transform="matrix(-1 0 0 1 513 0)" opacity=".5" />
    <g transform="matrix(-19 11-19-11 447 159)">
      <path fill="#7b4" d="M.5.5h9v9h-9" />
      <path stroke="#8c5" d="M1 1zM3 1zM4 7zM3 4v2H1v2h3v1h2V7M2 3h4V1H5v1h3M7 4v1H4M9 4v2H8v3" />
      <path stroke="#ad7" d="M1 3v2M1 7zM1 9zM3 3zM4 4zM5 1zM5 3zM5 5v1M5 8v1M7 2v1M8 7h1" />
    </g>
  </Icon>
);
const NetflixTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M279 89v148l-6-17-8 165 12 33 10 1a757 757 0 0 1 58 5V89h-66z" fill="#b20710" />
    <path d="M161 89v335l12-1 21-2 32-2 1-71v-71l5 14 2 6 8-165-3-8-12-34v-1h-66z" fill="#b20710" />
    <linearGradient id="a" x1="209" x2="297" y1="271" y2="241" gradientUnits="userSpaceOnUse">
      <stop offset="0" stop-color="#b20710" />
      <stop offset=".5" />
      <stop offset="1" stop-color="#b20710" />
    </linearGradient>
    <path fill="url(#a)" d="M161 89s66 238 66 234v-46l5 14 45 127 10 1a754 754 0 0 1 58 5l-66-236v49l-6-17-34-96-12-34-1-1h-65z" />
    <path fill="#e50914" d="m161 89 66 188 5 14 45 127 10 1a757 757 0 0 1 58 5l-66-187-6-17-34-96-12-34v-1h-66z" />
  </Icon>
);
const NextcloudTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0082c9" />
    <g stroke="#fff" stroke-width="33" fill="none">
      <circle r="40" cy="256" cx="120" />
      <circle r="71" cy="256" cx="256" />
      <circle r="40" cy="256" cx="392" />
    </g>
  </Icon>
);
const NhsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#005EB8" />
    <path fill="#FFF" d="M448 333V178H64v155zM218 193l-26 125h-42l-26-86-18 86H75l27-125h41l26 87 18-87zm119 0l-26 125h-33l11-54h-40l-11 54h-33l26-125h33l-10 48h40l10-48zm97 4l-8 24c-7-3-16-5-28-5-13 0-24 2-24 12 0 17 49 11 49 49 0 34-33 43-62 43-13 0-27-3-38-7l8-25c6 4 19 7 30 7s27-2 27-15c0-19-48-12-48-47 0-32 28-42 55-42 16 0 30 2 39 6" />
  </Icon>
);
const NpmTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="none" stroke="#cb3837" stroke-width="22" d="m234 311h213v-112H65v112h113V210m-12 123h90M133 232v68m112-68v45m45-67v90m67-68v68m45-68v68" />
  </Icon>
);
const OkTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#EE8208" />
    <path d="M256 137a36.5 36.5 0 0136.5 36.5a36.5 36.5 0 01-36.5 36.5a36.5 36.5 0 01-36.5-36.5a36.5 36.5 0 0136.5-36.5zm0 124.5c48.6 0 88-39.5 88 -88s-39.5-88 -88 -88s-88 39.5-88 88s39.5 88 88 88m35.6 71.9a164.8 164.8 0 0051-21a25.8 25.8 0 008-35.6a25.8 25.8 0 00-35.6-8a111.9 111.9 0 01-118.6 0a25.8 25.8 0 00-35.6 8a25.8 25.8 0 008 35.6c15.9 10 33 17 51 21l-49 49.3a25.8 25.8 0 0036.5 36.5l48.4-48.5l48.4 48.4a25.8 25.8 0 0036.5 0a25.8 25.8 0 000-36.5l-49.3-49.3" fill="#fff" />
  </Icon>
);
const OlympicsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g stroke-width="11.4" stroke="#000" fill="none">
      <circle cx="115.6" cy="226" r="59.1" stroke="#0081c8" />
      <circle cx="256" cy="226" r="59.1" />
      <circle cx="396.4" cy="226" r="59.1" stroke="#ee334e" />
      <circle cx="185.8" cy="286" r="59.1" stroke="#fcb131" />
      <circle cx="326.2" cy="286" r="59.1" stroke="#00a651" />
      <path d="m162.9 190.5a59.1 59.1 90 010 70.9" stroke="#0081c8" />
      <path d="m303.3 190.5a59.1 59.1 90 010 71M256 285.1a59.1 59.1 90 01-35.5-11.8" />
      <path d="m396.4 285.1a59.1 59.1 90 01-35.5-11.8" stroke="#ee334e" />
    </g>
  </Icon>
);
const OpenbenchesTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <circle cx="256" cy="256" r="250" fill="#11b0a3" />
    <path d="M9 319 a258 258 0 0 0 495 0" fill="#8c5015" />
    <g stroke-width="12" stroke="#000">
      <rect x="110" y="228" width="139" height="37" fill="#fb0" stroke="#fff" stroke-width="24" />
      <g fill="#007200">
        <path d="M503 318h-114c12-35 41-15 41-15 7-27 38-27 38-27 2-30 24-39 37-37" />
        <circle cx="365" cy="174" r="64" />
      </g>
      <path d="M65 276H299m-187-2v44m135-43v42m20-41V215H91v61M365 170V318M330 170l36 35m37-33-39 39M133 108s33-3 39 16c-8-31 14-40 14-40m13 44s26 21 16 39c14-28 36-19 36-19M49 401l436-40M82 438l99-19m-63 48 189-53M158 488l302-86M9 319H502" />
      <circle cx="256" cy="256" r="250" />
    </g>
  </Icon>
);
const OpenbugbountyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m304 69c-44 0-81 29-97 70h97z" />
    <path d="m145 105c-1-.05-3 .02-4 .2-11 2-19 12-17 24 6 38 31 61 53 74 .5 15 3 29 6 43h-61c-11 0-20 9-20 21 0 11 9 21 20 21h76c6 11 13 22 20 31-27 20-52 55-64 74-6 9-4 22 6 28 3 2 7 3 11 3 7 0 13-3 17-9 20-31 47-60 60-68 17 11 35 19 55 21v-202h-111c-13-9-26-22-29-43-2-10-10-17-19-17z" fill="#f67909" />
  </Icon>
);
const OpencastTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m38 256 156-156v72l-84 84 84 84v72z" fill="#24425d" />
    <path d="M474 256L318 100v72l84 84-84 84v72zm-124 0L194 100v72l84 84-84 84v72z" fill="#4bb07b" />
  </Icon>
);
const OpencollectiveTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m409 255c0 30-9 59-24 83l61 62c30-40 49-91 49-145s-19-105-49-145l-61 62c15 24 24 52 24 83z" fill="#b8d3f4" />
    <path d="m256 409c-84 0-153-69-153-154s69-154 153-154c31 0 59 9 83 25l61-62c-40-30-90-49-144-49-132 0-240 107-240 241s108 239 240 239c55 0 105-19 146-49l-61-62c-24 15-53 24-84 24z" fill="#3385ff" />
  </Icon>
);
const OpencoresTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#27529d" />
    <g fill="none" stroke="#fff" stroke-width="48">
      <circle cy="192" cx="192" r="84" />
      <circle stroke-dasharray="0 67 396 999" cy="320" cx="320" r="84" />
    </g>
  </Icon>
);
const OpensourceTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <path fill="#3da639" stroke="#1d531d" stroke-width="14" stroke-linejoin="round" d="M192 430a180 180 0 11128 0l-40-109a63 63 0 10-87-58c0 26 16 49 39 58z" />
  </Icon>
);
const OpenvpnTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#036" d="M315.9 261.2c0-33.6-27-60.7-60.7-60.7A60.6 60.6 0 0 0 233.8 318l-23.7 124.7h90.2l-23-124.7a61 61 0 0 0 38.6-56.7" />
    <path fill="#ea7e20" d="M448 260.4C448 155.4 361.8 70 256 70S64 155.3 64 260.4c0 69.7 37.7 130.4 94.4 163.2l12.3-81.2A112.7 112.7 0 0 1 141 267c0-62.3 51-113.2 114-113.2 63.3 0 114.1 50.9 114.1 113.2 0 29.6-11.5 55.8-29.5 76.3l12.3 81.3c57.4-32.9 96-94.4 96-164.1" />
  </Icon>
);
const OperaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M185.2 377.2c-23.7-28-39.1-69.6-40.2-116.1v-10.2c1-46.5 16.5-88 40.2-116 30.9-40.1 76.7-65.5 128-65.5 31.4 0 60.9 9.6 86 26.3A214.2 214.2 0 0 0 256.9 41h-.8a215 215 0 1 0 143.3 375.3 155.1 155.1 0 0 1-86.2 26.3c-51.2 0-97-25.4-127.9-65.4" fill="#ff1b2d" />
    <path d="M185.2 134.8c19.7-23.2 45.2-37.3 73-37.3 62.7 0 113.4 71 113.4 158.5s-50.7 158.5-113.3 158.5c-27.9 0-53.3-14-73-37.3 30.8 40 76.6 65.4 127.8 65.4 31.5 0 61-9.6 86.2-26.3 44-39.4 71.7-96.6 71.7-160.3 0-63.7-27.7-121-71.7-160.3A155.1 155.1 0 0 0 313 69.4c-51.2 0-97 25.4-127.9 65.4" fill="#a70014" />
  </Icon>
);
const OrcidTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="256" fill="#a6ce39" />
    <path d="m173 372h-31v-214h31zm45-214h83c79 0 114 57 114 107 0 55-43 107-114 107h-84zm31 187h49c70 0 86-53 86-79 0-43-27-79-87-79h-47zm-71-231c0 11-9 20-20 20s-20-9-20-20a20 20 0 0 1 20-20c11 0 20 9 20 20z" fill="#fff" />
  </Icon>
);
const OriginTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#f15a23">
      <path d="M256 100.411c85.855 0 155.563 69.724 155.563 155.605S341.855 411.624 256 411.624 100.437 341.9 100.437 256.016 170.145 100.411 256 100.411zm0 94.919c33.485 0 60.668 27.195 60.668 60.686S289.485 316.705 256 316.705s-60.668-27.195-60.668-60.689S222.515 195.33 256 195.33z" />
      <path d="M256 53.724c1.513-4.001.025-5.543-4.032-5.948-4.486-1.467-87.421 46.58-124.109 119.297-36.774 72.887 108.058-65.305 108.058-65.305 7.367-27.017 8.724-31.416 20.083-48.044zm.096 404.548c-1.52 3.997-.036 5.543 4.017 5.951 4.486 1.475 87.51-46.416 124.334-119.062 36.909-72.819-108.179 65.099-108.179 65.099-7.417 27.007-8.784 31.405-20.172 48.012z" />
    </g>
  </Icon>
);
const OutlookTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M398 246v24l15-8s0-7-5-9l-10-6z" fill="#136" />
    <rect width="231" height="270" x="168" y="107" fill="#05a" rx="3%" />
    <path fill="#17d" d="M168 150h77v70h-77z" />
    <path fill="#3ae" d="M245 150h77v70h-77z" />
    <path fill="#5cf" d="M322 150h77v70h-77z" />
    <path fill="#17d" d="M245 220h77v70h-77z" />
    <path fill="#3ae" d="M322 220h77v70h-77z" />
    <path fill="#136" d="M168 290h77v70h-77z" />
    <path fill="#17d" d="M322 290h77v70h-77z" />
    <path d="M413 261v128c0 7-2 15-7 18-3 2-124-71-124-71l131-75z" fill="#19e" />
    <path d="M160 266c-4 3-6 7-6 12v117c0 8 6 14 14 14h230c4 0 5 0 8-2" fill="#2ae" />
    <rect width="172" height="172" x="70" y="172" fill="#18e" rx="3%" />
    <path d="M154 305c-23 0-43-18-43-45 0-28 16-48 44-48 27 0 43 21 43 46 0 29-18 47-44 47zm1-75c-16 0-23 14-23 29 0 18 11 28 22 28 14 0 23-10 23-28s-8-29-22-29z" fill="#fff" />
  </Icon>
);
const OvercastTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="none" stroke="#fc7e0f">
      <circle cx="255" cy="255" r="175" />
      <path d="m160 181.1s-24.2 27.3-24.2 75 24.2 73.9 24.2 73.9" />
      <path d="m352.8 181.1s24.2 27.3 24.2 75-24.2 73.9-24.2 73.9" />
      <path d="m314.2 213s16.3 20.3 15.9 43c-.5 27.3-15.7 42.3-15.7 42.3" />
      <path d="m197.8 213s-16.3 20.3-15.9 43c.5 27.3 15.7 42.3 15.7 42.3" />
    </g>
    <g fill="#fc7e0f">
      <circle cx="255" cy="255" r="32" />
      <path d="m260.4 284.9-22.7-6.1-37.8 141.2 22.7 6.1z" />
      <path d="m251.6 284.7 22.6-6 37.6 141.3-22.6 6z" />
      <path d="m230.6 360.9 8.4-8.6 58.2 56.7-8.4 8.6z" />
      <path d="m279.9 361.2-7.6-7.7-57.7 57.3 7.6 7.7z" />
    </g>
  </Icon>
);
const OverleafTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M118 304c0 41 23 79 60 99 37 19 81 17 115-7 34-23 52-64 47-105s-32-76-71-91c-13-5-26-8-40-7.5-24 16-44 39-56 65 41-43 99-30 123 16 21 52-16 103-67 104-54-2.7-85-55-77-100 14-86 117-135 193-154-35 17-69 36-101 58 92 35 107-42 149-76-43-17-197-25-198 68-44 28-75 72-77 130z" fill="#46a247" />
  </Icon>
);
const PatreonTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#052d49" />
    <circle cx="310" cy="223" r="113" fill="#fff" />
    <path fill="#f96854" d="M109 410V110h56v300" />
  </Icon>
);
const PaypalTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#002c8a" d="M377 184.8L180.7 399h-72c-5 0-9-5-8-10l48-304c1-7 7-12 14-12h122c84 3 107 46 92 112z" />
    <path fill="#009be1" d="M380.2 165c30 16 37 46 27 86-13 59-52 84-109 85l-16 1c-6 0-10 4-11 10l-13 79c-1 7-7 12-14 12h-60c-5 0-9-5-8-10l22-143c1-5 182-120 182-120z" />
    <path fill="#001f6b" d="M197 292l20-127a14 14 0 0 1 13-11h96c23 0 40 4 54 11-5 44-26 115-128 117h-44c-5 0-10 4-11 10z" />
  </Icon>
);
const PdfTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#c80a0a" />
    <path fill="#fff" d="M413 302c-9-10-29-15-56-15-16 0-33 2-53 5a252 252 0 0 1-52-69c10-30 17-59 17-81 0-17-6-44-30-44-7 0-13 4-17 10-10 18-6 58 13 100a898 898 0 0 1-50 117c-53 22-88 46-91 65-2 9 4 24 25 24 31 0 65-45 91-91a626 626 0 0 1 92-24c38 33 71 38 87 38 32 0 35-23 24-35zM227 111c8-12 26-8 26 16 0 16-5 42-15 72-18-42-18-75-11-88zM100 391c3-16 33-38 80-57-26 44-52 72-68 72-10 0-13-9-12-15zm197-98a574 574 0 0 0-83 22 453 453 0 0 0 36-84 327 327 0 0 0 47 62zm13 4c32-5 59-4 71-2 29 6 19 41-13 33-23-5-42-18-58-31z" />
  </Icon>
);
const PhoneTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#20df40" />
    <path fill="#fff" d="M395 338c-10-9-22-17-33-23-23-16-43-17-59 6-10 14-23 16-37 10-39-18-68-43-84-82-8-16-8-31 10-42 9-6 19-14 18-28-1-18-44-78-62-84-8-2-14-2-22 0-41 14-57 46-42 85a451 451 0 0 0 251 248l17 5c26 0 57-25 67-50 9-24-10-34-24-45z" />
    <path fill="none" stroke="#fff" stroke-linecap="round" stroke-width="17" d="M268 138s41-1 72 30c31 30 27 74 27 74m-87-63s18-2 33 14c15 15 13 34 13 34M255 98s64-3 111 44c47 48 43 114 43 114" />
  </Icon>
);
const PhpTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#777bb3" />
    <g stroke="#fff" stroke-width="6">
      <path id="a" d="M155 202H97a3 3 0 0 0-3 2L67 345c0 3 3 3 3 3h30c3 0 3-2 3-2l7-35h27c42 0 63-28 68-53s1-56-50-56zm13 54c-4 19-17 27-35 27h-18l11-53h18c27 0 26 10 24 26z" />
      <path d="M275 311c-4 0-3-4-3-4l12-61c0-8 6-16-18-15h-18l-15 78s0 3-4 3h-29c-3 0-3-3-3-3l28-141s0-2 4-2h30c3 0 2 3 2 3l-7 34h26c36 0 45 17 42 37l-13 69s0 3-5 3z" />
      <use href="#a" x="239" />
    </g>
  </Icon>
);
const PinboardTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#182ef5" />
    <path fill="#fff" d="M182 56L56 185l57-3 102 126-12 68 75-77L456 456 300 281l78-83L303 216 182 105" />
  </Icon>
);
const PinterestTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#bd081b" />
    <path d="m265 65c-104 0-157 75-157 138 0 37 14 71 45 83 5 2 10 0 12-5l3-18c2-6 1-7-2-12-9-11-15-24-15-43 0-56 41-106 108-106 60 0 92 37 92 85 0 64-28 116-70 116-23 0-40-18-34-42 6-27 19-57 19-77 0-18-9-34-30-34-24 0-42 25-42 58 0 20 7 34 7 34l-29 120a249 249 0 0 0 2 86l3-1c2-3 31-37 40-72l16-61c7 15 29 28 53 28 71 0 119-64 119-151 0-66-56-126-140-126z" fill="#fff" />
  </Icon>
);
const PixelfedTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#f72">
      <path id="a" d="M254 256c32-42 23-102-20-134s-108-15-140 27l11-19c52-63 143-89 210-58 50 17 78 72 62 123s-72 78-123 61" />
    </g>
    <use href="#a" transform="rotate(72 256 256)" fill="#1c3" />
    <use href="#a" transform="rotate(144 256 256)" fill="#08f" />
    <use href="#a" transform="rotate(216 256 256)" fill="#a3c" />
    <use href="#a" transform="rotate(288 256 256)" fill="#e15" />
    <path d="M101 142l1-1c32-42 93-51 135-19s50 91 18 133a96 96 0 00-15-17 84 84 0 00-117-115 87 87 0 00-22 19z" opacity=".3" id="b" />
    <g id="c">
      <use href="#b" transform="rotate(72 256 256)" />
      <use href="#b" transform="rotate(144 256 256)" />
    </g>
    <use href="#c" transform="rotate(144 256 256)" />
    <path d="M241 297h35c33 0 60-26 60-58s-27-58-60-58h-51a34 34 0 00-34 33v131z" fill="#fff" />
    <circle cx="256" cy="256" r="196" fill="none" stroke="#fff" stroke-width="8" />
  </Icon>
);
const PlexTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#282a2d" />
    <path d="m256 70h-108l108 186-108 186h108l108-186z" fill="#e5a00d" />
  </Icon>
);
const PocketTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#e84352" />
    <path fill="#fff" d="M388.8 88.9H123.2A47.4 47.4 0 0 0 76 136.5v131.9c0 2.4.2 4.8.5 7.2a101.8 101.8 0 0 0-.5 10.6c0 75.6 80.6 137 180 137s180-61.4 180-137c0-3.6-.2-7.1-.5-10.6.3-2.4.5-4.8.5-7.2v-132A47.4 47.4 0 0 0 388.8 89zm-22.4 132.6l-93 93c-4.7 4.6-11 7-17.1 7a23.8 23.8 0 0 1-17.7-7l-93-93a24 24 0 0 1 33.8-33.8l76.6 76.5 76.6-76.5a24 24 0 0 1 33.8 33.8z" />
  </Icon>
);
const PocketcastsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f43e37" />
    <path fill="#fff" d="M256 400a144 144 0 11144-144h48a192 192 0 10-192 192v-48zm0-71a73 73 0 1173-73h42a115 115 0 10-115 115v-42z" />
  </Icon>
);
const PornhubTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#000" />
    <path d="m50 205v74h15v-28h14q28-1 28-24-1-21-21-22h-36l15 12h12q15 0 14.5 11-.5 10-15.5 10h-11v-21m45 35a1 1 0 0 0 56 0 1 1 0 0 0 -56 0h14.4v-1q.6-14 12.6-16h1q12 2 13 16v1q-1 15-12 16h-2q-12-1-12.6-16zm63-27h13v5q8-10 21-4l-4 13q-15-9-16 13v27h-14zm42 0h14v4q13-9 27-3 10 6 9 22v31h-15v-34q0-10-9-10-11 0-11 16v28h-15z" fill="#fff" />
    <path d="m287 190h172q6 1 7 7v102q-1 6-7 7h-172q-6-1-7-7v-102q1-6 7-7l9 20v70h13v-34q4-8 11-8 9 0 9 15v27h13v-32h8v15q0 16 15 18h5q10 0 14-6v5h33v-4q6 5 12 5h5q20-1 21-27 0-24-23-26-8 0-14 4v21q1-14 11-15h2q10 2 10 15 0 16-10 17h-2q-11-1-11-17v-21l.4-22h-13.4v70h-8.5v-51h-13.5v28q0 13-11 14-8 0-8-12v-30h-14v19h-8q1-19-16-20h-3q-7 0-14 4v-22h-13z" fill="#f90" />
  </Icon>
);
const PreactTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g transform="translate(256,256)">
      <path d="M0,-256 222,-128 222,128 0,256 -222,128 -222,-128z" fill="#673ab8" />
      <ellipse cx="0" cy="0" stroke-width="16" rx="75" ry="196" fill="none" stroke="#fff" transform="rotate(52.5)" />
      <ellipse cx="0" cy="0" stroke-width="16" rx="75" ry="196" fill="none" stroke="#fff" transform="rotate(-52.5)" />
      <circle cx="0" cy="0" r="34" fill="#fff" />
    </g>
  </Icon>
);
const PrintTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M416.155 164.483H95.845c-38.895 0-68.638 29.743-68.638 68.638v137.275h91.517v91.518h274.552v-91.518h91.517V233.121c0-38.895-29.743-68.638-68.638-68.638zm-68.638 251.672H164.483V301.759h183.034v114.396zM416.155 256c-13.728 0-22.879-9.152-22.879-22.879 0-13.728 9.151-22.88 22.879-22.88 13.728 0 22.879 9.152 22.879 22.88 0 13.727-9.151 22.879-22.879 22.879zM393.276 50.086H118.724v91.518h274.552V50.086z" />
  </Icon>
);
const ProtonmailTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#8A90C7" />
    <g fill="#fff">
      <path d="M259 77s-108-6-131 114v79s0 12 23 29c28 17 91 68 108 68s74-51 102-69c23-16 23-28 23-28v-79C361 71 259 77 259 77zm68 159H185v-45c11-57 74-57 74-57s57 0 68 57v45z" />
      <path d="M259 384l-34-12-97-68v120s0 11 17 11h222c11 0 17-11 17-11V304l-97 69-28 11z" />
    </g>
  </Icon>
);
const PythonTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#5a9fd4">
      <path id="p" d="M254 64c-16 0-31 1-44 4-39 7-46 21-46 47v35h92v12H130c-27 0-50 16-58 46-8 35-8 57 0 93 7 28 23 47 49 47h32v-42c0-30 26-57 57-57h91c26 0 46-21 46-46v-88c0-24-21-43-46-47-15-3-32-4-47-4zm-50 28c10 0 17 8 17 18 0 9-7 17-17 17-9 0-17-8-17-17 0-10 8-18 17-18z" />
    </g>
    <use href="#p" fill="#ffd43b" transform="rotate(180,256,255)" />
  </Icon>
);
const QqTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M261 398a57 32 0 00114 0 57 32 0 00-114 0zm-124 0a57 32 0 00114 0 57 32 0 00-114 0z" />
    <path fill="#37474f" d="M238 149a10 14 0 0 1-20 0 10 14 0 0 1 20 0zm46-13c-6 0-10 6-10 13 0 8 4-4 10-4 5 0 9 12 9 4 0-7-4-13-9-13zm27 14a23 33 0 0 1-46 0 23 33 0 0 1 46 0zm-64 0a23 33 0 0 1-46 0 23 33 0 0 1 46 0zm127 79v-56a119 119 0 0 0-237 0v56c-18 25-35 55-37 78 0 44 13 40 13 40 5 0 15-9 23-20 19 55 65 93 120 93s101-38 120-93c8 11 18 20 23 20 0 0 13 4 13-40 0-23-17-54-37-78z" />
    <path d="M183 204a73 13 0 11146 0 73 23 0 11-146 0z" />
    <path fill="#eceff1" d="M171 237a88 132 0 10170 0z" />
    <path fill="#ff3d00" d="M391 220c-4-14-9-20-19-12-71 38-159 38-230 0-10-7-15-2-19 12s-6 18 6 26l32 15c-6 32-5 63-5 65 1 13 12 12 27 12 14-1 26 0 26-15 0-8 0-27 3-46 56 10 120-1 173-31 11-7 9-11 6-26z" />
  </Icon>
);
const QuoraTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#b92b27" />
    <path d="M 456 382.1 h -25 c -1.29 12 -9.06 26.5 -28.3 26.5 c -18 0 -30.3 -12.24 -42.6 -31 c 38 -29.5 64.3 -75 64.3 -131.3 c 0 -101 -83.2 -169 -170.4 -169 C 168 77.8 84 146.2 84 246.7 C 84 346 168 415 254 415 c 15 0 30 -2.1 44 -6 c 17 29 39.3 53.5 81.7 53.5 C 449.5 462.3 457.3 397.7 456 382.1 z M 332.6 332.8 c -16.6 -25.1 -37.5 -44.7 -78.3 -44.7 c -26.2 0 -46.6 8.6 -59.2 19.4 l 10.4 20.7 c 5.3 -2.4 11.2 -3.4 17 -3.4 c 30.5 0 46.1 26.5 59.4 52.7 c -8.5 2.5 -17.8 3.6 -28 3.6 c -64.4 0 -92.2 -45.5 -92.2 -134.5 c 0 -89.5 27.8 -135.4 92.2 -135.4 c 65.4 0 93.3 46 93.3 135.4 C 347 282.5 342.4 311.4 332.6 332.8z" style="stroke-width:1;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:10;fill:#fff;fill-rule:nonzero;opacity:1;" />
  </Icon>
);
const Raspberry_piTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g transform="scale(2)">
      <g id="a">
        <path fill="#000" d="M129 63c-8-20-15-19-20-19-4-5-9-3-13-2-5-3-9-2-12 0-3-3-8-1-9 2-6-2-8 1-9 2-9-1-8 8-7 9-1 1-3 6 0 9-2 4 1 7 3 8-2 4 3 8 5 8 0 5 4 8 7 8-1 4 9 7 9 7-21 9-18 32-18 32-29 21-7 46-7 46s5 35 24 39c3 5 21 11 21 11s7 11 26 11" />
        <path fill="#6cc04a" d="M74 52l-4-4 12 2-3-4 9 3-2-4 9 4v-4l9 6v-5l8 7 v-4c22 22 4 29 4 29C99 64 79 58 79 58s26 13 35 24c0 0-4 15-30 9l3-3-9-2 3-2-9-4h6l-9-6h6l-9-6h5l-8-6l5-2l-5-7" />
        <path d="M69 133c-19 9-9 34-3 37s15-42 3-37m35-34c7 2-30 32-31 26 0-18 9-28 31-26m-5 65c-29-3-19-44 6-44s22 44-6 44m-26 8c-9 6 3 43 26 35 9-7-8-43-26-35" />
      </g>
      <use href="#a" transform="matrix(-1 0 0 1 256 0)" />
      <path d="M106 216c17 24 45 5 44-2s-39-9-44 2m45-35c0-28-45-27-45 0s43 28 45 0m-43-75c5-15 34-15 40-1s-37 19-40 1" />
    </g>
  </Icon>
);
const ReactTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="36" fill="#61dafb" />
    <path stroke="#61dafb" stroke-width="18" fill="none" d="M317.47 291.43a71 183 30 1 0-.05.09zm-122.89.09a183 71 60 1 0-.05-.09zm61.47 35.43a183 71 0 1 0-.1 0z" />
  </Icon>
);
const RedditTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f40" />
    <g fill="#fff">
      <ellipse cx="256" cy="307" rx="166" ry="117" />
      <circle cx="106" cy="256" r="42" />
      <circle cx="407" cy="256" r="42" />
      <circle cx="375" cy="114" r="32" />
    </g>
    <g stroke-linecap="round" stroke-linejoin="round" fill="none">
      <path d="m256 196 23-101 73 15" stroke="#fff" stroke-width="16" />
      <path d="m191 359c33 25 97 26 130 0" stroke="#f40" stroke-width="13" />
    </g>
    <g fill="#f40">
      <circle cx="191" cy="287" r="31" />
      <circle cx="321" cy="287" r="31" />
    </g>
  </Icon>
);
const RedhatTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M379 255l3 20c5 89-241 29-237-46 0-5 1-9 3-14l7-17s170 44 220 39z" />
    <path fill="#e00" d="M317 277c24 0 58-5 58-33a27 27 0 000-7l-15-62c-3-13-6-20-30-32-18-9-59-25-70-25-12 0-15 15-28 15s-22-11-34-11-19 8-25 24l-18 52a12 12 0 00-1 4c0 17 70 75 163 75m62-22l3 20c0 26-30 41-69 41-90 0-168-52-168-87a35 35 0 013-14c-32 2-74 8-74 44 0 60 143 135 256 135 86 0 108-39 108-70 0-25-21-52-59-69" />
  </Icon>
);
const ResearchgateTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#00d0af" />
    <g fill="#feffff">
      <path d="m271 383c-15-4-23-10-36-26-9-12-26-39-35-53l-6-11h-24l0 34c1 43 0 42 19 45l10 1 0 4 0 4h-80l0-4c0-4 1-4 9-6 10-2 14-5 15-14 1-4 1-31 1-79-0-70-1-72-3-77-3-5-7-7-18-8-4-1-5-1-5-5v-4l43-1c55-1 65 0 81 11 15 10 22 24 20 43-1 21-17 42-37 50-4 1-7 3-7 3 0 2 17 28 28 43 15 21 27 32 36 37 4 2 9 3 10 3 3 0 3 1 3 4 0 3-1 5-2 5-5 2-19 2-26 0zm-57-109c14-7 22-18 23-35 1-13-2-22-10-30-9-10-25-14-48-12l-10 1v39c0 36 0 40 2 40 1 0 9 1 18 0 14-0 17-1 24-4z" />
      <path d="m321 228c-25-4-34-20-32-61 1-21 3-30 11-38 7-7 13-9 25-10 13-1 21 2 29 8 5 4 9 10 9 13 0 1-3 2-6 4l-6 3-3-3c-5-6-9-9-14-11-10-3-20 2-25 11-3 5-3 6-3 29 0 22 0 25 3 29 4 7 12 11 21 10 13-1 20-10 20-24v-7l-10-0-10-0v-13h36l-0 15c-0 12-1 16-3 22-6 15-23 24-42 22z" />
    </g>
  </Icon>
);
const RoundcubeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill-rule="evenodd">
      <path d="M255.997 107.626L448 218.68v118.523l-192.003-111.05z" fill="#37beff" />
      <path d="M255.997 107.626L64 218.68v118.523l191.997-111.05z" fill="#404f54" />
      <path d="M255.997 63.74c73.34 0 132.815 59.556 132.815 132.994S329.336 329.73 255.997 329.73 123.18 270.173 123.18 196.735 182.657 63.74 255.997 63.74" fill="#ccc" />
      <path d="M255.997 63.74c73.366 0 132.862 59.556 132.862 132.994S329.363 329.73 255.997 329.73c-42.112-28.38-59.536-85.557-59.536-132.92S213.885 92.175 255.997 63.74" fill="#e5e5e5" />
      <path d="M255.997 448.26L448 337.204V218.68L255.997 329.73z" fill="#37beff" />
      <path d="M255.997 448.26L64 337.204V218.68l191.997 111.05z" fill="#404f54" />
    </g>
  </Icon>
);
const RssTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f80" />
    <circle cx="145" cy="367" r="35" fill="#fff" />
    <path fill="none" stroke="#fff" stroke-width="60" d="M109 241c89 0 162 73 162 162m114 0c0-152-124-276-276-276" />
  </Icon>
);
const RubyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M407.7 397.3l20.86-257.7L348.02 297l-196 118c80.86-5.675 171.2-11.87 255.7-17.66z" fill="#a00403" />
    <path d="M423.39 178.977L320 98l-27 93c109.797 9.317 91.763-9.646 130.39-12.023zM192 282l136 43-35-134zm-89 19c44 139 55 169 89-19l-90 21zM276 68l97 1-53 29c-11-7-36-24-44-30z M85 246l-4 99 23-43z M298 85c26 26-1 89-53 140s-118 83-144 57c-25-25.89.7-90 52.85-141s119.2-82 144.2-56z" fill="#b11205" />
    <path d="M192 282l133 43c-48 45-137.5 86.5-173 90z" fill="#9f0d02" />
    <path d="M293 191l33 133c40-42 76-88 94-144zm114.7 206.3L387.02 245 326 324z" fill="#891102" />
    <path d="M421 181c13-41 16-101-48-112l-53 29z" fill="#aa1401" />
    <path d="M81 345c2 68 50 69 71 70l-49-113z" fill="#9e1209" />
    <path d="M192 282l54 103c32-17 57-38 79-61z" fill="#900e04" />
    <path d="M103 302l-8 91c14 20 34 21 55 20-15-37-45-112-47-111z" fill="#8b1104" />
  </Icon>
);
const RubygemsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#d6422b">
      <path d="M301 303.292l65.4-65.4-45.8-45.85v-.207H190.53l.2.4-.2-.2-45 45.85L256 348" />
      <path d="M256 69.704l-162 92.94v185.879L256 441.463l162-92.94v-185.88zm131 261.057L256 406.35l-131-75.59V179.992L256 104.402l131 75" />
    </g>
  </Icon>
);
const RubyonrailsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#c00">
      <path d="M98 402c34-163 125-282 321-288v15c-121 33-180 118-159 273H98z" />
      <path d="M274 359l-4 27 30 13 1-27zM88 283l-13 36 34 10 13-35zM158 175l-25 27 31 23 25-30zM250 109l-27 19 21 24 28-18zM325 99l6 18 28-7-6-16zM359 169l13 20 16-15-7-16zM320 196l-17 18 23 27 12-19zM283 274l-8 25 31 18 1-27z" />
    </g>
  </Icon>
);
const RustTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g transform="translate(256 256)">
      <g id="d">
        <g id="c">
          <g id="b">
            <path id="a" d="M20-183 6-206c-3-5-9-5-12 0l-14 23m0 366 14 23c3 5 9 5 12 0l14-23" />
            <use href="#a" transform="rotate(11.25)" />
          </g>
          <use href="#b" transform="rotate(22.5)" />
        </g>
        <use href="#c" transform="rotate(45)" />
      </g>
      <use href="#d" transform="rotate(90)" />
      <g id="f">
        <path id="e" d="M-101-161a190 190 0 00-76 230l32-16a154 154 0 01-8-73l25-13c6-3 9-9 5-15l-11-26a155 155 0 0159-61m-88 82c5-16 29-7 24 8s-29 8-24-8" />
        <use href="#e" transform="rotate(72)" />
      </g>
      <use href="#f" transform="rotate(144)" />
      <use href="#e" transform="rotate(-72)" />
      <path d="M135 10s4 32-18 32-6-24-43-51c0 0 31-13 31-47s-40-48-57-48h-187v46h35v99h-52v49h160v-48h-39v-28h40c41 0 13 76 60 76h99v-80m-199-38v-30h54c22 0 23 30 0 30" />
    </g>
  </Icon>
);
const SafariTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <radialGradient id="a">
      <stop stop-color="#0bd" offset="0" />
      <stop offset="1" stop-color="#17d" />
    </radialGradient>
    <g transform="matrix(4 0 0 4 256 256)">
      <g stroke="#eee" fill="none">
        <circle r="52.5" fill="url(#a)" stroke-width="5" />
        <circle r="45" stroke-dasharray="1.25 8.175" stroke-dashoffset=".5" stroke-width="5.5" />
        <circle r="42.5" stroke-dasharray="1.25 7.65" stroke-dashoffset="5" stroke-width="10" />
      </g>
      <path d="M6 6l-12-12l-29 39" fill="#eee" />
      <path d="M6 6l-12-12l41-28" fill="#f55" />
      <path opacity=".3" d="M-35 33l7-5-3 5 37-27 28-35-4 2 4-6" />
    </g>
  </Icon>
);
const SamsungTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#034ea2" />
    <path fill="#fff" d="m72,224c-16 0-23 5-22 20 3 12 25 19 27 23l0 4c0 2-1 4-5 4-4 0-6-3-6-5l0-5-16 0c-1 16 11 21 22 21 14 0 21-4 21-17 1-19-24-20-26-28 0 -1 0-1 0-3 0-1 1-4 5-4 4 0 5 3 5 5l0 4 15 0 0-4c0-13-12-15-20-15zm353,15 0,33c1,21 39,17 39,0 l 0-20-17 0 0 8 5 0 0 11c-1 5-13 5-13 0 0-11 0-21 0-31 0-5 11-5 12 0l0 5 13 0 0-6c-1-20-39-17-39 0zm-160-15c-16 0-23 5-22 20 3 12 25 19 27 23l0 4c0 2-1 4-5 4-4 0-6-3-6-5l0-5-16 0c-1 16 11 21 22 21 14 0 21-4 21-17 1-19-24-20-26-28 0 -1 0-1 0-3 0-1 1-4 5-4 4 0 5 3 5 5l0 4 15 0 0-4c0-13-12-15-20-15zm-100 1-1 59 15 0 0-53 11 53 15 0 9-53 0 53 15 0-1-59-24 0-7 45-7-45-24 0zm135 0 0 43c0 1 0 3 0 2 1 11 9 15 21 15 11 0 20-4 20-15 0 0 0-3 0,-4l0-41-15 0 0 43c0 1 0 1 0 3 0 1-1 4-7 4-4 0-5-3-5-4 0 0 0-1 0-3l0-43zm-185 0-11 59 16 0 8-53 8 53 16 0-11-59zm243 0 0 59 15 0 0-48 15 48 21 0 0-59-15 0 0 47-13-47z" />
  </Icon>
);
const Samsung_internetTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#706CF5" />
    <g fill="none" stroke="#fff" stroke-width="26">
      <circle cx="256" cy="256" r="179" />
      <path stroke="#706CF5" d="M46 221a228 80 15 10441 118" />
      <path d="M105 160a228 80 15 10331 87" />
    </g>
  </Icon>
);
const Samsung_sTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M292.588 332.165c3.486 8.609 2.419 19.708 .783 26.396c-2.988 11.811-11.028 23.906 -34.65 23.906c-22.341 0-35.859 -12.807 -35.859 -32.302l0-34.436l-95.482 0l-.071 27.535c0 79.331 62.469 103.309 129.421 103.309c64.39 0 117.396-21.986 125.792 -81.324c4.34-30.736 1.067 -50.872 -.356 -58.485c-15.013-74.493 -150.124 -96.763 -160.157 -138.385c-1.708-7.115 -1.21 -14.728 -.356 -18.783c2.49-11.313 10.246 -23.835 32.515 -23.835c20.776 0 33.084 12.878 33.084 32.302c0 6.546 0 21.985 0 21.985l88.723 0l0-24.973c0-77.553 -69.584 -89.648 -119.958 -89.648c-63.323 0-115.048 20.918 -124.511 78.833c-2.561 16.009-2.917 30.238 .783 48.097c15.582 72.643 141.943 93.704 160.299 139.808z" fill="#034ea2" />
  </Icon>
);
const Samsung_swoopTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#034ea2" d="M118 232c-12 0-17 4-16 15 2 9 19 14 20 17v3c0 2-1 3-4 3s-4-2-4-4v-4h-12c-1 12 8 16 16 16 10 0 16-3 16-13 1-14-18-15-20-21v-2c0-1 1-3 4-3s4 2 4 4v3h11v-3c0-10-9-11-15-11zm265 11v25c1 16 29 13 29 0v-15h-13v6h4v8c-1 4-10 4-10 0v-23c0-4 8-4 9 0v4h10v-5c-1-15-29-13-29 0zm-120-11c-12 0-17 4-16 15 2 9 19 14 20 17v3c0 2-1 3-4 3s-4-2-4-4v-4h-12c-1 12 8 16 16 16 10 0 16-3 16-13 1-14-18-15-20-21v-2c0-1 1-3 4-3s4 2 4 4v3h11v-3c0-10-9-11-15-11zm-75 1l-1 44h11v-40l8 40h11l7-40v40h11l-1-44h-18l-5 34-5-34zm101 0v34c1 8 7 11 16 11 8 0 15-3 15-11v-34h-11v34c0 1-1 3-5 3-3 0-4-2-4-3v-34zm-139 0l-8 44h12l6-40 6 40h12l-8-44zm182 0v44h11v-36l11 36h16v-44h-11v35l-10-35zm136-14a61 208 80 01-203 98 61 217 80 01-225-25 63 211 80 01204-97 61 217 80 01224 23" />
  </Icon>
);
const SassTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#c69" />
    <path d="M258,88c-96,33-158,100-152,140s66,72,93,93h0c-35,18-79,45-78,80,2,48,54,33,76,19s44-53,30-94c31-8,58,2,66,8,31,22,15,47,4,51s-4,6,3,4,22-12,22-29c0-43-46-63-103-48-33-35-78-51-76-89,1-14,6-50,95-95s152-27,144,14c-12,62-120,104-158,68-2-4-9-7-5,4,20,50,182,27,189-79C410,79,329,64,258,88ZM172,408c-25,8-24-8-23-14,3-17,17-38,59-59C220,373,193,402,172,408Z" fill="#fff" />
  </Icon>
);
const SemaphoreciTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#f75819">
      <path id="s" d="M278.6 205.8a56.7 56.7 0 0 0-69.8 78.5l-65.4 65.4-10.2 1.5-37.8 7.3A84.3 84.3 0 0 1 72 303.2l32-21.8v1.5c-3-16-3-32 0-48l-32-20.4a84.3 84.3 0 0 1 23.3-56.7l37.8 7.3-1.5 1.4c10.2-13 21.8-24.7 33.5-33.4l-7.3-37.8A85.8 85.8 0 0 1 213.2 72l21.8 32h-1.5c16-3 32-3 48 0H280L302 72A85.8 85.8 0 0 1 357 95.3l-5.8 36.3-1.5 13.1-65.4 64-5.8-3" />
    </g>
    <use href="#s" fill="#9C3" transform="rotate(180 256 256)" />
  </Icon>
);
const SentryTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M283 122a31 31 0 00-54 0l-44 77 11 6a216 216 0 01108 174h-31a185 185 0 00-92-147l-11-7-42 72 12 6a104 104 0 0150 76h-71a5 5 0 01-4-7l20-34a72 72 0 00-23-13l-19 34a31 31 0 0026 46h98v-13a129 129 0 00-54-104l16-27a160 160 0 0169 131v13h82v-13a242 242 0 00-110-203l32-54a5 5 0 018 0l137 237a5 5 0 01-5 7h-32v26h33a31 31 0 0026-46z" fill="#221f20" />
  </Icon>
);
const SignalTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#3a76f0" />
    <path d="M256 100a156 156 0 00-132 239l-15 64 64-15a156 156 0 1083-288z" fill="#fff" />
    <path fill="none" stroke-dasharray="54.5,17" stroke="#fff" stroke-width="18" d="M403 147A183 183 0 0097 346l-18 76c0 3 0 6 3 8a9 9 0 008 3l76-18A183 183 0 00402 146M79 422c0 3 0 6 3 8a9 9 0 008 3" />
  </Icon>
);
const SketchTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#ec6c00" d="M457 205 257 437 57 205" />
    <path fill="#ffae00" d="M370 88 457 205 376 205 257 437 138 205 57 205 144 88" />
    <path fill="#fed305" d="M257 76 370 88 376 205 138 205 144 88" />
    <path fill="#ffefB4" d="M257 76 376 205 138 205" />
  </Icon>
);
const SkypeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0078D7" />
    <path fill="#fff" d="M87 226a171 171 0 0 0 199 199c109 53 185-64 139-139 23-132-98-220-199-199A102 102 0 0 0 87 226m241-42c16 23-16 41-28 27-16-18-32-27-49-26-44 3-43 40-5 45 52 8 99 22 95 68-5 52-47 67-90 64-52-4-68-22-78-41-12-23 22-45 36-20 23 37 65 32 78 17 20-23-1-37-23-41-24-5-49-10-68-20-30-16-43-92 36-105 36-6 79 5 96 32" />
  </Icon>
);
const SlackTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#e01e5a">
      <path id="a" d="M149 305a39 39 0 01-78 0c0-22 17 -39 39 -39h39zM168 305a39 39 0 0178 0v97a39 39 0 01-78 0z" />
    </g>
    <use href="#a" fill="#36c5f0" transform="rotate(90,256,256)" />
    <use href="#a" fill="#2eb67d" transform="rotate(180,256,256)" />
    <use href="#a" fill="#ecb22e" transform="rotate(270,256,256)" />
  </Icon>
);
const SlideshareTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#17B" />
    <path fill="#fff" d="M138 86c-25 0-44 20-44 43v127c-8-4-14-6-15-3-3 7 3 13 15 27 12 15 63 34 63 34v59c0 17 37 43 56 43s33-13 33-21v-55l12 4v51c0 8 12 31 51 31s49-45 49-53v-54c29-15 57-23 70-47 12-24 2-28-9-17V129c0-23-20-43-45-43zm0 21h236c13 0 23 10 23 22v140c-19 9-45 17-49 17h-56c-17 0-34-1-34 17-14-9-14-16-37-15-16 0-56-3-78-8-8-2-18-7-28-13V129c0-12 10-22 23-22zm68 85c-21 0-39 17-39 38s18 38 39 38c22 0 39-17 39-38s-17-38-39-38zm104 0c-21 0-39 17-39 38s18 38 39 38c22 0 39-17 39-38s-17-38-39-38z" />
  </Icon>
);
const SnapchatTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fffc00" />
    <path fill="#fff" stroke="#000" stroke-width="7" d="M203 414c-18-13-32-20-66-14-5 1-14 4-15-5-2-7-2-18-7-19-31-4-42-10-47-16-2-2-3-7 1-8 53-10 78-61 83-71 6-15-4-24-23-30-9-3-24-7-24-17 0-5 5-8 10-10 4-1 8-2 12 0 12 5 23 7 29 2 0-27-7-61 4-89 13-31 45-59 96-59s83 28 96 59c11 28 4 62 4 89 6 5 17 3 29-2 4-2 8-1 12 0 5 2 10 5 10 10 0 10-15 14-24 17-19 6-29 15-23 30 5 10 30 61 83 71 4 1 3 6 1 8-5 6-16 12-47 16-5 1-5 12-7 19-1 9-10 6-15 5-34-6-48 1-66 14a82 82 0 0 1-53 20c-21 1-38-8-53-20z" />
  </Icon>
);
const SogoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#50bd37" d="M82 230c0-9 10-13 18-13 11 0 16 7 19 12 4 7 15 0 11-7-6-10-17-16-29-16-16 0-32 9-32 26 0 32 50 18 50 40 0 10-10 14-20 14s-18-6-23-13c-4-7-15 0-10 7 8 13 20 17 33 17 17 0 34-8 34-27 0-33-51-17-51-40zm112-24c-27 0-46 20-46 46s19 45 46 45 46-19 46-45-19-46-46-46zm0 80c-20 0-32-15-32-34 0-20 12-35 32-35s33 15 33 35c0 19-13 34-33 34zm106 26c-11.4 1.8-16-1-16-6s7-8 12-8c38 1 50-25 50-47 0-25-19-45-46-45-26 0-45 19-45 45 0 18 8 32 22 40 0 0-9 8-5 21-10.9 6.5-17.4 18.4-17 31 0 19 15 36 46 36 26 0 44-14 44-34 0-31-33.6-34.8-45-33zm-32-61c0-19 12-34 32-34s33 15 33 34-13 35-33 35-32-15-32-35zm33 115c-21 0-33-10-33-23 0-14 13-21 13-21 4 3 12.7 3.5 17 3 22.7-2.9 34 9 34 20s-11 21-31 21z" />
    <circle cx="400" cy="214" r="15" fill="none" stroke="#50bd37" stroke-width="10" />
    <circle cx="400" cy="214" r="36" fill="none" stroke="#50bd37" stroke-width="11" />
  </Icon>
);
const SoundcloudTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f50" />
    <path d="m59 270-3 22 3 22c0 2 3 2 3 0l3-22-3-22c0-3-3-3-3 0zm18-14c0-3-3-3-3 0l-5 36 4 35c0 3 4 3 4 0l4-35zm59-30-3 66 2 40c0 8 7 8 7 0l4-40-4-66c0-5-6-5-6 0zm-31 22-4 44 3 40c0 6 5 6 5 0l4-40-4-44c0-3-4-3-4 0zm70 84 3-40-3-88c0-6-7-6-7 0l-3 88 2 40c0 8 8 8 8 0zm68 0 2-40-2-102c0-7-10-7-10 0l-2 102 2 40c0 8 10 8 10 0zm-34 0 3-40-3-89c0-6-9-6-9 0l-2 89 2 40c0 8 9 8 9 0zm-83 0 3-40-3-41c0-3-6-3-6 0l-3 41 3 40c0 7 6 7 6 0zm-33 0 4-40-4-43c0-3-4-3-4 0l-4 43 4 40c0 4 4 4 4 0zm124-125-2 85 1 40c0 8 10 8 10 0l2-40-2-85c0-7-9-7-9 0zm-58 125 3-40-3-81c0-6-7-6-7 0l-3 81 2 40c0 8 8 8 8 0zm33 0 3-40-3-91c0-6-8-6-8 0l-3 91 3 40c0 8 8 8 8 0zm196-89c-5-57-64-94-118-73-4 2-5 3-5 6v156c0 3 2 6 5 6h137c27 0 49-22 49-49 0-37-35-57-68-46zm-138-62-3 111 3 40c0 8 10 8 10 0l3-40-3-111c0-7-10-7-10 0z" fill="#fff" />
  </Icon>
);
const SpotifyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#3bd75f" />
    <circle cx="256" cy="256" fill="#fff" r="192" />
    <g fill="none" stroke="#3bd75f" stroke-linecap="round">
      <path d="m141 195c75-20 164-15 238 24" stroke-width="36" />
      <path d="m152 257c61-17 144-13 203 24" stroke-width="31" />
      <path d="m156 315c54-12 116-17 178 20" stroke-width="24" />
    </g>
  </Icon>
);
const Square_cashTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#00d632" />
    <path d="m339.5 190.1c4 4 10.7 4 14.4 0l20-20.8c4.2-4 4-11.2-.5-15.6-15.7-13.7-34.1-24.2-53.9-30.8l6.3-30.5c1.4-6.7-3.6-12.9-10.3-12.9h-38.8c-5 .1-9.3 3.6-10.3 8.5l-5.6 27.1c-51.6 2.6-95.4 28.9-95.4 82.6 0 46.5 36.2 66.4 74.4 80.2 36.2 13.8 55.3 18.9 55.3 38.3 0 20-19.1 31.7-47.3 31.7-25.7 0-52.6-8.6-73.4-29.5-4.1-4.1-10.7-4.1-14.7 0l-21.5 21.6c-4.2 4.3-4.2 11.1 0 15.4 16.8 16.6 38.2 28.6 62.5 35.3l-5.9 28.6c-1.4 6.7 3.5 12.8 10.2 12.9l38.9.3c5.1 0 9.4-3.5 10.4-8.5l5.6-27.2c62.1-4.2 99.9-38.4 99.9-88.3 0-46-37.7-65.4-83.4-81.2-26.1-9.7-48.7-16.4-48.7-36.3 0-19.4 21.1-27.1 42.2-27.1 26.9 0 52.8 11.1 69.7 26.4z" fill="#fff" />
  </Icon>
);
const StackexchangeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" fill="#fff" rx="15%" />
    <path fill="#91d8f4" d="m156,71q-50,0 -50,50v16h300v-16q0,-50 -50,-50" />
    <path fill="#4ca2da" d="m106,157v60h300v-60" />
    <path fill="#376db6" d="m106,239v60h300v-60" />
    <path fill="#1e5397" d="M406,319H106v16q0,50 50,50h123v65l65,-65h12q50,0 50,-50" />
  </Icon>
);
const StackoverflowTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f58025" />
    <path stroke="#fff" stroke-width="30" fill="none" d="M293 89l90 120zm-53 50l115 97zm-41 65l136 64zm-23 69l148 31zm-6 68h150zm-45-44v105h241V297" />
  </Icon>
);
const SteamTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#231f20" />
    <path d="m183 280 41 28 27 41 87-62-94-96" />
    <circle cx="340" cy="190" r="49" />
    <g fill="none" stroke="#ebebeb">
      <circle cx="179" cy="352" r="63" stroke-width="19" />
      <path d="m-18 271 195 81" stroke-width="80" stroke-linecap="round" />
      <circle cx="340" cy="190" r="81" stroke-width="32" />
    </g>
  </Icon>
);
const StitcherTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#3590c5" d="M56 205h70v127H56z" />
    <path fill="#c53827" d="M386 198h70v117h-70z" />
    <path fill="#ec8b24" d="M304 172h70v152h-70z" />
    <path fill="#fbc618" d="M222 194h70v146h-70z" />
    <path fill="#612268" d="M139 182h70v141h-70z" />
  </Icon>
);
const StravaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fc4c01" />
    <path fill="#fff" d="M120 288L232 56l112 232h-72l-40-96-40 96z" />
    <path fill="#fda580" d="M280 288l32 72 32-72h48l-80 168-80-168z" />
  </Icon>
);
const StumbleuponTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ea4b24" />
    <path fill="#fff" d="M362.2 397c-47.3 0-88.7-37.3-89-83.4v-59.2l29.4 22.6 33.5-24v61.6c0 10.9 14.7 20.6 26 20.6s21.9-9.7 21.9-20.6v-62.2h64v60.4a85 85 0 0 1-85.8 84.2zM256 173.8c-11.2 0-16.3 8.8-16.3 19.8V314c-.8 46.1-42.8 83-89.8 83A85 85 0 0 1 64 312.9v-59.6h63.3v59c0 10.8 11.5 19.8 22.7 19.8 11.3 0 25.2-9 25.2-19.9V190.3C176.7 145 210.7 109 257 109c46.6 0 77.5 36.3 79 81.7v26.8L306.7 236l-33.3-19.1v-23.3c0-11-6.2-19.8-17.4-19.8z" />
  </Icon>
);
const SublimetextTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect rx="15%" width="512" height="512" fill="#424242" />
    <rect transform="skewY(-17.5)" x="110" y="375" width="292" height="107" rx="8" fill="url(#lg)" />
    <rect transform="skewY(17.5)" x="110" y="122" width="292" height="107" rx="8" fill="#ff9800" />
    <rect transform="skewY(-17.5)" x="110" y="191" width="292" height="107" rx="8" fill="#ff9800" />
    <defs>
      <linearGradient id="lg" x1="174" x2="189" y1="725" y2="716" gradientTransform="scale(1.65 .605)" gradientUnits="userSpaceOnUse">
        <stop stop-color="#ff9700" offset="0" />
        <stop stop-color="#f48e00" offset=".5271813" />
        <stop stop-color="#d06f00" offset="1" />
      </linearGradient>
    </defs>
  </Icon>
);
const SubscribestarTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="192" fill="#098" />
    <path fill="#fff" d="M289 322c-7 0-47 10-83-8-39-20-46-64-46-98v-35l66 1v37c0-1 92 37 63 103zM251 64c18 21 53 43 70 63 18 21 36 48 36 83 0 25-3 42-7 53l-71-71c-24-41-80-65-104-110 20-11 53-18 75-18z" />
    <path fill="#f488" d="m289 322-7 1c0-50-4-66-26-66 38-4 37 29 33 65z" />
    <path fill="#f48" d="M260 448c-20-21-51-41-68-61-18-22-35-48-35-84 0-24 1-41 6-52 6 38 35 66 72 72 9 27 90 75 101 107-25 12-50 18-76 18zm-34-256c8-2 17-3 27-3 35 0 61 10 78 31 16 21 24 46 24 80l-1 31h-66v-26c1-16-1-30-6-38-6-10-20-10-29-10-17 1-28-17-27-30v-35z" />
    <path fill="#5558" d="M158 271c1-7 2-14 5-20 6 39 37 66 72 72-34 0-68-26-77-52z" />
  </Icon>
);
const SvelteTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#ff3e00" d="M395 115c-35-51-106-66-157-34l-89 57a103 103 0 00-46 69 108 108 0 0010 69 103 103 0 00-15 39 109 109 0 0019 82c35 51 106 66 157 34l89-57a103 103 0 0046-69 108 108 0 00-10-69 103 103 0 0015-39 109 109 0 00-19-82" />
    <path fill="#fff" d="M230 402a71 71 0 01-77-28 66 66 0 01-11-50 62 62 0 012-8l2-5 5 3a115 115 0 0035 17l3 1v4a20 20 0 003 13 21 21 0 0023 9 20 20 0 006-3l89-57a19 19 0 008-12 20 20 0 00-3-15 21 21 0 00-23-9 20 20 0 00-5 3l-34 21a65 65 0 01-19 8 71 71 0 01-76-28 66 66 0 01-11-50 62 62 0 0128-41l89-57a65 65 0 0118-8 71 71 0 0177 28 66 66 0 0111 50 63 63 0 01-2 8l-2 5-5-3a115 115 0 00-35-17l-3-1v-4a20 20 0 00-3-13 21 21 0 00-23-9 20 20 0 00-6 3l-89 57a19 19 0 00-8 12 20 20 0 003 15 21 21 0 0023 9 20 20 0 005-3l34-21a65 65 0 0119-8 71 71 0 0176 28 66 66 0 0111 50 62 62 0 01-28 41l-89 57a65 65 0 01-18 8" />
  </Icon>
);
const SvgTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#f90" />
    <path d="M122 157h268v99H122" />
    <g id="a" fill="#fff" stroke="#000" stroke-width="24">
      <circle cx="256" cy="120" r="44" />
      <circle cx="120" cy="256" r="44" />
      <circle cx="160" cy="160" r="44" />
    </g>
    <use href="#a" transform="matrix(-1 0 0 1 512 0)" />
    <path stroke="#fff" stroke-width="44" d="M396 256H256l96-96-96 96V120v136l-96-96 96 96H116" />
    <path d="M64.1 256h384v170a22 22 0 01-22 22h-340a22 22 0 01-22-22V256" />
    <path fill="none" stroke="#fff" stroke-width="30" d="M292 264l-36 172-36-172m-29 55a35 35 0 10-35 35 35 35 0 11-35 35m270-70a35 35 0 00-35-35 35 35 0 00-35 35v70a35 35 0 0035 35 35 35 0 0035-35v-35h-35" />
    <path d="M64 256h384v12H64" />
  </Icon>
);
const SymantecTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#fdb511" d="M384 124v10h10v-10zm-133 55a96 96 0 1 1-1 0m1-48a144 144 0 1 0 1 0zm164-17v10h10v-10zm0-20v10h10V94z" />
    <path fill-rule="evenodd" d="M313 235v10c-28 27-34 50-39 71-2 13-2 21-17 23-3 0-10-3-13-8-4-7-15-34-25-50-7-14-18-26-28-38-4-5-6-9-3-13 3-5 6-4 10-3 25 11 39 28 51 52 11-27 17-41 44-74h10v-10h10v-11h10v-10h20v10h-10v-20h10v-10h51v-20h10v10h-50v-10h10v30h10v-40h30v-20h11v10h-31v60h-10v10h-10v11h-10v10h-21v-10h10v20h-10v10h-10v10z" />
  </Icon>
);
const TaigaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M393 119l-17 119L256 256l17-120z" opacity=".8" fill="#a295ae" />
    <path d="M120 393l17-119 119-17-17 120z" opacity=".8" fill="#5d6f6d" />
    <path d="M120 119l119 17 17 120-120-17z" opacity=".8" fill="#8cd592" />
    <path d="M393 392l-119-17-17-120 120 17z" opacity=".8" fill="#665e74" />
    <path d="M256 449l-72-96 72-96 72 96z" opacity=".8" fill="#3c3647" />
    <path d="M450 255l-96 72-96-72 96-72z" opacity=".8" fill="#837193" />
    <path d="M256 62l72 96-72 96-72-96z" opacity=".8" fill="#a2f4ac" />
    <path d="M63 256l96-72 96 72-96 72z" opacity=".8" fill="#7ea685" />
    <path d="M256 210l46 46-46 46-46-46z" fill="#3c3647" />
  </Icon>
);
const TeamspeakTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#2580c3" d="M407 336c5 5 9 18 9 26s0 15-2 21c0 3-6 33-43 51l-23 8-14 3c-64 12-148-3-84-10l17-2a1532 1532 0 0042-10h1a19086 19086 0 0012-4c16-7 33-16 47-29 10-10 19-22 26-37l6-15c0-2 4-3 6-2zm-60-56c17-3 28 5 29 19 1 13-3 25-13 35-8 9-18 13-32 12a249 249 0 01-40-5c-19-5-26-19-14-30 7-7 16-12 25-16l23-9c7-3 15-5 22-6zm-211-15c3-18 18-26 34-18a1135 1135 0 0142 28 141 141 0 0133 39l1 10c-2 10-9 15-18 19l-13 1h-19l-16-2c-15-1-26-7-34-19a77 77 0 01-10-58zm256-153l3 2c4 4 8 9 3 16l-1 1v2l2 2c16 22 27 46 32 73l2 4 2 1c14 7 21 18 21 33v19l-1 21c-4 20-23 33-42 29-6-1-7-6-7-11a11534 11534 0 010-66 150 150 0 00-300-1v69c0 6-4 9-10 9-24 1-40-14-40-38v-27l1-10c2-12 8-21 19-27h1l1-1c2-1 3-3 3-5 5-26 15-50 30-71l2-3v-5c-3-4-1-7 1-11h1c22-25 48-43 80-53 75-23 141-7 197 48z" />
  </Icon>
);
const TelegramTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#37aee2" />
    <path fill="#c8daea" d="M199 404c-11 0-10-4-13-14l-32-105 245-144" />
    <path fill="#a9c9dd" d="M199 404c7 0 11-4 16-8l45-43-56-34" />
    <path fill="#f6fbfe" d="M204 319l135 99c14 9 26 4 30-14l55-258c5-22-9-32-24-25L79 245c-21 8-21 21-4 26l83 26 190-121c9-5 17-3 11 4" />
  </Icon>
);
const TerraformTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#7B42BC" d="m224 159 98 56v113l-98-56V159zM115 95v113l98 56V152L115 95zm109 303 98 56V342l-98-56v113z M333 216v113l98-56v-113l-98 56z" />
  </Icon>
);
const ThisamericanlifeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M90 170v98h117v-98zm157.7 0v29.25h175.3v-29.25zm0 69v29.25h175.3v-29.25zm30.3 97.25h145V307H90v29.25H208V420.4z" fill="#ed0017" />
  </Icon>
);
const ThreemaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="url(#a)" />
    <defs>
      <linearGradient id="a" x1="0%" y1="0%" x2="0%" y2="50%">
        <stop offset="0%" stop-color="#505050" />
        <stop offset="100%" stop-color="#323232" />
      </linearGradient>
    </defs>
    <path d="M184.412 327l-81 20 17-69c-17-22-27-50-27-79 0-79 73-143 163-143s163 64 163 143-73 143-163 143c-25 0-50-5-71-14zm25-141h-2c-4 0-7 3-6 7v65c0 4 3 7 7 7h96c4 0 7-3 7-7v-65c0-4-3-7-7-7h-2v-18c0-25-21-46-46-46s-46 21-46 46v18zm74 0h-55v-18c0-15 12-28 28-28 15 0 28 12 28 28v18z" fill="#fff" />
    <circle cx="156" cy="406" r="28" fill="#3FE669" />
    <circle cx="256" cy="406" r="28" fill="#3FE669" />
    <circle cx="356" cy="406" r="28" fill="#3FE669" />
  </Icon>
);
const TiktokTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect rx="15%" height="512" width="512" fill="#fff" />
    <defs>
      <path id="t" d="M219 200a117 117 0 1 0 101 115v-128a150 150 0 0 0 88 28v-63a88 88 0 0 1-88-88h-64v252a54 54 0 1 1-37-51z" style="mix-blend-mode:multiply" />
    </defs>
    <use href="#t" fill="#f05" x="18" y="15" />
    <use href="#t" fill="#0ee" />
  </Icon>
);
const TodoistTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#E44232" />
    <path d="m167.1 240.2 103.6-59.7h.1l106.8-61.6c4.5-2.6 4.7-10.6-.3-13.5l-3.6-2-14.6-8.4a16.6 16.6 0 0 0-16.2.2L166.6 196.7a22 22 0 0 1-21.8 0L56 145v44l1 .5c22 12.9 74.5 43.5 87.4 50.8a21.3 21.3 0 0 0 22.7 0Z" fill="#FFF" />
    <path d="m167.1 328 103.5-59.7.4-.2 106.6-61.4c4.5-2.6 4.7-10.6-.3-13.5l-3.6-2-14.6-8.4a16.6 16.6 0 0 0-16.2.2L166.6 284.4c-6.8 3.9-15 4-21.8 0L56 232.8v43.9l1 .5c22.1 13 74.5 43.5 87.4 50.8a21.4 21.4 0 0 0 22.7 0Z" fill="#FFF" />
    <path d="m270.7 356-103.6 59.7c-7.5 4.3-15 4.4-22.7 0A15382 15382 0 0 1 56.9 365l-.9-.6v-43.9l88.8 51.7a22 22 0 0 0 21.8 0l176.3-101.5c6-3.5 12.5-2.3 16.2-.2l14.6 8.4 3.6 2c5 3 4.8 11 .3 13.5L270.7 356Z" fill="#FFF" />
  </Icon>
);
const ToxTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <g fill="#f0f0f0">
      <rect height="270" rx="90" width="180" x="166" y="65" />
      <rect height="220" rx="18" width="294" x="109" y="207" />
    </g>
    <ellipse cx="256" cy="156" rx="59" ry="56" />
    <path d="m307 129c26 40-12 91-49 113 6-9 11-19 12-31m-4 113c18 6 29 21 29 44 0 8-7 14-15 14h-48c-8 0-15-6-15-14 0-23 11-38 29-44" />
    <circle cx="256" cy="297" r="29" />
  </Icon>
);
const TrelloTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0079bf" />
    <rect height="188" rx="23" width="132" x="284" y="95" />
    <rect height="296" rx="23" width="132" x="97" y="95" />
  </Icon>
);
const TripadvisorTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#fcc40f" stroke="#000a12" stroke-width="17" d="M93 202a195 151 0 0 1 326 0v56h-326" />
    <g transform="translate(256 257)">
      <g id="a" fill="#000a12">
        <path d="M2 0h-33v45l31 47M-173-49c3-12-19-46-19-48h77" />
        <circle cx="-97" cy="0" r="97" />
        <circle cx="-97" cy="0" r="78" fill="#fff" />
        <circle cx="-97" cy="0" r="50" />
        <circle cx="-97" cy="0" r="33" fill="#fff" />
      </g>
      <use href="#a" transform="scale(-1 1)" />
      <circle cx="-97" cy="0" r="17" fill="#ef6a45" />
      <circle cx="97" cy="0" r="17" fill="#00b087" />
    </g>
  </Icon>
);
const TumblrTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#35465c" />
    <path fill="#fff" d="M361 415c-12 13-40 21-65 21h-3c-85 0-103-61-103-98V236h-35c-3 0-6-3-6-8v-47c0-6 3-10 7-11 44-17 57-54 60-83 0-8 5-11 12-11h50c4 0 6 3 6 6v82h58c5 0 8 3 8 8v56c0 4-3 7-8 7h-58v94c0 24 16 30 25 30 10 0 18-2 23-4 8-4 13 1 14 4l15 45c2 4 3 8 0 11z" />
  </Icon>
);
const TuneinTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#1c203c" />
    <path fill="#14d8cc" d="M298 152c-6 0-6 6-6 6v34H56c-6 0-6 6-6 6v123c0 6 6 6 6 6h242c6 0 6-6 6-6v-34h137c6 0 6-6 6-6V158c0-6-6-6-6-6H298zm37 40h28v11h-9v34h10v11h-30v-11h9v-34h-8v-11zm37 0h13l12 34v-34h11v56h-12l-13-33v33h-11v-56zM62 204h230v111H62V204zm30 28v11h12v44h11v-44h12v-11H92zm43 0v39s0 17 19 17 19-17 19-17v-39h-11v39s0 6-8 6-8-6-8-6v-39h-11zm47 0v55h11v-31l11 31h14v-55h-12v31l-11-31h-13zm44 0v55h33v-11h-21v-11h20v-11h-20v-11h20v-11h-32z" />
  </Icon>
);
const TutanotaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M113 97c-17 0-31 14.09-31.455 31.451v290.461c0 1.102.063 2.212.17 3.284a1700 1700 0 0037-14c91-36 165-67 165-102 0-1.12-.077-2.25-.236-3.38-4.717-34.512-87.191-45-87-61.028.01-.84.248-1.719.754-2 9-17 49-16 63-17 14-1 48-.996 50-11.336.048-.32.078-.637.078-.956.039-9-23-13-23-13s28 4 28 15c0 .54-.066 1.1-.217 1.67-3.055 11-28 14-44 14-15.615.782-39 2-39 10.186-.01.445.067.908.226 1 3 11 90 16 146 45 32 16 48 44 55 73V128c0-17-14-31-31-31H113z" fill="#a01e20" />
  </Icon>
);
const TwilioTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#f22f46">
      <circle cx="256" cy="256" r="256" />
      <circle cx="256" cy="256" fill="#fff" r="188" />
      <circle cx="193" cy="193" r="53" id="c" />
      <use href="#c" x="126" />
      <use href="#c" y="126" />
      <use href="#c" x="126" y="126" />
    </g>
  </Icon>
);
const TwitchTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m115 101-22 56v228h78v42h44l41-42h63l85-85v-199zm260 185-48 48h-78l-42 42v-42h-65v-204h233zm-48-100v85h-30v-85zm-78 0v85h-29v-85z" fill="#6441a4" />
  </Icon>
);
const TwitterTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#1da1f2" />
    <path fill="#fff" d="M437 152a72 72 0 01-40 12a72 72 0 0032-40a72 72 0 01-45 17a72 72 0 00-122 65a200 200 0 01-145-74a72 72 0 0022 94a72 72 0 01-32-7a72 72 0 0056 69a72 72 0 01-32 1a72 72 0 0067 50a200 200 0 01-105 29a200 200 0 00309-179a200 200 0 0035-37" />
  </Icon>
);
const TypescriptTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#3178c6" />
    <path fill="#fff" d="m233 284h64v-41H118v41h64v183h51zm84 173c8.1 4.2 18 7.3 29 9.4s23 3.1 35 3.1c12 0 23-1.1 34-3.4c11-2.3 20-6.1 28-11c8.1-5.3 15-12 19-21s7.1-19 7.1-32c0-9.1-1.4-17-4.1-24s-6.6-13-12-18c-5.1-5.3-11-10-18-14s-15-8.2-24-12c-6.6-2.7-12-5.3-18-7.9c-5.2-2.6-9.7-5.2-13-7.8c-3.7-2.7-6.5-5.5-8.5-8.4c-2-3-3-6.3-3-10c0-3.4.89-6.5 2.7-9.3s4.3-5.1 7.5-7.1c3.2-2 7.2-3.5 12-4.6c4.7-1.1 9.9-1.6 16-1.6c4.2 0 8.6.31 13 .94c4.6.63 9.3 1.6 14 2.9c4.7 1.3 9.3 2.9 14 4.9c4.4 2 8.5 4.3 12 6.9v-47c-7.6-2.9-16-5.1-25-6.5s-19-2.1-31-2.1c-12 0-23 1.3-34 3.8s-20 6.5-28 12c-8.1 5.4-14 12-19 21c-4.7 8.4-7 18-7 30c0 15 4.3 28 13 38c8.6 11 22 19 39 27c6.9 2.8 13 5.6 19 8.3s11 5.5 15 8.4c4.3 2.9 7.7 6.1 10 9.5c2.5 3.4 3.8 7.4 3.8 12c0 3.2-.78 6.2-2.3 9s-3.9 5.2-7.1 7.2s-7.1 3.6-12 4.8c-4.7 1.1-10 1.7-17 1.7c-11 0-22-1.9-32-5.7c-11-3.8-21-9.5-28.1-15.44z" />
  </Icon>
);
const UberTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path d="M119.8,303.6c17.6,0,31.3-13.6,31.3-33.8V191.3h19.1V318.6H151.3V306.8a45.9,45.9,0,0,1-33.6,14c-27.3,0-48.2-19.8-48.2-49.8V191.4H88.6v78.5c0,20.5,13.4,33.7,31.2,33.7m64.6-112.3h18.4v46.4a46.11,46.11,0,0,1,32.9-13.8,48.45,48.45,0,0,1,0,96.9A46.52,46.52,0,0,1,202.6,307v11.6H184.4V191.3Zm50,113.2a32.2,32.2,0,1,0-32-32.4v.2a32,32,0,0,0,31.8,32.2h.2M339.3,224c26.7,0,46.4,20.5,46.4,48.2v6H310.3A31.09,31.09,0,0,0,341,304.6c10.7,0,19.8-4.4,26.7-13.6l13.3,9.8c-9.3,12.4-23.1,19.8-40,19.8-27.8,0-49.3-20.7-49.3-48.4-.1-26.2,20.5-48.2,47.6-48.2m-28.8,39.6H367c-3.1-14.2-14.5-23.6-28.2-23.6-13.5,0-25,9.5-28.3,23.6m124.4-21.4c-12,0-20.7,9.3-20.7,23.6v52.7H395.8V225.8H414v11.5c4.5-7.5,12-12.2,22.2-12.2h6.4v17.1Z" fill="#fff" />
  </Icon>
);
const UbiquitiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#399cdb" />
    <path d="M112 94v18h18V94h-18zm288 0c-82 0-90 31-90 61v172a147 147 0 01-3 28c43-9 72-36 86-82l7-23V94zm-234 18v18h18v-18h-18zm-18 18v18h18v-18h-18zm36 9v18h18v-18h-18zm-72 4v147c0 73 53 128 144 128 0 0-54-30-54-91V197h-18v66h-18v-39h-18v17h-18v-98h-18zm54 18v18h18v-18h-18zm-18 27v18h18v-18h-18zm252 87c-19 64-65 92-131 89-24-1-43-7-57-16 10 42 46 63 48 64l10 6c82-5 130-59 130-128v-15z" fill="#fff" />
  </Icon>
);
const UbisoftTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path fill="#fff" d="M403 327c-28 63-85 96-146 95-117-6-151-141-73-190l3 4c-85 110 82 216 159 89 63-132-94-262-230-162l-3-3c36-57 106-82 172-65a170 170 0 01118 232zm-110-2a52 52 0 01-89-5c-19-40 8-76 42-77 42-2 59 45 33 72l14 10zm-183-5l-5 2c-45-173 177-218 221-81l-4 2c-66-94-218-61-212 77zm337-64a201 201 0 00-380-89l15 11c-13 29-19 57-19 86 6 128 100 192 194 192 94-1 191-75 190-200" />
  </Icon>
);
const UbuntuTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#e65e17" />
    <circle cx="265" cy="256" r="124" fill="none" stroke="#fff" stroke-width="51" />
    <g fill="#fff" stroke="#e65e17" stroke-width="10">
      <circle cx="90" cy="257" r="41" />
      <circle cx="353" cy="409" r="41" />
      <circle cx="353" cy="104" r="41" />
      <path stroke-width="19" d="M185,118l82,138m0,0h155h-155l-84,140" />
    </g>
  </Icon>
);
const UdemyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#a435f0" d="M350.38 178.568 256 121.532l-94.38 57.002v-57.002L256 64.53l94.396 57v57.004z" />
    <path d="M161.62 226.44h49.426v125.714c0 32.46 23.176 48.3 44.936 48.3 21.966 0 44.972-16.266 44.972-48.744V226.44h49.424v128.684c0 29.934-8.976 53.008-26.964 68.83-17.972 15.82-40.448 23.534-67.84 23.534-27.392 0-49.836-7.68-67.414-23.534-17.56-15.82-26.556-38.042-26.556-67.55z" />
  </Icon>
);
const UnicodeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#55f" />
    <g fill="#fff">
      <path d="M428 199h-37c-2 0-3 1-3 3v65a779 779 0 001 50v9l-10-20-16-30-19-35-20-37-19-36-16-29-2-2-3-1h-54c-2 0-3 1-3 3v150c0 12-1 22-4 29s-6 14-11 19c-4 5-10 8-16 10l-21 3c-19 0-32-5-41-16s-14-26-14-44V139c0-2-1-3-3-3H77c-2 0-3 2-3 4v154c0 16 2 31 7 43a78 78 0 0051 48 138 138 0 0081 1c12-4 23-10 32-18 8-8 16-18 21-31s8-28 8-46v-96a613 613 0 0025 50 4630 4630 0 0080 142h49c2 0 3-1 3-3V203c0-3-1-4-3-4z" />
      <circle cx="410" cy="147" r="26" />
    </g>
  </Icon>
);
const UntappdTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#ffce0d" />
    <path d="M382 432c38 16 93-21 89-61L358 206l-39-21-88-94-2-7-6-2-1-7c-15 2-26 9-33 23l7 3v6l6 4 58 114 8 43z" fill="#734019" />
    <path d="M39 371c-2 41 51 80 88 63l116-163 7-44 59-115 6-3-1-7 6-3c-7-14-17-22-32-23l-1 7-6 2-1 7-88 94-37 22z" fill="#e17e24" />
  </Icon>
);
const UpholdTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M360 277c-9 19-20 36-33 50 9-34 5-78-15-120-10-22-24-42-40-59 25-19 51-25 71-16 13 6 23 17 28 33 12 31 7 72-11 112m-208 0c-18-40-23-81-11-112 5-16 15-27 28-33 20-9 46-3 71 16-16 17-30 37-40 59-20 42-24 86-15 120-13-14-24-31-33-50m123 86a47 47 0 01-38 0c-38-17-46-85-17-148 10-20 22-37 36-52 14 15 26 32 36 52 29 63 21 131-17 148m52-256c-23-1-48 8-71 27-23-19-48-28-71-27a126 126 0 01142 0m66 51c-20-56-74-94-137-94s-118 38-137 94v1c-13 35-8 82 12 127 28 60 79 102 124 102h2c45 0 96-42 124-102 20-45 25-92 12-128m-98 263c-13 4-26 6-38 6h-2c-12 0-25-2-37-6-6-1-13 2-14 7-2 6 1 12 7 14 15 4 30 6 44 6h2c14 0 29-2 44-6 6-2 9-8 8-13-2-6-9-9-14-8" fill="#49cc68" />
  </Icon>
);
const UplayTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#0070ff" />
    <path fill="#fff" d="M403 327c-28 63-85 96-146 95-117-6-151-141-73-190l3 4c-85 110 82 216 159 89 63-132-94-262-230-162l-3-3c36-57 106-82 172-65a170 170 0 01118 232zm-110-2a52 52 0 01-89-5c-19-40 8-76 42-77 42-2 59 45 33 72l14 10zm-183-5l-5 2c-45-173 177-218 221-81l-4 2c-66-94-218-61-212 77zm337-64a201 201 0 00-380-89l15 11c-13 29-19 57-19 86 6 128 100 192 194 192 94-1 191-75 190-200" />
  </Icon>
);
const UpworkTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#6fda44" />
    <path fill="#fff" d="M357.2,296.9c-17,0-33-7.2-47.4-18.9l3.5-16.6l0.1-.6c3.2-17.6,13.1-47.2,43.8-47.2c23,0,41.7,18.7,41.7,41.7S380.2,296.9,357.2,296.9L357.2,296.9z M357.2,171.4c-39.2,0-69.5,25.4-81.9,67.3c-18.8-28.3-33.1-62.2-41.4-90.8h-42.2v109.7c0,21.7-17.6,39.3-39.3,39.3s-39.3-17.6-39.3-39.3V147.8H71v109.7c0,44.9,36.5,81.8,81.4,81.8s81.4-36.9,81.4-81.8v-18.4c8.2,17.1,18.2,34.4,30.4,49.6l-25.8,121.4h43.1l18.7-88c16.4,10.5,35.2,17.1,56.8,17.1c46.2,0,83.8-37.8,83.8-84.1C440.9,209,403.4,171.4,357.2,171.4" />
  </Icon>
);
const VegetarianTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" r="220" stroke="#0f0" fill="#fff" stroke-width="25" />
    <path fill="#0f0" d="m140 120h44l72 225 72-225h44l-90 265h-52z" />
  </Icon>
);
const VenmoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#3396cd" />
    <path d="m381.4 105.3c11 18.1 15.9 36.7 15.9 60.3 0 75.1-64.1 172.7-116.2 241.2h-118.8l-47.6-285 104.1-9.9 25.3 202.8c23.5-38.4 52.6-98.7 52.6-139.7 0-22.5-3.9-37.8-9.9-50.4z" fill="#fff" />
  </Icon>
);
const ViberTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="none" stroke="#665ca7" stroke-linecap="round" stroke-width="10" d="M269 186a30 30 0 0 1 31 31m-38-58a64 64 0 0 1 64 67m-73-93a97 97 0 0 1 99 104" />
    <path d="M288 274q10-13 24-4l36 27q8 10-7 28t-28 15q-53-12-102-60t-61-104q0-20 25-34 13-9 22 5l25 35q6 12-7 22c-39 15 51 112 73 70zM95 232c0 78 14 95 36 118 7 7 32 19 38 19v69c0 4 4 7 8 3l53-63 26 1c144 0 161-56 161-147S400 85 256 85 95 141 95 232zm-30 0c0-126 55-177 191-177s191 51 191 177-55 177-191 177c-10 0-18 0-32-2l-38 43c-7 8-28 11-28-13v-42c-6 0-20-6-39-18-19-13-54-44-54-145z" />
  </Icon>
);
const VimeoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#1eb8eb" />
    <path d="m418 185c-19 109-128 202-161 223-32 21-62-9-73-30-12-26-49-164-59-176-9-12-39 12-39 12l-13-19s59-71 104-79c47-10 47 73 59 118 11 45 18 70 27 70 10 0 29-24 49-63 21-37-1-71-41-47 17-95 166-118 147-9z" fill="#fff" />
  </Icon>
);
const VisualstudiocodeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <filter id="a">
      <feFlood flood-opacity="0" result="b" />
      <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" />
      <feGaussianBlur stdDeviation="4" />
      <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 .25 0" />
      <feBlend in2="b" result="c" />
      <feBlend in="SourceGraphic" in2="c" />
    </filter>
    <path fill="#27b" d="m423 114-75-37a23 23 0 0 0-26 5L77 306a15 15 0 0 0 0 22l20 18a15 15 0 0 0 20 1l295-224c10-7 24-1 24 12v-1c0-9-5-17-13-20" />
    <path fill="#08c" d="m423 399-75 36a23 23 0 0 1-26-5L77 207a15 15 0 0 1 0-22l20-19a15 15 0 0 1 20-1l295 224c10 8 24 1 24-12v1c0 9-5 17-13 21" filter="url(#a)" />
    <path fill="#19f" d="M348 435a23 23 0 0 1-26-5c9 9 23 3 23-9V92c0-12-14-19-23-10a23 23 0 0 1 27-4l75 36c7 3 12 11 12 20v244c0 9-5 17-12 21" />
  </Icon>
);
const VivinoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#a91b2a" />
    <path stroke-linecap="round" stroke-width="70" stroke="#fff" d="m181 291zm41-70zm0 140zm40 70zm0-140zm0-140zm40-70zm0 140zm0 140zm41-70z" />
  </Icon>
);
const VkTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#5281b8" />
    <path fill="#fff" d="M274 363c5-1 14-3 14-15 0 0-1-30 13-34s32 29 51 42c14 9 25 8 25 8l51-1s26-2 14-23c-1-2-9-15-39-42-31-30-26-25 11-76 23-31 33-50 30-57-4-7-20-6-20-6h-57c-6 0-9 1-12 6 0 0-9 25-21 45-25 43-35 45-40 42-9-5-7-24-7-37 0-45 7-61-13-65-13-2-59-4-73 3-7 4-11 11-8 12 3 0 12 1 17 7 8 13 9 75-2 81-15 11-53-62-62-86-2-6-5-7-12-9H79c-6 0-15 1-11 13 27 56 83 193 184 192z" />
  </Icon>
);
const VlcTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <g fill="#f7901e">
      <path d="M437 400l-36-94c-3-10-13-16-23-16H134c-10 0-20 6-23 16l-36 94c-2 3-2 7-2 11 0 16 13 29 29 29h308a29 29 0 0 0 27-40z" />
      <path d="M299 109l-15-51c-3-11-13-18-24-18h-8c-11 0-21 7-24 18l-15 51a307 307 0 0 0 86 0zM256 183c-24 0-46-2-64-6l-19 65c20 8 49 13 83 13s63-5 83-13l-20-65c-17 4-39 6-63 6z" />
    </g>
    <g fill="#f2f2f2">
      <path d="M319 177l-20-68a307 307 0 0 1-86 0l-21 68c18 4 40 6 64 6s46-2 63-6z" />
      <path d="M173 242l-18 62c19 14 55 23 101 23s82-9 101-23l-18-62c-20 8-49 13-83 13s-63-5-83-13z" />
    </g>
  </Icon>
);
const VueTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#42b883" d="m64 140h148l44 77l44-77h148L256 473" />
    <path fill="#35495e" d="m141 140h71l44 77l44-77h71L256 340" />
  </Icon>
);
const W3cTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#005a9c" />
    <path fill="#fff" d="M165 152l37 124 37-124h99v13l-38 64c16 4 40 20 40 62 0 78-83 88-103 24l20-8c19 40 55 28 55-16 0-13-2-41-36-41h-10v-11l36-61h-45l-52 179h-2l-39-126-37 126h-3L63 152h26l37 124 25-83-12-41m222 118c-31-63 23-165 67-89l15-30 4 26-16 29c-29-54-80-14-70 64m-16 25c31 60 74 50 99 3l5 21c-28 53-83 52-105-24zm16-25c-31-63 23-165 67-89l15-30 4 26-16 29c-29-54-80-14-70 64z" />
  </Icon>
);
const WebassemblyTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#654ff0" d="m159.1 270.1h24l16.5 87.2 19.8-87.2h22.5l17.9 88.3 18.9-88.3h23.5l-30.6 128.2h-23.8L230 311l-19.1 87.3h-24.3zm170.2 0h37.8l37.5 128.2h-24.7l-8.2-28.6h-43.1l-6.3 28.6h-24.1zm14.4 31.6-10.5 47h32.6l-12.1-47zM297.4 75c0 .6 0 1.3 0 2c0 22.9-18.6 41.5-41.5 41.5c-22.9 0-41.5-18.6-41.5-41.5c0-.7 0-1.4 0-2H75V437H437V75z" />
  </Icon>
);
const WechatTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#00c70a" />
    <path d="M402 369c23-17 38 -42 38 -70c0-51 -50 -92 -111 -92s-110 41-110 92s49 92 110 92c13 0 25-2 36 -5c4-1 8 0 9 1l25 14c3 2 6 0 5-4l-6-22c0-3 2 -5 4 -6m-110-85a15 15 0 110-29a15 15 0 010 29m74 0a15 15 0 110-29a15 15 0 010 29" />
    <path d="m205 105c-73 0-132 50-132 111 0 33 17 63 45 83 3 2 5 5 4 10l-7 24c-1 5 3 7 6 6l30-17c3-2 7-3 11-2 26 8 48 6 51 6-24-84 59-132 123-128-10-52-65-93-131-93m-44 93a18 18 0 1 1 0-35 18 18 0 0 1 0 35m89 0a18 18 0 1 1 0-35 18 18 0 0 1 0 35" />
  </Icon>
);
const WekanTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#006984" />
    <path fill="#fff" d="M372 309s5-7 6-11l1-3-6 1c-1 1-5 13-19 26-8 7-17 9-25 8-6 0-10-4-13-11-2-7-3-15-1-25 4-19 9-29 16-29 8 7-3 35-12 42l-3 3h4c10-3 18-6 26-11 7-5 12-10 14-15 1-6-1-11-6-15s-12-6-20-7c-8 0-16 1-23 5 10-19 21-38 27-57 5-17 4-30-5-38-3-3-7-5-13-6-12-3-24-7-15 6 2 2 3 5 3 7 5 31-7 56-18 79-11 22-26 54-47 66l-1-3c-1-5 0-9 1-14l7-38 8-37 3-15c1-4 0-6-1-8l-17-10c-8-5-8-5-11 3l-11 31a680 680 0 01-36 77c-6 10-11 15-15 15-4-3-2-9-1-12 1-12 5-25 7-35l9-32 7-27 6-19c0-3-2-6-5-8l-15-9c-5-3-7-2-12-1a459 459 0 00-76 37c-11 8-18 14-21 20-4 8-3 15 1 22 2 4 5 8 9 11 15 10 10 4 12-8 0-4 2-8 4-12 5-8 13-18 27-29 14-10 29-19 45-26l-9 36-9 38c-3 14-8 27-8 41 2 12 12 21 24 21 8 0 15-5 22-15a481 481 0 0036-78l-6 32-4 28c-1 8 0 16 4 22 5 7 13 10 21 11 8 0 18-7 32-20l9-11c0 10 3 17 10 23 9 6 19 10 31 10 19-1 42-11 52-26z" />
  </Icon>
);
const WhatsappTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#25d366" />
    <path fill="#25d366" stroke="#fff" stroke-width="26" d="M123 393l14-65a138 138 0 1150 47z" />
    <path fill="#fff" d="M308 273c-3-2-6-3-9 1l-12 16c-3 2-5 3-9 1-15-8-36-17-54-47-1-4 1-6 3-8l9-14c2-2 1-4 0-6l-12-29c-3-8-6-7-9-7h-8c-2 0-6 1-10 5-22 22-13 53 3 73 3 4 23 40 66 59 32 14 39 12 48 10 11-1 22-10 27-19 1-3 6-16 2-18" />
  </Icon>
);
const WhatwgTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M215,215c0,-41.28,82.56,-51.6,79.12,-6.88c0,30.96,-55.04,44.72,-55.04,79.12v24.08h34.4v-13.76c0,-30.96,58.48,-41.28,58.48,-92.88c-6.88,-75.68,-154.8,-75.68,-154.8,10.32zm24.08,110.08h34.4v34.4h-34.4" fill="#3c790a" />
    <circle cx="256" cy="256" r="154.5" fill="none" stroke="#3c790a" stroke-width="37.5" />
  </Icon>
);
const WifiTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="M392 220a11 11 0 110-1zm-152 0a11 11 0 110-1zm-111-48a63 63 0 00-63 63v41a63 63 0 0063 63h254a63 63 0 0063-63v-41a63 63 0 00-63-63zm243 66v60h18v-60zm-79-27v87h19v-34h44v-18h-44v-18h47v-17zm-176 0l13 56l17-56h15l17 58l14-58h17l-23 87h-16l-17-60l-18 60h-15l-23-87zm121 27v60h-18v-60zm202 39a56 56 0 01-56 56H209a56 56 0 0056-56v-43a56 56 0 0156-56h63a56 56 0 0156 56zm-290 74a142 142 0 00212 0zm212-191a142 142 0 00-212 0z" />
  </Icon>
);
const WikipediaTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m65 152v8c0 2 1 3 4 3 20 1 20 5 28 23l90 196c7 14 16 16 25-1l45-88 42 88c8 15 16 16 24 0l86-194c8-17 19-24 36-24 2 0 2-1 2-3v-8h-80l-1 1v7c0 2 2 3 4 3 10 0 29 2 21 19l-70 166-3-1-43-88 37-72c8-15 10-24 25-24 2 0 4-1 4-3v-7l-1-1h-64l-1 1v7c0 3 4 3 7 3 18 1 16 8 10 19l-27 56-25-52c-9-16-11-21 2-22 3-1 8-1 8-4v-7l-1-1h-69l-1 1v8c0 2 2 2 5 2 12 2 12 3 23 26l40 84-37 75-3-1-76-167c-8-17 2-16 18-17 3 0 3-1 3-3v-7l-1-1z" />
  </Icon>
);
const WindowsTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#00adef" />
    <path fill="#fff" d="M98 145V250H225V127m15-2V250H408V101M98 368V263H225V386m15 1V263H408V411" />
  </Icon>
);
const WireTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="none" stroke="#000" stroke-width="19" d="M99 127v163a1 1 0 00186 0V157a1 1 0 00-58 0v133a1 1 0 00186 0V127" />
  </Icon>
);
const WireguardTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#88171a" />
    <path d="m238 53l35 8 0 2c-15 2-30-4-45-5 11 7 23 11 35 15-19 16-35-5-56 9 20 10 19 8 21 27-9 1-24 10-27 16 13 3 28 0 41 8-4 3-14 7-18 10 9 2 20-2 25 1 19 16 54 38 64 60 17 37-22 77-60 83-53 11-83 66-64 117 19 50 78 72 125 46 66-40 56-108 16-145-2-2-4-2-6 0-14 9-29 17-45 24 36 8 41 35 37 54-13 48-78 37-85-4-3-19 7-38 24-46 59-26 87-30 104-97 6-38-3-58-31-80-11-11-33-18-40-35-1-2 1-6 3-6 10-2 49-3 49-1 7 7 13-4 16-9-10-2-21-1-29-1-1 0-3-2-4-3 1 -1 3-2 4-2h41c0-7-9-17-18-19v3c-8 1-16-1-24-4-4-3-7-9-11-11-16-9-33-16-54-16-10 0-17 1-23 1zm74 30l3 3-4 2c-2 1-3 0-4-1-2-3 4-5 5-4zm-120 96c-54 33-51 109-3 139 4 2 6 2 8-1 12-15 23-22 36-30-25-4-38-16-37-33-4-60 83-54 74 2-2 10-8 19-16 25 27-6 47-21 55-48 2-8 2-19-2-26-30-44-75-53-115-28zm-62 195c16-7 33-10 49-13 1-13 5-26 13-36-30 0-55 20-62 49z" fill="#fff" />
  </Icon>
);
const WordpressTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#05a8da" />
    <circle cx="256" cy="256" fill="none" r="182" stroke="#fff" stroke-width="20" />
    <path d="m315 424 28-15 54-156c10-25 13-45 13-62 0-32-13-60-36-63-21-2-33 19-32 31 2 29 31 45 31 85 0 28-18 73-31 117l-62-187 20-1c10 0 9-15-1-14-31 3-60 2-92 0-10-1-10 14-1 14l18 1 27 74-38 114-63-188 20-1c9 0 8-15-1-14-29 2-57 4-64-1l-8 24 84 233 25 14 54-158" fill="#fff" />
  </Icon>
);
const WorkatoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path fill="#27989F" d="M205 386L156 386C124 309 95 219 70 127L134 127C145 178 164 257 183 313C198 264 218 189 231 127L281 127C294 189 313 264 330 313C348 257 367 178 378 127L442 127C417 219 388 309 356 386L307 386C288 332 272 282 256 223C240 282 224 332 205 386Z" />
  </Icon>
);
const XingTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#077" />
    <path d="M131 157l36 60v1l-54 94c-4 7-1 11 3 11h58c3 0 4 0 6-3l57-99v-2l-40-64-2-4-4-1h-56c-3 0-5 3-4 7zm217-74c-5 0-7 2-10 6L225 287v2l75 133c2 3 4 4 8 4h54c6 0 8-3 5-9l-74-128L406 90c2-4-1-7-5-7z" fill="#fff" />
  </Icon>
);
const XmppTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <linearGradient id="a" x1=".5" y1="1" x2=".5" y2="0%">
      <stop offset=".3" stop-color="#1be" />
      <stop offset="1" stop-color="#025" />
    </linearGradient>
    <path id="b" d="M 379.9,170 C 379.9,382.7 159,442 159,442 v 2 C 307,432 470,279 475,133 Z" fill="url(#a)" />
    <g fill="#e61">
      <path id="c" d="M 344,183 C 341,303 240,416 157,441 v 2 C 284,407 430,282 413,157 Z" />
    </g>
    <g fill="#d51">
      <path id="d" d="m 396,163.4 c .12,130 -95.3,245 -252,278 v 5 c 173,-13 284,-179.7 272,-290.7 z" />
    </g>
    <g transform="matrix(-1,0,0,1,512,0)">
      <use href="#b" />
      <use href="#c" fill="#ac6" />
      <use href="#d" fill="#493" />
    </g>
  </Icon>
);
const YahooTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#5f01d1" />
    <g fill="#fff">
      <path d="M203 404h-62l25-59-69-165h63l37 95 37-95h62m58 76h-69l62-148h69" />
      <circle cx="303" cy="308" r="38" />
    </g>
  </Icon>
);
const YammerTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <path d="m326 260c1 9 60 16 100 14 19-1 18-31-1-32-19-2-100 9-99 18zm-25-45c5 8 61-15 95-36 16-10 1-36-17-28-17 8-83 57-78 64zm1 86c-4 7 43 45 77 65 17 9 33-17 17-28s-90-45-94-37z" fill="#265495" />
    <path d="m278 134-74 185-73-185m73 185-11 29s-14 38-58 30" fill="none" stroke="#265495" stroke-width="34" stroke-linecap="round" />
  </Icon>
);
const YarnTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path stroke="#fff" stroke-width="16" d="M411 310c-23-4-70 34-82 34 0 0 11-53-33-102 43-61 32-120 24-137-10-19-24-7-24-7s-24-75-56 2c-39-2-47 25-72 35-27 31 1 68 1 68-37 30-46 78-44 95-27 19-24 79-3 86-9 21 21 38 53 21 0 0 8 13 20 14 31 2 101-2 110-15 28-2 93-52 111-51 21 2 34-40-5-43" />
    <path fill="#fff" d="M172 399c8-7 12-32 12-32l11 10s-20 10-10 28l-13-6" />
  </Icon>
);
const YelpTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#d32323" />
    <path fill="#fff" d="M152 311s-16 3-18-13 0-40 6-55 20-9 20-9l65 32s19 13-3 27m36 28s-6-20-24-8l-49 54s-10 13 3 22 35 19 54 20 15-14 15-14m41-100s-20-1-17 19l40 64s10 12 20 5 28-28 36-45-9-20-9-20m-85-66s-6 19 15 21l72-20s15-7 9-20-18-33-33-45-22 3-22 3m-88 49s18 13 25-8V95s0-15-16-15-56 10-72 19-6 21-6 21" />
  </Icon>
);
const YoutubeTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" />
    <path d="m427 169c-4-15-17-27-32-31-34-9-239-10-278 0-15 4-28 16-32 31-9 38-10 135 0 174 4 15 17 27 32 31 36 10 241 10 278 0 15-4 28-16 32-31 9-36 9-137 0-174" fill="#fff" />
    <path d="m220 203v106l93-53" />
  </Icon>
);
const YubicoTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#fff" />
    <circle cx="256" cy="256" fill="none" r="233" stroke="#98c93c" stroke-width="45" />
    <path d="M256 407H185l33-77-80-202h69l49 132 46-132h68" fill="#98c93c" />
  </Icon>
);
const ZoomTinyIcon = (props) => (
  <Icon viewBox="0 0 512 512" {...props}>
    <rect width="512" height="512" rx="15%" fill="#2D8CFF" />
    <path fill="#fff" d="M428 357c8 2 15-2 19-8 2-3 2-8 2-19V179c0-11 0-15-2-19-3-8-11-11-19-8-21 14-67 55-68 72-.8 3-.8 8-.8 15v38c0 8 0 11 .8 15 1 8 4 15 8 19 12 9 52 45 61 45zM64 187c0-15 0-23 3-27 2-4 8-8 11-11 4-3 11-3 27-3h129c38 0 57 0 72 8 11 8 23 15 30 30 8 15 8 34 8 72v68c0 15 0 23-3 27-2 4-8 8-11 11-4 3-11 3-27 3H174c-38 0-57 0-72-8-11-8-23-15-30-30-8-15-8-34-8-72z" />
  </Icon>
);

const ChakraComponents = {
  AcastTinyIcon,
  AccessTinyIcon,
  AdobeTinyIcon,
  AirbnbTinyIcon,
  AmazonTinyIcon,
  Amazon_alexaTinyIcon,
  Amazon_s3TinyIcon,
  AmberframeworkTinyIcon,
  AndotpTinyIcon,
  AndroidTinyIcon,
  AngellistTinyIcon,
  AngularTinyIcon,
  AnsibleTinyIcon,
  ApereoTinyIcon,
  AppleTinyIcon,
  Apple_musicTinyIcon,
  Arch_linuxTinyIcon,
  Auth0TinyIcon,
  AuthyTinyIcon,
  BackboneTinyIcon,
  BadooTinyIcon,
  BaiduTinyIcon,
  BandcampTinyIcon,
  BehanceTinyIcon,
  BingTinyIcon,
  BitbucketTinyIcon,
  BitcoinTinyIcon,
  BitwardenTinyIcon,
  BloggerTinyIcon,
  BluetoothTinyIcon,
  BraveTinyIcon,
  BriarTinyIcon,
  BufferTinyIcon,
  BugcrowdTinyIcon,
  CalendarTinyIcon,
  CentosTinyIcon,
  ChromeTinyIcon,
  ChromiumTinyIcon,
  CitrixTinyIcon,
  Citrix_compactTinyIcon,
  ClojureTinyIcon,
  CloudflareTinyIcon,
  CodebergTinyIcon,
  CodepenTinyIcon,
  CoffeescriptTinyIcon,
  CoilTinyIcon,
  CoinpotTinyIcon,
  ColaboratoryTinyIcon,
  CplusplusTinyIcon,
  CrystalTinyIcon,
  Css3TinyIcon,
  DartTinyIcon,
  DatacampTinyIcon,
  DebianTinyIcon,
  DeezerTinyIcon,
  DeliciousTinyIcon,
  Dev_toTinyIcon,
  DigidentityTinyIcon,
  DigitaloceanTinyIcon,
  DiscordTinyIcon,
  DisqusTinyIcon,
  DjangoprojectTinyIcon,
  DockerTinyIcon,
  DribbbleTinyIcon,
  DroneTinyIcon,
  DropboxTinyIcon,
  DrupalTinyIcon,
  DuckduckgoTinyIcon,
  EaTinyIcon,
  EbayTinyIcon,
  EdgeTinyIcon,
  ElasticTinyIcon,
  ElementTinyIcon,
  ElementaryosTinyIcon,
  EmailTinyIcon,
  EpubTinyIcon,
  EspressifTinyIcon,
  EthereumTinyIcon,
  EtsyTinyIcon,
  EvernoteTinyIcon,
  FacebookTinyIcon,
  FinderTinyIcon,
  FirefoxTinyIcon,
  FlattrTinyIcon,
  FlickrTinyIcon,
  FlutterTinyIcon,
  Foobar2000TinyIcon,
  FreebsdTinyIcon,
  FreecodecampTinyIcon,
  FriendicaTinyIcon,
  FritzTinyIcon,
  GandiTinyIcon,
  GatehubTinyIcon,
  GhostTinyIcon,
  GitTinyIcon,
  GiteaTinyIcon,
  GithubTinyIcon,
  GitlabTinyIcon,
  GlitchTinyIcon,
  GmailTinyIcon,
  Gmail_oldTinyIcon,
  GoTinyIcon,
  GogcomTinyIcon,
  GojekTinyIcon,
  GoodreadsTinyIcon,
  GoogleTinyIcon,
  Google_calendarTinyIcon,
  Google_collaborative_content_toolsTinyIcon,
  Google_docs_editorsTinyIcon,
  Google_driveTinyIcon,
  Google_drive_oldTinyIcon,
  Google_mapsTinyIcon,
  Google_maps_oldTinyIcon,
  Google_meetTinyIcon,
  Google_playTinyIcon,
  Google_plusTinyIcon,
  Google_podcastsTinyIcon,
  Google_scholarTinyIcon,
  GradleTinyIcon,
  GrafanaTinyIcon,
  GuacamoleTinyIcon,
  GuildedTinyIcon,
  HackernewsTinyIcon,
  HackeroneTinyIcon,
  HamlTinyIcon,
  HerokuTinyIcon,
  HomekitTinyIcon,
  HpTinyIcon,
  Html5TinyIcon,
  HuluTinyIcon,
  HumblebundleTinyIcon,
  I18nextTinyIcon,
  IbmTinyIcon,
  IheartradioTinyIcon,
  ImdbTinyIcon,
  ImgurTinyIcon,
  InstagramTinyIcon,
  IntelTinyIcon,
  IntercomTinyIcon,
  Internet_archiveTinyIcon,
  Itch_ioTinyIcon,
  Itunes_podcastsTinyIcon,
  JacobinTinyIcon,
  JavaTinyIcon,
  JavascriptTinyIcon,
  JellyfinTinyIcon,
  JsonTinyIcon,
  JuliaTinyIcon,
  KaggleTinyIcon,
  KeepassdxTinyIcon,
  KemalTinyIcon,
  KeskonfaiTinyIcon,
  KeybaseTinyIcon,
  KickstarterTinyIcon,
  KoFiTinyIcon,
  KodiTinyIcon,
  KotlinTinyIcon,
  LaravelTinyIcon,
  LastpassTinyIcon,
  LiberapayTinyIcon,
  LineTinyIcon,
  LinkedinTinyIcon,
  LinuxTinyIcon,
  Linux_mintTinyIcon,
  LobstersTinyIcon,
  LockTinyIcon,
  LogitechTinyIcon,
  LuckyframeworkTinyIcon,
  MacosTinyIcon,
  MailTinyIcon,
  MailchimpTinyIcon,
  MaltTinyIcon,
  ManjaroTinyIcon,
  MarkdownTinyIcon,
  MastodonTinyIcon,
  MattermostTinyIcon,
  MediumTinyIcon,
  MeetupTinyIcon,
  MessengerTinyIcon,
  MicroformatsTinyIcon,
  MicrosoftTinyIcon,
  MinecraftTinyIcon,
  NetflixTinyIcon,
  NextcloudTinyIcon,
  NhsTinyIcon,
  NpmTinyIcon,
  OkTinyIcon,
  OlympicsTinyIcon,
  OpenbenchesTinyIcon,
  OpenbugbountyTinyIcon,
  OpencastTinyIcon,
  OpencollectiveTinyIcon,
  OpencoresTinyIcon,
  OpensourceTinyIcon,
  OpenvpnTinyIcon,
  OperaTinyIcon,
  OrcidTinyIcon,
  OriginTinyIcon,
  OutlookTinyIcon,
  OvercastTinyIcon,
  OverleafTinyIcon,
  PatreonTinyIcon,
  PaypalTinyIcon,
  PdfTinyIcon,
  PhoneTinyIcon,
  PhpTinyIcon,
  PinboardTinyIcon,
  PinterestTinyIcon,
  PixelfedTinyIcon,
  PlexTinyIcon,
  PocketTinyIcon,
  PocketcastsTinyIcon,
  PornhubTinyIcon,
  PreactTinyIcon,
  PrintTinyIcon,
  ProtonmailTinyIcon,
  PythonTinyIcon,
  QqTinyIcon,
  QuoraTinyIcon,
  Raspberry_piTinyIcon,
  ReactTinyIcon,
  RedditTinyIcon,
  RedhatTinyIcon,
  ResearchgateTinyIcon,
  RoundcubeTinyIcon,
  RssTinyIcon,
  RubyTinyIcon,
  RubygemsTinyIcon,
  RubyonrailsTinyIcon,
  RustTinyIcon,
  SafariTinyIcon,
  SamsungTinyIcon,
  Samsung_internetTinyIcon,
  Samsung_sTinyIcon,
  Samsung_swoopTinyIcon,
  SassTinyIcon,
  SemaphoreciTinyIcon,
  SentryTinyIcon,
  SignalTinyIcon,
  SketchTinyIcon,
  SkypeTinyIcon,
  SlackTinyIcon,
  SlideshareTinyIcon,
  SnapchatTinyIcon,
  SogoTinyIcon,
  SoundcloudTinyIcon,
  SpotifyTinyIcon,
  Square_cashTinyIcon,
  StackexchangeTinyIcon,
  StackoverflowTinyIcon,
  SteamTinyIcon,
  StitcherTinyIcon,
  StravaTinyIcon,
  StumbleuponTinyIcon,
  SublimetextTinyIcon,
  SubscribestarTinyIcon,
  SvelteTinyIcon,
  SvgTinyIcon,
  SymantecTinyIcon,
  TaigaTinyIcon,
  TeamspeakTinyIcon,
  TelegramTinyIcon,
  TerraformTinyIcon,
  ThisamericanlifeTinyIcon,
  ThreemaTinyIcon,
  TiktokTinyIcon,
  TodoistTinyIcon,
  ToxTinyIcon,
  TrelloTinyIcon,
  TripadvisorTinyIcon,
  TumblrTinyIcon,
  TuneinTinyIcon,
  TutanotaTinyIcon,
  TwilioTinyIcon,
  TwitchTinyIcon,
  TwitterTinyIcon,
  TypescriptTinyIcon,
  UberTinyIcon,
  UbiquitiTinyIcon,
  UbisoftTinyIcon,
  UbuntuTinyIcon,
  UdemyTinyIcon,
  UnicodeTinyIcon,
  UntappdTinyIcon,
  UpholdTinyIcon,
  UplayTinyIcon,
  UpworkTinyIcon,
  VegetarianTinyIcon,
  VenmoTinyIcon,
  ViberTinyIcon,
  VimeoTinyIcon,
  VisualstudiocodeTinyIcon,
  VivinoTinyIcon,
  VkTinyIcon,
  VlcTinyIcon,
  VueTinyIcon,
  W3cTinyIcon,
  WebassemblyTinyIcon,
  WechatTinyIcon,
  WekanTinyIcon,
  WhatsappTinyIcon,
  WhatwgTinyIcon,
  WifiTinyIcon,
  WikipediaTinyIcon,
  WindowsTinyIcon,
  WireTinyIcon,
  WireguardTinyIcon,
  WordpressTinyIcon,
  WorkatoTinyIcon,
  XingTinyIcon,
  XmppTinyIcon,
  YahooTinyIcon,
  YammerTinyIcon,
  YarnTinyIcon,
  YelpTinyIcon,
  YoutubeTinyIcon,
  YubicoTinyIcon,
  ZoomTinyIcon,
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
  Portal,
  RangeSlider,
  RangeSliderTrack,
  RangeSliderFilledTrack,
  RangeSliderThumb
};

const ChakraTags = Object.keys(ChakraComponents);


const isCapitalized = (word) => (word[0] === word[0].toUpperCase());


const getMenuOptionGroupSelections = menuoptiongroup => {
  const type = menuoptiongroup.attribs.type;
  let selections = [];
  const menuitemoptions = menuoptiongroup.children;
  for (let i = 0; i < menuitemoptions.length; i++) {
    let attribs = menuitemoptions[i].attribs;
    if (attribs.isChecked === true || attribs.defaultChecked === true) {
      if (type === "radio") {
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
  for (let i = 0; i < children.length; i++) {
    let item = children[i];
    if (item.name === "MenuOptionGroup") {
      menuoptiongroups.push(item);
    }
  }
  return menuoptiongroups.length ? menuoptiongroups : null;
};

const getMenuListSelection = menulist => {
  const menuoptiongroups = getMenuOptionGroups(menulist);
  if (menuoptiongroups === null) {
    return null;
  }
  let selection = {};
  for (let i = 0; i < menuoptiongroups.length; i++) {
    let menuoptiongroup = menuoptiongroups[i];
    let title = decodeURI(menuoptiongroup.attribs.title);
    selection[title] = getMenuOptionGroupSelections(menuoptiongroup);
  }
  return selection;
};

const getMenuList = menu => {
  const children = menu.children;
  for (let i = 0; i < children.length; i++) {
    let item = children[i];
    if (item.name === "MenuList") {
      return item;
    }
  }
};

const getMenuSelection = menu => {
  return getMenuListSelection(getMenuList(menu));
};

const makeMenuComponent = (menu, shinyValue) => {
  const selected = getMenuSelection(menu);
  if (selected === null) {
    return;
  }
  const [value, setValue] = React.useState(selected);
  const menuoptiongroups = getMenuOptionGroups(getMenuList(menu));
  for (let i = 0; i < menuoptiongroups.length; i++) {
    let groupprops = menuoptiongroups[i].attribs;
    let grouptitle = groupprops.title;
    if (selected.hasOwnProperty(grouptitle)) {
      groupprops.defaultValue = selected[grouptitle];
    }
    groupprops.onChange = (selection) => {
      value[grouptitle] = selection;//Array.isArray(selection) ? selection.map(decodeURI) : decodeURI(selection);
      shinyValue.set(menu.attribs.id, value);
      setValue(value);
      Shiny.setInputValue(
        menu.attribs.id + ":shinyChakraUI.widget",
        { value: value, widget: "menuWithGroups" }
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
  for (let i = 0; i < n; i++) {
    indices.push(i);
    let attribs = childCheckboxes[i].attribs;
    if (isEmptyArray(attribs)) {
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
  if (isEmptyArray(attribs)) {
    parentCheckbox.attribs = {};
    attribs = parentCheckbox.attribs;
  }
  attribs.className = "parentCheckbox";
  attribs.isChecked = allChecked;
  attribs.isIndeterminate = isIndeterminate;
  attribs.onChange = (e) => {
    let state = new Array(n);
    let checked = e.target.checked;
    for (let i = 0; i < n; i++) {
      state[i] = checked;
      checkedState[i][1](checked);
    }
    shinyValue.set(div.attribs.id, state);
    xsetCheckedItems(state);
    Shiny.setInputValue(
      inputId,
      { value: state, widget: "checkboxWithChildren" }
    );
  };
  div.children[1].children = [{
    name: "Fragment",
    attribs: {},
    children: indices.map(i => {
      let [isChecked, setIsChecked] = checkedState[i];
      return $.extend(
        childCheckboxes[i],
        {
          attribs: $.extend(
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
                  { value: xcheckedItems, widget: "checkboxWithChildren" }
                );
              }
            }
          )
        }
      );
    })
  }];
  return state;
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
  if (typeof attribs.style === "string") {
    attribs.style = getStyleObjectFromString(attribs.style);
  }
  if (attribs.hasOwnProperty("class")) {
    attribs.className = attribs.class;
    delete attribs.class;
  }
  if (attribs.hasOwnProperty("for")) {
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
  return html.replace(/\&[#0-9a-z]+;/gi, function (enc) {
    el.innerHTML = enc;
    return el.innerText;
  });
}


const getHookProperty = (states, inputId) => ((hook, key) => {
  if (!states.hasOwnProperty(hook)) {
    throwApp(inputId, <InvalidState message={`Hook '${hook}' not found.`} />);
  }
  if (!states[hook].hasOwnProperty(key)) {
    throwApp(
      inputId,
      <InvalidState message={`Hook '${hook}' has no property '${key}'.`} />
    );
  }
  return states[hook][key];
});

const getState = (states, inputId) => ((state) => {
  if (!states.hasOwnProperty(state)) {
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`} />);
  }
  return states[state].get();
});

const setState = (states, inputId) => ((state, value) => {
  if (!states.hasOwnProperty(state)) {
    throwApp(inputId, <InvalidState message={`State '${state}' not found.`} />);
  }
  if (!states[state].hasOwnProperty("set")) {
    throwApp(
      inputId,
      <InvalidState message={`State '${state}' has no 'set' method.`} />
    );
  }
  states[state].set(value);
});


const Eval = (ev, states, inputId) => {
  const scope = $.extend(Hooks, ChakraComponents, {
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
  if (isJseval(x)) {
    return { get: Eval("() => " + decodeURI(x.__eval), states, inputId) };
  } else if (isHook(x)) {
    let hook = Eval(decodeURI(x.__hook), states, inputId);
    if (typeof hook === "function") {
      return { get: () => hook };
    } else {
      return $.extend(hook, { get: () => hook });
    }
  } else if (isJSX(x)) {
    x = jsxParser(x.__jsx, x.__preamble, inputId, states);
  }
  let [reactState, setReactState] = React.useState(x);
  return { get: () => reactState, set: setReactState };
};

const appendStates = (component, states, inputId) => {
  let attribs = component.attribs;
  if (attribs.hasOwnProperty("id") && attribs.shinyAuto !== false) {
    const stateName = "chakra" + attribs.id;
    if (component.name === "Input") {
      let defaultValue = attribs.hasOwnProperty("defaultValue") ?
        decodeURI(attribs.defaultValue) : null;
      if (defaultValue === null) {
        const hasValue = attribs.hasOwnProperty("value");
        const value = hasValue ? attribs.value : null;
        if (hasValue) {
          if (!isJseval(value)) {
            defaultValue = decodeURI(value);
          } else {
            states[stateName] = makeState(value, states, inputId);
          }
        } else {
          defaultValue = "";
        }
      }
      if (defaultValue !== null) {
        attribs.defaultValue = defaultValue;
      }
    } else if (
      component.name === "NumberInput" &&
      component.parent !== "combinedslider"
    ) {
      let defaultValue =
        attribs.hasOwnProperty("defaultValue") ? attribs.defaultValue : null;
      if (defaultValue === null) {
        const hasValue = attribs.hasOwnProperty("value");
        const value = hasValue ? attribs.value : null;
        if (hasValue) {
          if (!isJseval(value)) {
            defaultValue = value;
          } else {
            states[stateName] = makeState(value, states, inputId);
          }
        } else {
          defaultValue = 0;
        }
      }
      if (defaultValue !== null) {
        attribs.defaultValue = defaultValue;
      }
    }
  }
  for (let i = 0; i < component.children.length; i++) {
    if (isTag(component.children[i])) {
      //component.children[i].hasStates = true;
      appendStates(component.children[i], states, inputId);
    }
  }
};


const InvalidTag = ({ message }) => {
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

const InvalidState = ({ message }) => {
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
  if (body.length !== 1) {
    return false;
  }
  const node = body[0];
  if (node.type !== "ExpressionStatement") {
    return false;
  }
  const expressionType = node.expression.type;
  if (expressionType !== "JSXElement" && expressionType !== "JSXFragment") {
    return false;
  }
  return true;
};


function ShinyValue(inputId) {
  const $el = $("#" + inputId);
  this.add = (key, v, force) => {
    let value = $el.data("value");
    if (force || value === undefined || value[key] === undefined) {
      $el.data("value", $.extend(value, Object.fromEntries([[key, v]])));
      if (Shiny.shinyapp.isConnected()) {
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
  for (let i = 0; i < component.children.length; i++) {
    let child = component.children[i];
    if (isTag(child)) {
      if (funcs.hasOwnProperty(child.name)) {
        let func = funcs[child.name];
        if (child.attribs.hasOwnProperty("onClick")) {
          let f = Eval(
            decodeURI(child.attribs.onClick.__eval), states, inputId
          );
          child.attribs.onClick = (e) => {
            f(e);
            func(e);
          };
        } else {
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
    if (!isJSXElement(ast)) {
      throw "notjsx";
    }
  } catch (error) {
    let message, code;
    if (error === "notjsx") {
      message = "Error in `jsx()`: not a JSX component.";
      code = jsxString;
    } else {
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
  if (preamble) {
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
    { React },
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


const childToAttribs = (component, shinyValue, inputId) => {
  let attribs = component.attribs;
  if (isNonEmptyArray(component.children)) {
    const child = chakraComponent(component.children[0], shinyValue, {}, {}, inputId);
    attribs = $.extend(attribs, { children: child });
  }
  return attribs;
};

/* MAIN FUNCTION ----------------------------------------------------------- */
const chakraComponent = (
  component, shinyValue, states, patch,
  inputId, radiogroupValues, setRadiogroupValues
) => {
  if (React.isValidElement(component)) {
    return component;
  }
  if (typeof component === "string") {
    return decodeURI(component);
  }
  if (isHTML(component)) {
    return ReactHtmlParser(unescapeHtml(decodeURI(component.__html)));
  }
  if (isJSX(component)) {
    return jsxParser(component.__jsx, component.__preamble, inputId, states);
  }
  if (isJseval(component)) {
    const ev = Eval(decodeURI(component.__eval), states, inputId);
    if (isHTML(ev)) {
      return ReactHtmlParser(unescapeHtml(decodeURI(ev.__html)));
    }
    if (isTag(ev)) {
      component = ev;
    } else {
      return ev;
    }
  }
  if (typeof component !== "object") {
    return component;
  }
  if (component === null) {
    return;
  }
  const tagName = component.name;
  if (isCapitalized(tagName) && !ChakraTags.includes(tagName)) {
    throwApp(inputId, <InvalidTag message={`tag '${tagName}'`} />);
  }

  /* ------------------------------------------------------------------------ */
  if (component.statesGroup && states.done !== true) {
    states = JSON.parse(decodeURI(component.states));
    for (const key in states) {
      states[key] = makeState(states[key], states, inputId);
    }
    appendStates(component, states, inputId);
    let statesGroup = component.statesGroup;
    delete component.statesGroup;
    //states.done = true;
    Shiny.addCustomMessageHandler(statesGroup, function (x) {
      let bind = false;
      if (x.type === "html") {
        x.value = ReactHtmlParser(decodeURI(x.value));
        bind = true;
      } else if (x.type === "component") {
        x.value = chakraComponent(
          JSON.parse(JSON.stringify(x.value)), shinyValue, states, {}, inputId
        );
        //states.done = true;
        states[x.state].set(undefined);
        bind = true;
      } else if (x.type === "jsx") {
        x.value = jsxParser(x.value.__jsx, x.value.__preamble, inputId, states);
      }
      states[x.state].set(x.value);
      if (bind) Shiny.bindAll();
    });
    component.hasStates = true;
  }

  /* ------------------------------------------------------------------------ */
  let props = component.attribs;
  if (isEmptyArray(props)) {
    props = {};
  }
  for (const key in props) {
    if (typeof props[key] === "string") {
      props[key] = decodeURI(props[key]);
    } else if (isJseval(props[key])) {
      props[key] = Eval(decodeURI(props[key].__eval), states, inputId);
    } else if (isJSX(props[key])) {
      props[key] =
        jsxParser(props[key].__jsx, props[key].__preamble, inputId, states);
    }
  }
  if (typeof props.onClick === "string") {
    props.onClick = Eval(props.onClick, states, inputId);
  }

  if ( /*************************************************** WIDGET ALERTDIALOG */
    component.widget === "alertdialog"
  ) {
    delete component.widget;
    shinyValue.add(props.id, null);
    const [isOpen, setIsOpen] = React.useState(false);
    const [disabled, setDisabled] = React.useState(false);
    const setShinyValue = value => {
      if (value !== undefined) {
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
      OpenButton: () => { setIsOpen(true); },
      OpenIconButton: () => { setIsOpen(true); },
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
        onEsc: () => { setShinyValue("esc"); }
      }
    };
  } else if ( /************************************************** WIDGET DRAWER */
    component.widget === "drawer"
  ) {
    delete component.widget;
    const { isOpen, onOpen, onClose } =
      useDisclosure({ defaultIsOpen: component.isOpen });
    const btnRef = React.useRef();
    shinyValue.add(props.id, null);
    const setShinyValue = (e) => {
      const value = e.currentTarget.dataset.val;
      if (value !== undefined) {
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
  } else if ( /*************************************************** WIDGET MODAL */
    component.widget === "modal"
  ) {
    delete component.widget;
    const { isOpen, onOpen, onClose } =
      useDisclosure({ defaultIsOpen: component.isOpen });
    shinyValue.add(props.id, null);
    const setShinyValue = (e) => {
      let value = e.currentTarget.dataset.val;
      if (value !== undefined) {
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
  } else if ( /************************************************* COMPONENT MENU */
    component.name === "Menu" && component.process !== false
  ) {
    component.process = false;
    let selected = getMenuSelection(component);
    if (selected) {
      shinyValue.add(props.id, selected);
      selected = JSON.stringify(selected);
      makeMenuComponent(component, shinyValue);
      const menubutton = component.children[0];
      patch.MenuButton = {
        as: menubutton.attribs.icon ? IconButton : Button
      };
      if (menubutton.attribs.text) {
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
      } else {
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
    } else {
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
      if (menubutton.attribs.text) {
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
  } else if ( /********************************************** COMPONENT POPOVER */
    component.name === "Popover" && props.hasOwnProperty("id")
  ) {
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(null);
    shinyValue.add(props.id, null);
    const setShinyValue = (value) => {
      if (value !== undefined) {
        Shiny.setInputValue(props.id, value);
        shinyValue.set(props.id, value);
      }
    };
    const funcs = {
      Button: (e) => { setShinyValue(e.currentTarget.dataset.val) },
      IconButton: (e) => { setShinyValue(e.currentTarget.dataset.val) }
    };
    mergeOnClick(component, funcs, states, inputId);
  } else if ( /*************************************** COMPONENT POPOVERTRIGGER */
    component.name === "PopoverTrigger"
  ) {
    const child =
      chakraComponent(component.children[0], shinyValue, {}, {}, inputId);
    return <PopoverTrigger>{child}</PopoverTrigger>;
  } else if ( /************************************************* COMPONENT TABS */
    component.name === "Tabs" && props.hasOwnProperty("id")
  ) {
    const defaultIndex = props.defaultIndex ? props.defaultIndex : 0;
    shinyValue.add(props.id, defaultIndex);
    props.onChange = index => {
      Shiny.setInputValue(props.id, index);
      shinyValue.set(props.id, index);
    };
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = defaultIndex;
  } else if ( /******************************************* CHECKBOXWITHCHILDREN */
    props.class === "checkboxWithChildren"
  ) {
    const state = makeCheckboxWithChildren(component, shinyValue);
    shinyValue.add(props.id, state);
    props.className = "chakraShiny";
    delete props.class;
    props["data-shinyinitvalue"] = JSON.stringify(state);
    props["data-widget"] = "checkboxWithChildren";
  } else if ( /****************************************** COMPONENT NUMBERINPUT */
    component.name === "NumberInput" &&
    component.parent !== "combinedslider" &&
    //props.shinyAuto !== false && 
    props.hasOwnProperty("id")
  ) {
    if (isNotEmpty(states) && states.hasOwnProperty("chakra" + props.id)) {
      const chakraState = states["chakra" + props.id];
      const getter = () => {
        let value = chakraState.get();
        if (Shiny.shinyapp.isConnected()) {
          Shiny.setInputValue(props.id, value);
        }
        shinyValue.set(props.id, value);
        return value;
      };
      props.value = getter();
    } else {
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
  } else if ( /*********************************************** COMPONENT SWITCH */
    component.name === "Switch" &&
    //props.shinyAuto !== false && 
    props.hasOwnProperty("id")
  ) {
    if (typeof props.isChecked !== "object") {
      if (!props.hasOwnProperty("defaultChecked")) {
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      const f = props.onChange;
      if (f) {
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      } else {
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
  } else if ( /********************************************* COMPONENT CHECKBOX */
    component.name === "Checkbox" &&
    //props.shinyAuto !== false && 
    !component.dontprocess &&
    props.hasOwnProperty("id") &&
    !["parentCheckbox", "childrenCheckbox"].includes(props.className)
  ) {
    if (typeof props.isChecked !== "object") {
      if (!props.hasOwnProperty("defaultChecked")) {
        props.defaultChecked = props.isChecked === true;
      }
      delete props.isChecked;
      shinyValue.add(props.id, props.defaultChecked, component.force);
      const f = props.onChange;
      if (f) {
        props.onChange = event => {
          shinyValue.set(props.id, event.target.checked);
          f(event);
        }
      } else {
        props.onChange = event => shinyValue.set(props.id, event.target.checked)
      }
    }
  } else if ( /**************************************** COMPONENT CHECKBOXGROUP */
    component.name === "CheckboxGroup" && component.processed !== true
  ) {
    component.processed = true;
    let divattrs = { id: props.id };
    if (props.hasOwnProperty("defaultValue")) {
      props.defaultValue = props.defaultValue.map(decodeURI);
      divattrs.className = "chakraShiny";
      divattrs["data-shinyinitvalue"] = JSON.stringify(props.defaultValue);
      shinyValue.add(props.id, props.defaultValue);
    }
    component.attribs = $.extend(props,
      {
        onChange: value => {
          Shiny.setInputValue(props.id, value);
          shinyValue.set(props.id, value);
        }
      }
    );
    component = {
      name: "div",
      attribs: divattrs,
      children: [component]
    };
    props = divattrs;
  } else if ( /******************************************* COMPONENT RADIOGROUP */
    component.name === "RadioGroup"
  ) {
    shinyValue.add(props.id, radiogroupValues[props.id]);
    const fonchange = props.onChange || ((value) => { });
    props = $.extend(props,
      {
        onChange: (value) => {
          let obj = {};
          for (let key in radiogroupValues) {
            if (key === props.id) {
              obj[key] = value;
            } else {
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
  } else if ( /******************************************** COMPONENT SCRIPTTAG */
    component.name === "ScriptTag" && component.decoded !== true
  ) {
    props.dangerouslySetInnerHTML.__html =
      decodeURI(props.dangerouslySetInnerHTML.__html);
    component.decoded = true;
  } else if ( /********************************************* COMPONENT EDITABLE */
    component.name === "Editable" &&
    props.hasOwnProperty("id") &&
    props.shinyAuto !== false
  ) {
    const defaultValue =
      props.hasOwnProperty("defaultValue") ? props.defaultValue : "";
    props.className = "chakraShiny";
    props["data-shinyinitvalue"] = defaultValue;
    shinyValue.add(props.id, defaultValue);
    const f = props.onChange || (() => { });
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
  } else if ( /************************************************ COMPONENT INPUT */
    component.name === "Input" &&
    props.hasOwnProperty("id") &&
    props.shinyAuto !== false
  ) {
    props.className = "chakraShiny";
    if (isNotEmpty(states) && states.hasOwnProperty("chakra" + props.id)) {
      const chakraState = states["chakra" + props.id];
      props["data-shinyinitvalue"] = chakraState.get();
      const getter = () => {
        let value = chakraState.get();
        if (Shiny.shinyapp.isConnected()) {
          Shiny.setInputValue(props.id, value);
        }
        shinyValue.set(props.id, value);
        return value;
      };
      props.value = getter();
    } else {
      const defaultValue = props.hasOwnProperty("defaultValue") ?
        props.defaultValue :
        (props.hasOwnProperty("value") ? props.value : "");
      const inputValue = defaultValue;
      props.defaultValue = inputValue;
      props["data-shinyinitvalue"] = inputValue;
      shinyValue.add(props.id, inputValue);
      delete props.value;
      const f = props.onChange;
      if (f) {
        props.onChange = (event) => {
          Shiny.setInputValue(props.id, event.target.value);
          shinyValue.set(props.id, event.target.value);
          f(event);
        };
      } else {
        props.onChange = (event) => {
          Shiny.setInputValue(props.id, event.target.value);
          shinyValue.set(props.id, event.target.value);
        };
      }
    }
  } else if ( /************************************************** WIDGET SLIDER */
    component.widget === "slider"
  ) {
    let slider = component.children[component.children.length - 1];
    const defaultValue = slider.attribs.defaultValue;
    //props.class = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const sliderMark = slider.children.length === 3;
    const hastooltip = slider.children[1].name === "Tooltip";
    let sliderValue = null;
    let setSliderValue = () => { };
    if (sliderMark || hastooltip) {
      [sliderValue, setSliderValue] = React.useState(defaultValue);
      let child1 = slider.children[1];
      if (sliderMark) {
        child1.attribs.value = sliderValue;
        child1.children = [sliderValue];
      } else { // tooltip
        const tooltip = child1;
        const tooltipAttribs = $.extend(tooltip.attribs, { label: sliderValue });
        const thumb = tooltip.children[0];
        const thumbAttribs = childToAttribs(thumb, shinyValue, inputId);
        slider.children[1] =
          <Tooltip {...tooltipAttribs}>
            <SliderThumb {...thumbAttribs} />
          </Tooltip>;
      }
    }
    if (component.shinyValueOn === "end") {
      slider.attribs.onChangeEnd = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
      };
      if (sliderMark || hastooltip) {
        slider.attribs.onChange = (val) => {
          setSliderValue(val);
        };
      }
    } else {
      slider.attribs.onChange = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
        setSliderValue(val);
      };
    }
  } else if ( /******************************************** WIDGET RANGE SLIDER */
    component.widget === "rangeslider"
  ) {
    let rslider = component.children[component.children.length - 1];
    const defaultValue = rslider.attribs.defaultValue;
    //props.class = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const tooltip = rslider.children[1].name === "Tooltip";
    let rsliderValue = null;
    let rsetSliderValue = () => { };
    if (tooltip) {
      [rsliderValue, rsetSliderValue] = React.useState(defaultValue);
      let tooltipleft = rslider.children[1];
      tooltipleft.attribs = $.extend(tooltipleft.attribs, { label: rsliderValue[0] });
      const tooltipleftAttribs = $.extend(tooltipleft.attribs, { label: rsliderValue[0] });
      const thumbleft = tooltipleft.children[0];
      const thumbleftAttribs = childToAttribs(thumbleft, shinyValue, inputId);
      // let thumbleftAttribs = thumbleft.attribs;
      // if(isNonEmptyArray(thumbleft.children)){
      //   const child = chakraComponent(thumbleft.children[0], shinyValue, {}, {}, inputId);
      //   thumbleftAttribs = $.extend(thumbleftAttribs, {children: child});
      // }
      rslider.children[1] =
        <Tooltip {...tooltipleftAttribs}>
          <RangeSliderThumb {...thumbleftAttribs} />
        </Tooltip>;
      let tooltipright = rslider.children[2];
      const tooltiprightAttribs = $.extend(tooltipright.attribs, { label: rsliderValue[1] });
      const thumbright = tooltipright.children[0];
      const thumbrightAttribs = childToAttribs(thumbright, shinyValue, inputId);
      rslider.children[2] =
        <Tooltip {...tooltiprightAttribs}>
          <RangeSliderThumb {...thumbrightAttribs} />
        </Tooltip>;
    }
    if (component.shinyValueOn === "end") {
      rslider.attribs.onChangeEnd = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
      };
      if (tooltip) {
        rslider.attribs.onChange = (val) => {
          rsetSliderValue(val);
        };
      }
    } else {
      rslider.attribs.onChange = (val) => {
        Shiny.setInputValue(props.id, val);
        shinyValue.set(props.id, val);
        rsetSliderValue(val);
      };
    }
  } else if ( /****************************************** WIDGET COMBINEDSLIDER */
    component.widget === "combinedslider"
  ) {
    let numberinput = component.children[0].children[0];
    let slider = component.children[0].children[1];
    const defaultValue = component.value;
    //props.class = "chakraShiny";
    props["data-shinyinitvalue"] = JSON.stringify(defaultValue);
    shinyValue.add(props.id, defaultValue);
    const [sliderValue, setSliderValue] = React.useState(defaultValue);
    const hastooltip = slider.children[1].name === "Tooltip";
    if (hastooltip) {
      const tooltip = slider.children[1];
      const tooltipAttribs = $.extend(tooltip.attribs, { label: sliderValue });
      const thumb = tooltip.children[0];
      const thumbAttribs = childToAttribs(thumb, shinyValue, inputId);
      //const thumbAttribs = child1.children[0].attribs;
      slider.children[1] =
        <Tooltip {...tooltipAttribs}>
          <SliderThumb {...thumbAttribs} />
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
  for (const key in props) {
    if (isTag(props[key])) {
      const name = props[key].name;
      if (isCapitalized(name)) {
        if (!ChakraTags.includes(name)) {
          const x =
            `'${name}' in attribute '${key}' of component '${component.name}'`;
          throwApp(inputId, <InvalidTag message={x} />);
        }
        props[key] =
          React.createElement(ChakraComponents[name], props[key].attribs);
      } else {
        fixTagAttribs(props[key].attribs);
        props[key] = React.createElement(name, props[key].attribs);
      }
    }
  }
  let newprops = $.extend(props, patch[component.name]);
  const nchildren =
    Array.isArray(component.children) ? component.children.length : 0;
  if (!newprops.hasOwnProperty("children") && nchildren > 0) {
    let newpropsChildren = new Array(nchildren);
    for (let i = 0; i < nchildren; i++) {
      if (React.isValidElement(component.children[i])) {
        newpropsChildren[i] = component.children[i];
      } else {
        if (component.hasStates && isTag(component.children[i])) {
          component.children[i].hasStates = true;
          component.children[i].force = component.force;
        }
        const x = component.hasStates || isJseval(component.children[i]) ?
          states : {};
        if (props.shinyAuto === false && isTag(component.children[i])) {
          let attribs = component.children[i].attribs;
          if (isEmptyArray(attribs)) {
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
  if (isCapitalized(tag)) {
    if (isNonEmptyArray(component.children)) {
      return React.createElement(
        ChakraComponents[tag], newprops, component.children
      );
    } else {
      return React.createElement(ChakraComponents[tag], newprops);
    }
  } else {
    fixTagAttribs(newprops);
    if (isNonEmptyArray(component.children)) {
      return React.createElement(tag, newprops, component.children);
    } else {
      return React.createElement(tag, newprops);
    }
  }
};


const ChakraComponent = ({ configuration, value, setValue }) => {

  let patch = {
    process: true
  };

  let RadioGroups = configuration.RadioGroups;
  if (RadioGroups) {
    RadioGroups = Object.fromEntries(
      Object.entries(RadioGroups)
        .map(entry => { return [entry[0], decodeURI(entry[1])]; })
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
    return widget ? { value: value, widget: widget } : value;
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

