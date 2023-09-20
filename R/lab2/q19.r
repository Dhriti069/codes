recur_fact <- function(n_069) {
  if(n_069 <= 1) {
    return(1)
  } else { 
    return(n_069 * recur_fact(n_069-1))
  }
}

num_069<-as.integer(readline(prompt = "Enter num_069: "))
print(recur_fact(num_069))