check_perfect <- function(n) {
  sum <- 0
  for (i in 1 : (n-1)) {
    if (n %% i == 0) {
      sum <- sum + i
    }
  }
  if (sum == n) {
    return(paste(n, "is a perfect number"))
  } else {
    return(paste(n, "is not a perfect number"))
  }
}