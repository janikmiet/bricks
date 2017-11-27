#' @title Fibonacci Benchmark test
#' @description Function test prosessor speed by calculating Fibonacci numbers.
#' @author Jani Miettinen <jani.k.miettinen@gmail.com>
#' @param n number of Fibonacci values
#' @return string of benchmark results
#' @examples
#'  \dontrun{
#'  for(i in 1:10)testfibo(n=200000)
#'  }
#' @rdname testfibo
#' @export

testfibo <- function(n=100000){
  # Suorituskykytesti Fibonacin lukujen avulla
  options(scipen=999)
  i=1
  Fib <- c(1,rep(0, n-1))
  start_time <- Sys.time()
  for(i in 1:n){
    if(i == 1){Fib[i] = 1}
    if(i == 2){Fib[i] = 1}
    if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
    i=i+1  }
  print(paste0("Calculated ", n, " Fibonacci values in ",  (Sys.time() - start_time)[[1]], " seconds."))
}
