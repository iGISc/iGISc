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
#' Listing contents of extdata from package
#' @param NA
#' @return tibble
#' @export
#'
#' @examples
#' View(exfiles())
exfiles <- function(){
  library(dplyr)
  exfilesDF <- tribble(~dir,~file,~path,~type)
  for(d in list.dirs(ex(""),recursive=F)){
    #print(d)
    dsplit <- strsplit(d,"/")
    len <- length(dsplit[[1]])
    dir <- dsplit[[1]][len]
    for(shp in list.files(d,pattern="*.shp$")){
      exfilesDF <- bind_rows(exfilesDF,tribble(~dir,~file,~path,~type,dir,shp,paste0("ex(\'",dir,"/",shp,"\')"),"shapefile"))
    }
    for(tif in list.files(d,pattern="*.tif$")){
      exfilesDF <- bind_rows(exfilesDF,tribble(~dir,~file,~path,~type,dir,tif,paste0("ex(\'",dir,"/",tif,"\')"),"TIFF"))
    }
    for(csv in list.files(d,pattern="*.csv")){
      exfilesDF <- bind_rows(exfilesDF,tribble(~dir,~file,~path,~type,dir,csv,paste0("ex(\'",dir,"/",csv,"\')"),"CSV"))
    }
    for(xls in list.files(d,pattern="*.xls")){
      exfilesDF <- bind_rows(exfilesDF,tribble(~dir,~file,~path,~type,dir,xls,paste0("ex(\'",dir,"/",xls,"\')"),"xls"))
    }
  }
  exfilesDF
}

