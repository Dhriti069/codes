p <- readline(prompt = "enter the principal amount : ")
r <- readline(prompt = "enter the rate of interest : ")
t <- readline(prompt = "enter the timetaken : ")
n <- readline(prompt = "enter the value for n : ")

p <- as.integer(p)
r <- as.integer(r)
t <- as.integer(t)
n <- as.integer(n)

CI =  p*(1+r/n)^(n*t)

print(paste("compound interest for",p,"principle amount with",r,"rate of interest is : ",CI))
