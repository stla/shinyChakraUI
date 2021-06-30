shinyChakraUI
================

``` r
library(shiny)
library(shinyChakraUI)
```

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

# More examples

Run `chakraExamples()` to get the list of available examples provided in
the package.
