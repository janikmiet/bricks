#' @title Install best packages
#' @description Installs necessary packages to R.
#' @param PKGS is vector of packages™
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @rdname installPKGS

installPKGS <- function(PKGS = "http://muuankarski.kapsi.fi/luntti/r-paketit.txt" ){
  # Markuksen paketti installaatio
  PACKAGES <- scan(url(PKGS), what="character")
  inst <- match(PACKAGES, .packages(all=TRUE))
  need <- which(is.na(inst))
  if (length(need) > 0) install.packages(PACKAGES[need])
}