#' @title Create backup ZIP
#' @description Creates backup ZIP-file from root-folder. Exludes csv, rds, rdata, sas7bdat and zip.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @param folder folder to backup, creates also zip file here
#' @param exlude vector of file extensions to exclude
#' @rdname makeBCKP
#'
# This script makes zipped backup copy of users folder without RDS, RDATA or CSV datafiles.
# Updated: 10-07-2017

makeBCKP <- function(folder = "~/",
                     exclude = c(".csv", ".rds", ".rdata", ".sas7bdat", ".zip")){

  # folder = "~/RKoti/"

  if(file.exists(folder)){
    # WD
    curWD <- getwd()
    setwd(folder)

    ## List all files from directory:
    myFiles <- list.files("./", recursive=TRUE)

    # Exclude datasets, zip-files and library!
    # exclude <- tolower(exclude)
    for(i in exclude){
      myFiles <- myFiles[!grepl(paste0("*", i), tolower(myFiles))] #
    }
    myFiles <- myFiles[!grepl("x86_64-redhat-linux-gnu-library/", tolower(myFiles))] # ei librarya
    # myFiles <- myFiles[!grepl("*.pdf",tolower(myFiles))] # ei zippejä

    ## Zip all files to root:
    fileName <- paste0("bckp-", Sys.info()[["user"]], "_", Sys.Date(), ".zip")

    zip(fileName, files=myFiles)

    # Back to wd
    setwd(curWD)

  } else{print("Check selected folder.")}
  # # WD
  # curWD <- getwd()
  # setwd("~/")
  #
  # ## List all files from root directory:
  # d <- "~/"
  # myFiles <- list.files(d, recursive=TRUE)
  #
  #
  # # Exclude datasets, zip-files and library!
  # if(TRUE){
  #   myFiles <- myFiles[!grepl("*.csv", tolower(myFiles))] # ei csv
  #   myFiles <- myFiles[!grepl("*.rds",tolower(myFiles))] # ei rds
  #   myFiles <- myFiles[!grepl("*.rdata",tolower(myFiles))] # ei rdata
  #   myFiles <- myFiles[!grepl("*.sas7bdat",tolower(myFiles))] # ei sasdata
  #   myFiles <- myFiles[!grepl("*.zip",tolower(myFiles))] # ei zippejä
  #   myFiles <- myFiles[!grepl("x86_64-redhat-linux-gnu-library/", tolower(myFiles))] # ei librarya
  # }
  #
  # ## Zip all files to root:
  # fileName <- paste0("bckp-", Sys.info()[["user"]], "_", Sys.Date(), ".zip")
  # zip(fileName, files=myFiles)
  #
  #
  # # Back to wd
  # setwd(curWD)

  ### Testing:
  # dir.create("./temp/")
  # unzip(fileName, exdir = "./temp")

}

# END


