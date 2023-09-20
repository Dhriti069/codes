# create two matrices
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix2 <- matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3)

# perform arithmetic operations on matrices
addition <- matrix1 + matrix2
subtraction <- matrix1 - matrix2
multiplication <- matrix1 * matrix2
division <- matrix1 / matrix2

# print the results
cat("Matrix 1:\n")
print(matrix1)
cat("\nMatrix 2:\n")
print(matrix2)

cat("\nAddition:\n")
print(addition)
cat("\nSubtraction:\n")
print(subtraction)
cat("\nMultiplication:\n")
print(multiplication)
cat("\nDivision:\n")
print(division)
