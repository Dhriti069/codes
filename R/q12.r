m <- readline(prompt = "input distance in meter : ")
m <- as.integer(m)

km <- (m / 1000)
km <- as.integer(km)
s <- m %% 1000
print(paste("distance is ", km ,"kilometer and ", s ,"meters"))
