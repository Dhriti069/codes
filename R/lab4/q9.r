# Define a function to replace consecutive blanks in a string
replace_consecutive_blanks <- function(string) {
    # Use gsub to replace two or more consecutive blanks with a single blank
    new_string <- gsub("\\s{2,}", " ", string)
    # Return the modified string
    return(new_string)
}

# Example usage
string <- "Grim    return    to the   planet of apes!!"
new_string <- replace_consecutive_blanks(string)
cat("The original string is '", string, "', and the modified string is '", new_string, "'.\n")
