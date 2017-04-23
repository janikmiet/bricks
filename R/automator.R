# automator

automator <- function(x){
  n1 <- sample(1:100, 1, replace=FALSE)
  n <- sample(1:100, n1, replace=FALSE)
  # n <- sample(n1:n2, 1, replace = FALSE)
  for(i in n){
    print("Mä vaan duunaan..")
  }
}
