n_069 <- as.integer(readline(prompt = "Enter a num_069 :"))
rev <- 0

while (n_069 > 0) {
  r <- n_069 %% 10
  rev <- rev * 10 + r
  n_069 <- n_069 %/% 10
}

print(paste("Reverse number is :", rev))