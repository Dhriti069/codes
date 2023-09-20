Sum.Series <- function(number)
{
  if(number == 0) {
    return (0)
  } else {
    return ((number * number ) + Sum.Series(number - 1))
  }
}
n_069<-as.integer(readline(prompt = "Enter num_069: "))
print(Sum.Series(n_069))