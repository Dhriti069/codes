s <- readline(prompt = "input second : ")


s <- as.integer(s)

h <- s/3600
h <- as.integer(h)
m <- (s-(3600*h))/60
m <- as.integer(m)
s <- (s-(3600*h)-(m*60));


print(paste("hour :",h, ":","minute :",m, ":", "second :",s))
