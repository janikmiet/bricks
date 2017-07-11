#' @title Copy files
#' @description Copies file structure from source to destination.
#' @param source source folder
#' @param destination destination folder
#' @param overwrite overwrite files from destination folder?
#' @param file.delete deletes files from source after copying?
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return logical operator
#' @rdname copyFiles

copyFiles <- function(source, destination, overwrite = FALSE, file.delete = FALSE){
  # source = "./temp/"
  # destination = "./temp2/"
  if(file.exists(source) & file.exists(destination)){
    flies <- list.files(source, all.files = TRUE, recursive = TRUE, full.names = TRUE)
    file.copy(from = flies, to = destination,
              overwrite = overwrite, recursive = TRUE,
              copy.mode = TRUE)
    if(file.delete) file.remove(flies)
  }else{
    print("Check source and destination.")
  }

}

