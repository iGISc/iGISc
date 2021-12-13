#' sierra climate Shiny app
#'
#' @return
#' @export
#'
#' @examples
#' sierra()
sierra <- function(){
  shiny::shinyAppDir(system.file("extdata","sierra",package="igisci"),
  options = list(width = "100%", height = 700))
}
