#' @title Creates webpage files to destination folder
#' @description Function creates _site.yml, index.rmd, footer.html and styles.css files.
#' @param destination is folder where to create files.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return files
#' @rdname makeNEWSITE

makeNEWSITE <- function(destination){
  file.copy(system.file("newsite/siteZipped.zip", package="mytools"), destination)
  unzip(zipfile = paste0(destination, "siteZipped.zip"), exdir = destination)
  file.remove(paste0(destination, "siteZipped.zip"))
  # Kysy, jos kansiosta löytyy samanniminen tiedosto
}



