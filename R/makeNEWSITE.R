#' @title Make new website
#' @description Function creates "_site.yml", "index.rmd", "footer.html" and "styles.css" files.
#' @param destination is folder where to create files.
#' @param overwrite overwrite existing files.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return files
#' @rdname makeNEWSITE

makeNEWSITE <- function(destination, overwrite = FALSE){
  file.copy(system.file("newsite/siteZipped.zip", package="mytools"), destination)
  unzip(zipfile = paste0(destination, "siteZipped.zip"), exdir = destination, overwrite = overwrite)
  file.remove(paste0(destination, "siteZipped.zip"))
  # Kysy, jos kansiosta löytyy samanniminen tiedosto
}



