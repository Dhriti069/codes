# Define the previous list of data sets
previous_list <- c("data_set_1", "data_set_2", "data_set_3")

# Add a new data set to the list
new_data_set <- "data_set_4"
updated_list <- c(previous_list, new_data_set)

# Remove the second data set from the list
updated_list <- updated_list[-2]

# Print the updated list of data sets
print(updated_list)
