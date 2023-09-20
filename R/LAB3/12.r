# create a 4*3 matrix
my_matrix <- matrix(1:12, nrow = 4, ncol = 3)

# display the elements of row1, row3 and column2
cat("Elements of row 1:", my_matrix[1, ], "\n")
cat("Elements of row 3:", my_matrix[3, ], "\n")
cat("Elements of column 2:", my_matrix[, 2], "\n")
