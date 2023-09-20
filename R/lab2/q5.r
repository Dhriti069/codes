n_069 <- as.integer(readline(prompt = "Enter a number :"))
 
    rev_069 <- 0
    num_069 <- n_069
 
    while (n_069 > 0) {
      r_069 <- n_069 %% 10
      rev_069 <- rev_069 * 10 + r_069
      n_069 <- n_069 %/% 10
    }
 
    if (rev_069 == num_069)
    { # nolint
      print(paste("Number is palindrome :", rev_069))
    }else {
      print(paste("Number is not palindrome :", rev_069))
    }