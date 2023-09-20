factorial <- function(n_069) {
  result_069 <- 1
  for (i in 1:n_069) {
    result_069 <- result_069 * i
  }
  return(result_069)
}


print(factorial(5))