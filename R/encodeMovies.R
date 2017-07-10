
## encodeMovies -----------------------------------------------------------------
encodeMovies <- function(sourceFolder,
                         destinationFolder,
                         pattern = ".MP4",
                         recursive = TRUE,
                         overwrite = FALSE){
  # formats <- c(".MP4", ".mp4", ".mov") #TODO voidaanko kayttaa vain lowercaseja?
  pattern <- toupper(pattern)
  ## Check if source is ok
  if(dir.exists(sourceFolder)){
    ## Check if destination exist otherwise create folder
    # dir.exists(!destinationFolder){dir.create(destinationFolder)}

    # Only selected
    listoffiles <- list.files(sourceFolder, recursive = recursive, pattern = pattern)
    # listoffiles <- list.files(sourceFolder, recursive = recursive) # List all files from source
    # for testing:
    # listoffiles <- list.files("//Volumes/Oma Levy/Videoarkisto/2017/", recursive = FALSE)
    # listoffiles <- list.files("//Users/Jani/", recursive = FALSE, pattern = c("\\.xml"))
    # listoffiles <- list.files("../Movies/raw/", recursive = TRUE)

    # TODO: only video files
    if(FALSE){
      # listoffiles[]
      # grep(".MP4", listoffiles)
      # grepl(".MP4", listoffiles)
      # listoffiles <- listoffiles[grepl(".mp4", listoffiles)]
      listoffiles <- listoffiles[grepl(".MP4", listoffiles)]
      # listoffiles <- listoffiles[grepl(".MOV", listoffiles)]
    }

    ## Encode listoffiles to destination folder
    # TODO testaa kirjoittaako mahdollisesti yli?
    # filu = listoffiles[1]
    for(filu in listoffiles ){
      ## ALkuper. # "ffmpeg -i BalconyToTable.mov -vcodec h264 -acodec aac -strict -2 BalconyToTable.mp4"
      # TODO lisaa muutkin tiedostoformaattien tuki
      # dir.exists(destinationFolder)
      uusifilu <- paste0( destinationFolder, gsub(".MOV", ".mp4", filu) ) # uudet filut on mp4-muotoisia.
      filu <- paste0(sourceFolder, filu)
      koodi <- paste0("ffmpeg -i ", filu, " -vcodec h264 -acodec aac -strict -2 ", uusifilu)
      print(koodi)
      system(koodi)
    } ## Done.
  }else{
    print("Check attributes again.")
    }

}


#### FOR TESTING
# # #
# sourceFolder <- "//Volumes/NONAME/DCIM/128GOPRO/"
# sourceFolder <- "//Volumes/EOS_DIGITAL/DCIM/127GOPRO/"
# destinationFolder <- "~/Movies/raw/"
# recursive = TRUE
# encodeMovies(sourceFolder, destinationFolder)
#
#
# ##
# list.files("//Volumes/NO NAME/DCIM/", recursive = TRUE)
# encodeMovies("//Movies/", "../")
