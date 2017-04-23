
myFiles <- function(folder, recursive = TRUE){
  # Listaa folderi
  # path = "../"
  # extension = "Movies/raw/" # raw-folderi
  directory <- paste0(folder)
  list.files(directory, recursive = recursive)
}

doThistoFiles <- function(path, code, recursive = TRUE){
  ## TODO: check and code are ok?
  ## TODO: file extensions to affect?
  ## List files to affect
  myFiles <- list.files(path, recursive = recursive)
  ## Do this to files.
  for(f in myFiles){
    # doThis <- paste0("do this", " and that.")
    # system(doThis)
    print(paste(f, code))
  }
}
