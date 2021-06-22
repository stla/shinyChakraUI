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
  trackColor = NULL,
  filledTrackColor = NULL,
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
    size = match.arg(size, c("sm", "md", "lg"))
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
  component <- asShinyTag(
    list(
      name = "Slider",
      attribs = attribs,
      children = list(
        track,
        thumb
      ),
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
