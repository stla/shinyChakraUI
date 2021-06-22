#' Title
#'
#' @param width
#' @param height
#' @param color
#' @param borderColor
#' @param borderWidth
#'
#' @return
#' @export
#' @importFrom htmltools validateCssUnit
#'
#' @examples
sliderThumbOptions <- function(
  width = NULL,
  height = NULL,
  color = NULL,
  borderColor = NULL,
  borderWidth = NULL
){
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
    }
  )
}

#' Title
#'
#' @param textAlign
#' @param backgroundColor
#' @param textColor
#' @param margin
#' @param padding
#' @param width
#' @param ...
#'
#' @return
#' @export
#' @importFrom htmltools validateCssUnit
#'
#' @examples
sliderMarkoptions <- function(
  textAlign = "center",
  backgroundColor = "blue.500",
  textColor = "white",
  margin = "-35px 0 0 -25px",
  padding = "0 10px",
  width = "50px",
  ...
){
  if(length(dots <- list(...))){
    namesDots <- names(dots)
    if(is.null(namesDots) || ("" %in% namesDots)){
      stop(
        "The arguments given in `...` must be named.", call. = TRUE
      )
    }
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

#' Title
#'
#' @param id
#' @param label
#' @param value
#' @param min
#' @param max
#' @param step
#' @param width
#' @param size
#' @param trackColor
#' @param filledTrackColor
#' @param thumbOptions
#' @param shinyValueOn
#'
#' @return
#' @export
#' @importFrom htmltools validateCssUnit tags
#'
#' @examples
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
  mark = TRUE,
  markOptions = sliderMarkOptions(),
  thumbOptions = sliderThumbOptions(),
  shinyValueOn = "end")
{
  attribs <- dropNulls(list(
    id = id,
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
    display = "block"
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
  if(mark){
    mark <- asShinyTag(
      list(
        name = "SliderMark",
        attribs = dropNulls(sliderMarkoptions()),
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
  component <- asShinyTag(
    list(
      name = "Slider",
      attribs = attribs,
      children = dropNulls(list(
        track,
        mark,
        thumb
      )),
      shinyValueOn = match.arg(shinyValueOn, c("end", "drag")),
      widget = "slider"
    )
  )
  if(!is.null(label)){
    component <- tags$div(
      class = "form-group",
      tags$label(label),
      component
    )
  }
  component
}
