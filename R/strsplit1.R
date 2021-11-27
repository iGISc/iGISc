#' strsplit1
#'
#' @param x string to split
#' @param split character to split with
#'
#' @return split into a vector
#' @export
#'
#' @examples
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
