#' @title Options for the number input of the combined chakra slider
#' @description Create a list of options to be passed to the
#'   \code{numericInputOptions} argument in \code{\link{chakraCombinedSlider}}.
#'
#' @param precision number of decimal points
#' @param maxWidth width of the number input, e.g. \code{"100px"} or \code{"20\%"}
#' @param fontSize font size of the displayed value, e.g. \code{"15px"}
#' @param fontColor color of the displayed value
#' @param borderColor color of the border of the number input
#' @param focusBorderColor color of the border of the number input on focus
#' @param borderWidth width of the border of the number input,
#'   e.g. \code{"3px"} or \code{"medium"}
#' @param incrementStepperColor color of the increment stepper
#' @param decrementStepperColor color of the decrement stepper
#' @param ... other attributes of \code{NumberInput}
#'
#' @importFrom htmltools validateCssUnit
#' @export
numberInputOptions <- function(
  precision = NULL,
  maxWidth = "80px",
  fontSize = NULL,
  fontColor = NULL,
  borderColor = NULL,
  focusBorderColor= NULL,
  borderWidth = NULL,
  incrementStepperColor = NULL,
  decrementStepperColor = NULL,
  ...
){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  numberInputProps <- list(
    precision = precision,
    maxWidth = validateCssUnit(maxWidth),
    ...
  )
  numberInputFieldProps <- list(
    type = "number",
    fontSize = validateCssUnit(fontSize),
    color = validateColor(fontColor),
    borderColor = validateColor(borderColor),
    focusBorderColor = validateColor(focusBorderColor),
    borderWidth = if(!is.null(borderWidth)){
      if(borderWidth %in% c("medium", "thick", "thin")){
        borderWidth
      }else{
        validateCssUnit(borderWidth)
      }
    }
  )
  numberIncrementStepperProps <- list(
    bg = validateColor(incrementStepperColor)
  )
  numberDecrementStepperProps <- list(
    bg = validateColor(decrementStepperColor)
  )
  list(
    numberInputProps = numberInputProps,
    numberInputFieldProps = dropNulls(numberInputFieldProps),
    numberIncrementStepperProps = dropNulls(numberIncrementStepperProps),
    numberDecrementStepperProps = dropNulls(numberDecrementStepperProps)
  )
}

#' @title Combined slider and number input
#' @description A widget combining a slider and a number input.
#'
#' @param id widget id
#' @param value initial value
#' @param min minimal value
#' @param max maximal value
#' @param step increment step
#' @param maxWidth slider width
#' @param numericInputOptions list of options for the number input created with
#'   \code{\link{numberInputOptions}}
#' @param spacing the space between the number input and the slider
#' @param keepWithinRange whether to forbid the value to exceed the max or go
#'   lower than min
#' @param clampValueOnBlur similar to \code{keepWithinRange}
#' @param focusThumbOnChange whether to focus the thumb on change
#' @param trackColor color of the slider track
#' @param filledTrackColor color of the filled slider track
#' @param tooltip whether to set a tooltip to the thumb, to show the value
#' @param tooltipOptions options of the tooltip, a list created with
#'   \code{\link{sliderTooltipOptions}}
#' @param thumbOptions list of options for the thumb created with
#'   \code{\link{sliderThumbOptions}}
#' @param ... other attributes passed to \code{Slider}
#'
#' @return A widget to use in \code{\link{chakraComponent}}.
#' @export
#'
#' @examples
#' library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'
#'   br(), br(),
#'
#'   chakraComponent(
#'     "mycomponent",
#'
#'     chakraCombinedSlider(
#'       "slider",
#'       value = 5,
#'       min = 0,
#'       max = 10,
#'       step = 0.5,
#'       maxWidth = "300px",
#'       tooltip = TRUE,
#'       trackColor = "green.300",
#'       thumbOptions = sliderThumbOptions(
#'         width = 20, height = 20, borderColor = "firebrick", borderWidth = "3px"
#'       )
#'     )
#'
#'   )
#'
#' )
#'
#' server <- function(input, output, session){
#'
#'   observe({
#'     print(input[["slider"]])
#'   })
#'
#' }
#'
#' if(interactive()){
#'   shinyApp(ui, server)
#' }
chakraCombinedSlider <- function(
  id,
  value,
  min,
  max,
  step = NULL,
  maxWidth = "400px",
  numericInputOptions = numberInputOptions(),
  spacing = "2rem",
  keepWithinRange = TRUE,
  clampValueOnBlur = TRUE,
  focusThumbOnChange = FALSE,
  trackColor = NULL,
  filledTrackColor = NULL,
  tooltip = TRUE,
  tooltipOptions = sliderTooltipOptions(),
  thumbOptions = sliderThumbOptions(),
  ...)
{
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  attribs <- dropNulls(list(
    flex = "1",
    min = min,
    max = max,
    step = step,
    maxWidth = validateCssUnit(maxWidth),
    # size = match.arg(size, c("sm", "md", "lg")),
    focusThumbOnChange = focusThumbOnChange,
    display = "block",
    ...
  ))
  track <- asShinyTag(
    list(
      name = "SliderTrack",
      attribs = dropNulls(list(bg = validateColor(trackColor))),
      children = list(
        asShinyTag(
          list(
            name = "SliderFilledTrack",
            attribs = dropNulls(list(bg = validateColor(filledTrackColor))),
            children = list()
          )
        )
      )
    )
  )
  thumb <- asShinyTag(
    list(
      name = "SliderThumb",
      attribs = dropNulls(thumbOptions),
      children = list()
    )
  )
  if(tooltip){
    thumb <- asShinyTag(
      list(
        name = "Tooltip",
        attribs = dropNulls(tooltipOptions),
        children = list(thumb)
      )
    )
  }
  slider <- asShinyTag(
    list(
      name = "Slider",
      attribs = attribs,
      children = list(
        track,
        thumb
      )
    )
  )
  if(
    !identical(
      names(numericInputOptions),
      c(
        "numberInputProps",
        "numberInputFieldProps",
        "numberIncrementStepperProps",
        "numberDecrementStepperProps"
      )
    )
  ){
    stop(
      "`numericInputOptions` must be created by the `numberInputOptions` function",
      call. = TRUE
    )
  }
  numberInput <- asShinyTag(
    list(
      name = "NumberInput",
      attribs = dropNulls(c(
        numericInputOptions[["numberInputProps"]],
        list(
          mr = spacing,
          min = min,
          max = max,
          step = step,
          keepWithinRange = keepWithinRange,
          clampValueOnBlur = clampValueOnBlur
        )
      )),
      children = list(
        asShinyTag(
          list(
            name = "NumberInputField",
            attribs = numericInputOptions[["numberInputFieldProps"]],
            children = list()
          )
        ),
        asShinyTag(
          list(
            name = "NumberInputStepper",
            attribs = emptyNamedList,
            children = list(
              asShinyTag(
                list(
                  name = "NumberIncrementStepper",
                  attribs = numericInputOptions[["numberIncrementStepperProps"]],
                  children = list()
                )
              ),
              asShinyTag(
                list(
                  name = "NumberDecrementStepper",
                  attribs = numericInputOptions[["numberDecrementStepperProps"]],
                  children = list()
                )
              )
            )
          )
        )
      )
    )
  )
  flex <- Tag$Flex(
    numberInput,
    slider
  )
  component <- tags$div(
    id = id,
    class = "form-group chakraTag",
    flex
  )
  component[["value"]] <- value
  component[["widget"]] <- "combinedslider"
  component
}
