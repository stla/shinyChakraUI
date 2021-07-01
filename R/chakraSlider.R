#' @title Slider thumb options
#' @description Define the slider thumb options.
#'
#' @param width thumb width
#' @param height thumb height
#' @param color thumb color
#' @param borderColor thumb border color
#' @param borderWidth thumb border width
#' @param ... other attributes passed to \code{SliderThumb}
#'
#' @return A list of attributes for usage in \code{\link{chakraSlider}} or
#'   \code{\link{chakraCombinedSlider}}.
#' @export
#' @importFrom htmltools validateCssUnit
sliderThumbOptions <- function(
  width = NULL,
  height = NULL,
  color = NULL,
  borderColor = NULL,
  borderWidth = NULL,
  ...
){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  list(
    width = validateCssUnit(width),
    height = validateCssUnit(height),
    bg = validateColor(color),
    borderColor = validateColor(borderColor),
    borderWidth = if(!is.null(borderWidth)){
      if(borderWidth %in% c("medium", "thick", "thin")){
        borderWidth
      }else{
        validateCssUnit(borderWidth)
      }
    },
    ...
  )
}

#' @title Slider mark options.
#' @description Define the options for the slider mark.
#'
#' @param textAlign text alignment
#' @param backgroundColor background color
#' @param textColor text color
#' @param margin margin (CSS property)
#' @param padding padding (CSS property)
#' @param width width
#' @param ... other attributes passed to \code{SliderMark}
#'
#' @return A list of attributes for usage in \code{\link{chakraSlider}}.
#' @export
#' @importFrom htmltools validateCssUnit
sliderMarkOptions <- function(
  textAlign = "center",
  backgroundColor = "blue.500",
  textColor = "white",
  margin = "-35px 0 0 -25px",
  padding = "0 10px",
  width = "50px",
  ...
){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  list(
    textAlign = textAlign,
    backgroundColor = validateColor(backgroundColor),
    color = validateColor(textColor),
    margin = margin,
    padding = padding,
    width = validateCssUnit(width),
    ...
  )
}

#' @title Slider tooltip options
#' @description Defined the slider tooltip options.
#'
#' @param hasArrow whether to include an arrow
#' @param backgroundColor background color
#' @param placement tooltip placement; see
#'   \href{https://chakra-ui.com/docs/overlay/tooltip#placement}{tooltip placement}
#' @param closeOnClick whether to close the tooltip on click
#' @param isOpen whether the tooltip is open
#' @param ... other attributes passed to \code{Tooltip}
#'
#' @return A list of attributes for usage in \code{\link{chakraSlider}} or
#'   \code{\link{chakraCombinedSlider}}.
#' @export
sliderTooltipOptions <- function(
  hasArrow = TRUE,
  backgroundColor = "red.600",
  placement = "top",
  closeOnClick = FALSE,
  isOpen = TRUE,
  ...
){
  if(invalidNamedDotsList(list(...))){
    stop(
      "The arguments given in `...` must be named.", call. = TRUE
    )
  }
  stopifnot(isBoolean(hasArrow))
  stopifnot(isBoolean(closeOnClick))
  stopifnot(isBoolean(isOpen))
  list(
    hasArrow = hasArrow,
    bg = validateColor(backgroundColor),
    placement = placement,
    closeOnClick = closeOnClick,
    isOpen = isOpen,
    ...
  )
}

#' @title Chakra slider
#' @description Create a Chakra slider.
#'
#' @param id widget id
#' @param label label (optional)
#' @param value initial value
#' @param min minimal value
#' @param max maximal value
#' @param step increment step
#' @param width slider width
#' @param size size, \code{"sm"}, \code{"md"}, or \code{"lg"}
#' @param colorScheme a chakra color scheme
#' @param orientation slider orientation, \code{"horizontal"} or
#'   \code{"vertical"}
#' @param focusThumbOnChange whether to focus the thumb on change
#' @param isDisabled whether to disable the slider
#' @param isReadOnly read only mode
#' @param isReversed whether to reverse the slider
#' @param trackColor color of the track
#' @param filledTrackColor color of the filled track
#' @param mark whether to set a mark to the thumb
#'   (I personally prefer the tooltip)
#' @param markOptions options of the mark, a list created with
#'   \code{\link{sliderMarkOptions}}
#' @param tooltip whether to set a tooltip to the thumb
#' @param tooltipOptions options of the tooltip, a list created with
#'   \code{\link{sliderTooltipOptions}}
#' @param thumbOptions list of options for the thumb created with
#'   \code{\link{sliderThumbOptions}}
#' @param shinyValueOn either \code{"drag"} or \code{"end"}, the moment to get
#'   the Shiny value
#' @param ... other attributes passed to \code{Slider}
#'
#' @return A widget to use in \code{\link{chakraComponent}}.
#' @export
#' @importFrom htmltools validateCssUnit tags
#'
#' @examples
#' library(shiny)
#' library(shinyChakraUI)
#'
#' ui <- chakraPage(
#'
#'   br(),
#'
#'   chakraComponent(
#'     "mycomponent",
#'
#'     chakraSlider(
#'       "slider",
#'       label = HTML("<span style='color:red'>Hello slider!</span>"),
#'       value = 5,
#'       min = 0,
#'       max = 10,
#'       width = "50%",
#'       tooltip = TRUE,
#'       shinyValueOn = "end"
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
chakraSlider <- function(
  id,
  label = NULL,
  value,
  min,
  max,
  step = NULL,
  width = NULL,
  size = "md",
  colorScheme = "blue",
  orientation = "horizontal",
  focusThumbOnChange = TRUE,
  isDisabled = FALSE,
  isReadOnly = FALSE,
  isReversed = FALSE,
  trackColor = NULL,
  filledTrackColor = NULL,
  mark = FALSE,
  markOptions = sliderMarkOptions(),
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
  stopifnot(isBoolean(focusThumbOnChange))
  stopifnot(isBoolean(isDisabled))
  stopifnot(isBoolean(isReadOnly))
  stopifnot(isBoolean(isReversed))
  stopifnot(isBoolean(mark))
  stopifnot(isBoolean(tooltip))
  attribs <- dropNulls(list(
#    id = id,
    defaultValue = value,
    min = min,
    max = max,
    step = step,
    width = validateCssUnit(width),
    size = match.arg(size, c("sm", "md", "lg")),
    colorScheme = match.arg(colorScheme, chakraColorSchemes()),
    orientation = orientation,
    focusThumbOnChange = focusThumbOnChange,
    isDisabled = isDisabled,
    isReadOnly = isReadOnly,
    isReversed = isReversed,
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
  if(mark && tooltip){
    stop("You cannot use both `mark` and `tooltip`.", call. = TRUE)
  }
  if(mark){
    mark <- asShinyTag(
      list(
        name = "SliderMark",
        attribs = dropNulls(markOptions),
        children = list()
      )
    )
  }else{
    mark <- NULL
  }
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
  component <- asShinyTag(
    list(
      name = "Slider",
      attribs = attribs,
      children = dropNulls(list(
        track,
        mark,
        thumb
      ))
    )
  )
  if(!is.null(label)){
    component <- tags$div(
      id = id,
      class = "form-group chakraTag",
      tags$label(label),
      component
    )
  }else{
    component <- tags$div(
      id = id,
      class = "form-group chakraTag",
      component
    )
  }
  component[["shinyValueOn"]] <- match.arg(shinyValueOn, c("end", "drag"))
  component[["widget"]] <- "slider"
  component
}
