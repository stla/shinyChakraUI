#' @title Options for the number input of the combined chakra slider
#' @description Create a list of options to be passed to the
#'   \code{numberInputOptions} argument in \code{\link{chakraCombinedSlider}}.
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
