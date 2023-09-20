# Define a vector for testing
v <- c("A", "B", "C", "B", "A", "B")

# Check if the vector is a factor
if (!is.factor(v)) {
    # If not, convert it to a factor
    v <- factor(v)
}

# Display the vector with its levels
cat("Vector: ", v, "\n")
cat("Levels: ", levels(v), "\n")
