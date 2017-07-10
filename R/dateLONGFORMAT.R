#' @title Date transform from "Tue Oct 27 2015"
#' @description Function transforms date from "Tue Oct 27 2015" to right format
#' @param x is date to transform
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return date
#' @rdname dateLONGFORMAT
#'
# Muunna päivämäärä-muotoon vaikka Sys.date on erikielinen
# "Tue Oct 27 2015"
transfromDate2 <- function(x){
  as.Date(paste(substr(x, 5,7),
                match(substr(x, 5,7), month.abb),
                substr(x, 11,15), sep="/" ), format = "")
}
