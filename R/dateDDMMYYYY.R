#' @title Date transform from DDMMYYY
#' @description Function transforms date from 31DEC1985 to right format
#' @param x is date to transform
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return date
#' @rdname dateDDMMYYYY

# Muunna päivämäärä-muotoon vaikka Sys.date on erikielinen
# 31DEC1985
dateDDMMYYYY <- function(x){
  as.Date(paste(substr(x,1,2), match(substr(x,3,5), toupper(month.abb)), substr(x,6,9), sep="/"), format = "%d/%m/%Y")
}


