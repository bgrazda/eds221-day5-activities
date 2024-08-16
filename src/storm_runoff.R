

#' Predict Runoff
#'
#'@description Calculate the volume (cubic feet) of storm water in a given watershed
#'
#' @param impervious_frac Fraction of watershed that is considered impervious (unitless)
#' @param watershed_area Watershed area in acres
#'
#' @return
#' @export
#'
#' @examples
#' predict_runoff(.25, 500)
#' 
predict_runoff <- function(impervious_frac, watershed_area) {
  runoff_coef <- 0.05 + 0.9 * impervious_frac
  
  volume_stormwater <- 3630 * 1 * runoff_coef * watershed_area
  return(volume_stormwater)
}
