# create 3x3 matrix
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)

# set elements less than 5 to 0
my_matrix[my_matrix < 5] <- 0

# display updated matrix
print(my_matrix)
