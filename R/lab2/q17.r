n_069 <- 5
for (i in 1:n_069) {
  for (j in n_069:i) {
    print(j)
  }
  for (k in 1:(i-1)) {
    print(k)
  }
  print("")
}
