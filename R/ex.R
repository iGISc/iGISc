#' Reading in extdata from package
#'
#' @param dta file to read (.csv, .xlsx, .shp, etc.)
#'
#' @return path to file
#' @export
#'
#' @examples
#' read.csv(ex("sierra/sierraStations.csv"))
ex <- function(dta){
  system.file("extdata",dta,package="igisci")
}

