# Define a function to extract and replace a sub-string
replace_substring <- function(string) {
    # Extract a sub-string of 5 characters from the original string
    sub_string <- substr(string, start = 3, stop = 7)
    # Replace the sub-string with "V-Day"
    new_string <- gsub(sub_string, "V-Day", string)
    # Return the new string
    return(new_string)
}

# Test the function
string <- "Happy Valentine's Day!"
new_string <- replace_substring(string)
cat("The original string is '", string, "', and the modified string is '", new_string, "'.\n")
