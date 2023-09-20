num_069 <- as.integer(readline(prompt="Enter a num_069: "))
sum <- 0
temp <- num_069
while(temp > 0) {
  digit <- temp %% 10
  sum <- sum + (digit ^ 3)
  temp <- floor(temp / 10)
}
if(num_069 == sum) {
  print(paste(num_069, "is an Armstrong number"))
} else {
  print(paste(num_069, "is not an Armstrong number"))
}