hcf <- function(x, y) {
  if(x > y) {
    smaller = y
  } else {
    smaller = x
  }
  for(i in 1:smaller) {
    if((x %% i == 0) && (y %% i == 0)) {
      hcf = i
    }
  }
  return(hcf)
}
lcm <- function(x, y) {
  if(x > y) {
    greater = x
  } else {
    greater = y
  }
  while(TRUE) {
    if((greater %% x == 0) && (greater %% y == 0)) {
      lcm = greater
      break
    }
    greater = greater + 1
  }
  return(lcm)
}
num1_069 = as.integer(readline(prompt = "Enter first num_069: "))
num2_069 = as.integer(readline(prompt = "Enter second num_069: "))
print(paste("The H.C.F. of", num1_069,"and", num2_069,"is", hcf(num1_069, num2_069)))
print(paste("The L.C.M. of", num1_069,"and", num2_069,"is", lcm(num1_069, num2_069)))