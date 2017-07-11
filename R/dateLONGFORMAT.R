#' @title Transform "Tue Oct 27 2015" to date
#' @description Function transforms "Tue Oct 27 2015" typish values to date format.
#' @param x is variable to transform
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return date
#' @rdname dateLONGFORMAT
#'
# Muunna päivämäärä-muotoon vaikka Sys.date on erikielinen
# "Tue Oct 27 2015"
dataLONGFORMAT <- function(x){
  as.Date(paste(substr(x, 5,7),
                match(substr(x, 5,7), month.abb),
                substr(x, 11,15), sep="/" ), format = "")
}
