#' Prediction of volume of storm runoff
#'
#' @param IA the fraction of the watershed that is considered “impervious” (unitless).
#' @param A the watershed area in acres
#'
#' @return A volume of potential storm run off in the area in cubic feet
#' @export
#'
#' @examples
#' predict_runoff(IA = 1, A = 2)
predict_runoff <- function(IA, A) {
  RV <- 0.05 + 0.9 * IA
  V <- 3630 * RV * 1 * A
  predict_runoff <- V
  print(predict_runoff)
}




