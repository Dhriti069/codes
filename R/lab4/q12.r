# Create a vector of names
names_vec <- c("John", "Mary", "Peter", "Tom", "Sarah", "John", "Kate", "Tom", "Peter", "Kate")

# Convert the vector to a factor
names_factor <- factor(names_vec)

# Display the factor with its levels
cat("Factor with original levels: \n")
cat(names_factor, "\n")
cat("Levels: ", levels(names_factor), "\n")

# Change the order of levels to alphabetical order
names_factor <- factor(names_vec, levels = sort(unique(names_vec)))

# Display the factor with its reordered levels
cat("\nFactor with reordered levels: \n")
cat(names_factor, "\n")
cat("Levels: ", levels(names_factor), "\n")
