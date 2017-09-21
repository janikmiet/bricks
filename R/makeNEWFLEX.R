#' @title Make new flexdashboard website
#' @description Function creates flexdasboard template to folder.
#' @param destination is folder where to create files.
#' @param overwrite overwrite existing files.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return files
#' @rdname makeNEWFLEX

makeNEWFLEX <- function(destination = "./", overwrite = FALSE){
  file.copy(system.file("newflexsite/flexSite.zip", package="bricks"), destination)
  unzip(zipfile = paste0(destination, "flexSite.zip"), exdir = destination, overwrite = overwrite)
  file.remove(paste0(destination, "flexSite.zip"))
  # Kysy, jos kansiosta löytyy samanniminen tiedosto
}