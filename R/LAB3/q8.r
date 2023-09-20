data_list <- list(numeric_data = c(1, 2, 3, 4, 5),
                  character_data = c("a", "b", "c", "d", "e"),
                  logical_data = c(TRUE, FALSE, TRUE, TRUE, FALSE))

# Iterate through the list and display each data set according to its data type
for (i in 1:length(data_list)) { # nolint
  data_set <- data_list[[i]]
  data_type <- typeof(data_set)
  print(paste("Data set", i, "is of type", data_type))
  print(data_set)
}

