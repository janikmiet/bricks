#' @title List networks
#' @description Lists networks from connected internet.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @rdname listNetworks

listNetworks <- function(x){
  # OSX, Linux
  system("arp -a")
}

# END