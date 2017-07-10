#' @title Place space between large numbers
#' @description Function separates big numbers by space: like 10 000 000
#' @param x is number to apply format
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @return character version of number
#' @rdname bignumSpace

bignumSpace <- function(x) format(x, big.mark = " ")
# END
