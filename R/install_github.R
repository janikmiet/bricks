#' @title Install development version from Github
#' @description Downloads package source as .tar.gz and installs package
#' @param repo username and repository name required as in devtools::install_github()
#' @param sudo logical TRUE if you are installing to system library. Default is FALSE
#' @author Markus Kainu <markus.kainu@kela.fi>
#' @return installs a packages
#' @examples
#'  \dontrun{
#'  install_github("rstudio/rmarkdown")
#'  }

#' @rdname install_github
#' @export

install_github <- function(repo="rstats-db/odbc", ref="master", sudo=FALSE){

  require(downloader)
  downloader::download(paste0("https://github.com/",repo,"/archive/",ref,".tar.gz"), "package.tar.gz")
  if (sudo) package_lib = "/usr/lib64/R/library" else package_lib = .libPaths()[1]
  install.packages("./package.tar.gz", repos = NULL, type = "source", lib = package_lib)
  file.remove("./package.tar.gz")
}