#' @title Backup filesystem
#' @description Creates backup ZIP-file from root-folder. Exludes csv, rds, rdata, sas7bdat and zip.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @rdname makeOLDBCKP
#'


makeOLDBCKP <- function(x){

  # WD
  curWD <- getwd()
  setwd("~/")

  ## List all files from root directory:
  d <- "~/"
  myFiles <- list.files(d, recursive=TRUE)


  # Exclude datasets, zip-files and library!
  if(TRUE){
    myFiles <- myFiles[!grepl("*.csv", tolower(myFiles))] # ei csv
    myFiles <- myFiles[!grepl("*.rds",tolower(myFiles))] # ei rds
    myFiles <- myFiles[!grepl("*.rdata",tolower(myFiles))] # ei rdata
    myFiles <- myFiles[!grepl("*.sas7bdat",tolower(myFiles))] # ei sasdata
    myFiles <- myFiles[!grepl("shinylogs.txt",tolower(myFiles))] # ei shinylogia
    myFiles <- myFiles[!grepl("*.zip",tolower(myFiles))] # ei zippejä
    myFiles <- myFiles[!grepl("x86_64-redhat-linux-gnu-library/", tolower(myFiles))] # ei librarya
  }

  ## Zip all files to root:
  fileName <- paste0("bckp-", Sys.info()[["user"]], "_", Sys.Date(), ".zip")
  zip(fileName, files=myFiles)


  # Back to wd
  setwd(curWD)

  ### Testing:
  # dir.create("./temp/")
  # unzip(fileName, exdir = "./temp")

}

# END


