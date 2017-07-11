#' @title Publish my notes
#' @description Function renders and uploads notes to server
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @rdname pubMYNOTES
#'
# Publish my notes
pubMYNOTES <- function(){
  if(dir.exists("//Volumes/public/webpage/" & "~/RKoti/dokumentit/mynotes/")){
    curWD <- getwd()
    setwd("~/RKoti/dokumentit/mynotes/")
    rmarkdown::render_site()
    system("rsync -arv --delete ./_site/ //Volumes/public/webpage/")
    setwd(curWD)
  }else{
    print("Server is offline.")
  }
}
