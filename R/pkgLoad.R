# Lataa paketit
pkgLoad <- function(X) {
  for (i in X) {
    print(i)
    if (!require(i,character.only = TRUE))
    {
      install.packages(x,dep=TRUE, repos='http://ftp.acc.umu.se/mirror/CRAN/')
      if(!require(i,character.only = TRUE)) stop("Package not found")
    }
    #now load library and suppress warnings
    suppressPackageStartupMessages(library(i, character.only = T))
    # library(x, character.only = T)
  }

}
