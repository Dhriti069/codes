inf_val <- Inf
na_val <- NA
nan_val <- NaN
char_val <- "“"

# Print the class of each value
cat("Class of Inf:", class(inf_val), "\n")
cat("Class of NA:", class(na_val), "\n")
cat("Class of NaN:", class(nan_val), "\n")
cat("Class of “:", class(char_val), "\n\n")

# Print the type of each value
cat("Type of Inf:", typeof(inf_val), "\n")
cat("Type of NA:", typeof(na_val), "\n")
cat("Type of NaN:", typeof(nan_val), "\n")
cat("Type of “:", typeof(char_val), "\n\n")

# Print the mode of each value
cat("Mode of Inf:", mode(inf_val), "\n")
cat("Mode of NA:", mode(na_val), "\n")
cat("Mode of NaN:", mode(nan_val), "\n")
cat("Mode of “:", mode(char_val), "\n\n")

# Print the storage mode of each value
cat("Storage mode of Inf:", storage.mode(inf_val), "\n")
cat("Storage mode of NA:", storage.mode(na_val), "\n")
cat("Storage mode of NaN:", storage.mode(nan_val), "\n")
cat("Storage mode of “:", storage.mode(char_val), "\n\n")