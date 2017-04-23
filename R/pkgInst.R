instPkg <- function(x){
  # Markuksen paketti installaatio
  PACKAGES <- scan(url("http://muuankarski.kapsi.fi/luntti/r-paketit.txt"), what="character")
  inst <- match(PACKAGES, .packages(all=TRUE))
  need <- which(is.na(inst))
  if (length(need) > 0) install.packages(PACKAGES[need])
}