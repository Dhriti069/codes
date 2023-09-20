# Define the data set
data <- c(3, 7, 8, 5, 12, 14, 21, 15, 18, 14)

# Find the first quartile (Q1)
q1 <- quantile(data, 0.25)

# Find the third quartile (Q3)
q3 <- quantile(data, 0.75)

# Print the results
cat("Q1:", q1, "\n")
cat("Q3:", q3, "\n")
