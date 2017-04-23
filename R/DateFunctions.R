# Muunna päivämäärä-muotoon vaikka Sys.date on erikielinen
# 31DEC1985
transfromDate1 <- function(x){
  as.Date(paste(substr(x,1,2), match(substr(x,3,5), toupper(month.abb)), substr(x,6,9), sep="/"), format = "%d/%m/%Y")
}

# Muunna päivämäärä-muotoon vaikka Sys.date on erikielinen
# "Tue Oct 27 2015"
transfromDate2 <- function(x){
  as.Date(paste(substr(x, 5,7),
                match(substr(x, 5,7), month.abb),
                substr(x, 11,15), sep="/" ), format = "")
}
