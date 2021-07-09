shinyChakraUI
================

``` r
library(shiny)
library(shinyChakraUI)
```

The `shinyChakraUI` package is a wrapper of the React library
`Chakra UI`. A very good documentation of this library is available at
<https://chakra-ui.com/>.

# Basics

-   Use `chakraPage` to define your Shiny UI.

-   Use `chakraComponent` to define a Chakra component.

For example, here is a Chakra alert component:

![](https://raw.githubusercontent.com/stla/shinyChakraUI/main/inst/screenshots/chakraAlert.png)

# React states

You can use React states with the help of the `withStates` function.
Here is an example:

![](https://raw.githubusercontent.com/stla/shinyChakraUI/main/inst/screenshots/withStates.gif)

The states are defined in the second argument of the `withStates`
function, in a list. Here one state is defined:
`heading = "I am the heading."`. The state is obtained in the Chakra
component with the help of the R function `getState`. To change the
value of a state, you have to resort to JavaScript. The JavaScript code
must be given as a character string in the R function `jseval`. Here it
is given in the `onClick` attribute of the Chakra button:
`jseval("() => setState('heading', 'New heading!')")`. When the button
is clicked, the `'heading'` state takes the new value `'New heading!'`.

# Writing JSX code

So far, we built React components with the help of the `Tag`
constructor. It is also possible to build a React component by writing
its JSX code, with the help of the `jsx` function. Here is an example:

![](https://raw.githubusercontent.com/stla/shinyChakraUI/main/inst/screenshots/jsx.gif)

The `jsx` function takes two arguments. The first one is the JSX element
and the second one, named `preamble`, is some JavaScript code to be
executed at first.

# Setting a React state from Shiny server

In the `'heading'` React state example, we set the new value of the
state with the help of the JavaScript function `setState`, executed from
the R function `jseval`. It is also possible to set a React state from
the Shiny server function, with the `setReactState` function. It offers
more possibilities: it allows to set as a new value a React component, a
JSX element, a Shiny widget, or some HTML code. Here is an example:

![](https://raw.githubusercontent.com/stla/shinyChakraUI/main/inst/screenshots/setReactState.gif)

# More examples

Run `chakraExamples()` to get the list of available examples provided in
the package. See also the examples of the built-in widgets
`chakraAlertDialog`, `chakraCheckboxWithChildren`, `chakraDrawer`,
`chakraSlider`, `chakraCombinedSlider`, and `chakraModal`.

# The ‘JSX parser’ RStudio addin

The package provides a RStudio addin which allows to convert some JSX
code to the corresponding R code to use in the `chakraComponent`
function. For example, consider this JSX code:

``` jsx
<CheckboxGroup colorScheme="green" defaultValue={["naruto", "kakashi"]}>
  <HStack>
    <Checkbox value="naruto">Naruto</Checkbox>
    <Checkbox value="sasuke">Sasuke</Checkbox>
    <Checkbox value="kakashi">kakashi</Checkbox>
  </HStack>
</CheckboxGroup>
```

Copy it to your clipboard, and then select the ‘JSX parser’ addin in the
RStudio Addins menu. You’ll get this R code:

``` r
Tag$CheckboxGroup(
  colorScheme = "green", defaultValue = list("naruto", "kakashi"),
  Tag$HStack(
    Tag$Checkbox(value = "naruto", "Naruto"),
    Tag$Checkbox(value = "sasuke", "Sasuke"),
    Tag$Checkbox(value = "kakashi", "kakashi")
  )
)
```

This JSX parser is not perfect. It may fail, or you may have to manually
modify the output.
