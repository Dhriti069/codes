recur_factorial <- function(n_069) {
  if(n_069 <= 1) {
    return(1)
  } else { 
    return(n_069 * recur_factorial(n_069-1))
  }
}

num_069<-as.integer(readline(prompt = "Enter num_069: "))
print(paste("Factorial= ", recur_factorial(num_069)))