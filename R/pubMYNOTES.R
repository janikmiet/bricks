
pubMYNOTES <- function(){
  curWD <- getwd()
  setwd("~/RKoti/dokumentit/mynotes/")
  rmarkdown::render_site()
  system("rsync -arv --delete ./_site/ //Volumes/public/webpage/")
  setwd(curWD)
}
