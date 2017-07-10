#' @title Load datasets from folder
#' @description Loads all dataset from folder
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @rdname loadDatasets
#'
# NOT TESTED!!!
# function which loads all datasets from folder
# currently works with rds and rdata files

loadDatasets <- function(folder, format = "rds"){

  format <- paste0(".", format)

  for(aineisto in list.files(folder, full.names = TRUE, pattern = format)){
    # print(aineisto)
    d <- read_rds(aineisto)
    assign(gsub(fomat, "", gsub( ".*//", "", aineisto)), d)
    rm(d)
  }



}
