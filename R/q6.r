r <- readline(prompt = "enter the radius of circle : ")

r = as.integer(r)
 
area <- 3.14*r*r
circum <- 2*3.14*r

print(paste("area of circle is : ",area))
print(paste("circumference of circle is : ",circum))