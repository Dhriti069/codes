# define a matrix
mat <- matrix(c(1, 2, 3, 2, 4, 5, 3, 5, 6), nrow = 3, byrow = TRUE)

# check if matrix is symmetric
if (identical(mat, t(mat))) {
    print("Matrix is symmetric")
} else {
    print("Matrix is not symmetric")
}
