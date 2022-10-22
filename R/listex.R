# library(igisci); library(stringr)
# for(d in list.dirs(ex(""),recursive=F)){
#   #print(d)
#   dsplit <- strsplit(d,"/")
#   len <- length(dsplit[[1]])
#   writeLines(paste("----DIR:",dsplit[[1]][len]))
#   for(shp in list.files(d,pattern="*.shp$")){
#     print(shp)
#   }
#   for(tif in list.files(d,pattern="*.tif$")){
#     print(tif)
#   }
#   for(csv in list.files(d,pattern="*.csv")){
#     print(csv)
#   }
#   for(xls in list.files(d,pattern="*.xls")){
#     print(csv)
#   }
# }
