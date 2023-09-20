convert_to_binary <- function(n_069) {
  if(n_069 > 1) {
    convert_to_binary(as.integer(n_069/2))
  }
  cat(n_069 %% 2)
}
num_069<-as.integer(readline(prompt = "Enter num_069: "))
print(convert_to_binary(num_069))