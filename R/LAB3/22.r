# Generate Wilkinson matrix
n <- 5
wilk_matrix <- matrix(0, nrow = n, ncol = n)
for (i in 1:n) {
    for (j in 1:n) {
        if (j == i) {
            wilk_matrix[i, j] <- 10 * (n - i + 1) + (j - i + 1)
        } else if (j > i) {
            wilk_matrix[i, j] <- 10 * (n - i + 1) + (j - i)
        }
    }
}

# Print Wilkinson matrix
print(wilk_matrix)
