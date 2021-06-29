#' @title Options for the number input of the combined chakra slider
#' @description Create a list of options to be passed to the
#'   \code{numericInputOptions} argument in \code{\link{chakraCombinedSlider}}.
#'
#' @param width width of the number input, e.g. \code{"100px"} or \code{"20\%"}
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
  width = NULL,
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
  list(
    precision = precision,
    width = validateCssUnit(width),
    fontSize = validateCssUnit(fontSize),
    fontColor = validateColor(fontColor),
    borderColor = validateColor(borderColor),
    focusBorderColor = validateColor(focusBorderColor),
    borderWidth = if(!is.null(borderWidth)){
      if(borderWidth %in% c("medium", "thick", "thin")){
        borderWidth
      }else{
        validateCssUnit(borderWidth)
      }
    },
    incrementStepperColor = validateColor(incrementStepperColor),
    decrementStepperColor = validateColor(decrementStepperColor),
    ...
  )
}

#' Title
#'
#' @param id
#' @param value
#' @param min
#' @param max
#' @param step
#' @param width
#' @param focusThumbOnChange
#' @param trackColor
#' @param filledTrackColor
#' @param tooltip
#' @param tooltipOptions
#' @param thumbOptions
#' @param shinyValueOn
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
chakraCombinedSlider <- function(
  id,
  value,
  min,
  max,
  step = NULL,
  width = NULL,
  # size = "md",
  focusThumbOnChange = FALSE,
  trackColor = NULL,
  filledTrackColor = NULL,
  tooltip = TRUE,
  tooltipOptions = sliderTooltipOptions(),
  thumbOptions = sliderThumbOptions(),
  shinyValueOn = "end",
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
    width = validateCssUnit(width),
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
  numberInput <- Tag$NumberInput(
    maxW = "100px",
    mr = "2rem",
    Tag$NumberInputField(),
    Tag$NumberInputStepper(
      Tag$NumberIncrementStepper(),
      Tag$NumberDecrementStepper()
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
  component[["shinyValueOn"]] = match.arg(shinyValueOn, c("end", "drag"))
  component[["widget"]] = "combinedslider"
  component
}
