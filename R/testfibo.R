
testfibo <- function(n=100000){
  # Suorituskykytesti 100 000 Fibonacin luvun avulla
  sleep_for_a_minute <- function() { Sys.sleep(0) }
  start_time <- Sys.time()
  sleep_for_a_minute()
  yla=n
  i=1
  Fib <- c(1,rep(0, yla-1))
  for(i in 1:yla){
    if(i == 1){Fib[i] = 1}
    if(i == 2){Fib[i] = 1}
    if(i != 1 & i != 2){Fib[i] = Fib[i-1] + Fib[i-2]}
    i=i+1  };
  Fib
  end_time <- Sys.time()
  print(end_time - start_time)
}