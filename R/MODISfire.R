#' MODIS fire Shiny app
#'
#' @return
#' @export
#'
#' @examples
#' MODISfire()
MODISfire <- function(){
  shiny::shinyAppDir(
  system.file("extdata","MODISfire",package="igisci"),
  options = list(width = "100%", height = 700))
}
