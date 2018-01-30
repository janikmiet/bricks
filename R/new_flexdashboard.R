#' @title Make new flexdashboard website
#' @description Function creates flexdasboard template to folder.
#' @param destination is folder where to create files.
#' @param overwrite overwrite existing files.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return files
#' @rdname new_flexdashboard

new_flexdashboard <- function(destination = "./", overwrite = FALSE){
  # TODO Kysy, jos kansiosta löytyy samanniminen tiedosto
  file.copy(system.file("template_flexdashboard/template_flexdashboard.zip", package="bricks"), destination)
  unzip(zipfile = paste0(destination, "template_flexdashboard.zip"), exdir = destination, overwrite = overwrite)
  file.remove(paste0(destination, "template_flexdashboard.zip"))
}