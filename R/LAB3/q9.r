# create a list with a vector, matrix, and nested list
my_list <- list(
    my_vector = c(1, 2, 3),
    my_matrix = matrix(1:6, nrow = 2),
    my_nested_list = list(
        foo = "bar",
        baz = 42
    )
)

my_list[[2]]
