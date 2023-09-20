# Define the data set
data <- c(3, 7, 8, 5, 12, 14, 21, 15, 18, 14)

# Create a box plot
boxplot(data, main = "Box Plot", lab = "Value")

# Add labels for the quartiles
q1 <- quantile(data, 0.25)
m <- median(data)
q3 <- quantile(data, 0.75)
text(1, quantile(data, 0.25), paste("q1=", q1))
text(1, median(data), paste("m=", m))
text(1, quantile(data, 0.75), paste("q3=", q3))
