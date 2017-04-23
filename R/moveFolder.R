

# move files function
# source <- "./Bricks/"
# destination <- "./tools/"

moveFolder <- function(source, destination){
  # List 
  if(file.exists(source) & file.exists(destination)){
    flyes <- list.files(source, full.names = TRUE, recursive = TRUE)
    zip(zipfile = "flyes.zip", flyes)
    # TODO: move zip to destination and unzip
    system("")
    unzip("flyes.zip")
  }else{
    print("Check source and destination again.")
  }
}

