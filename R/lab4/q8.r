# Define a function to search for a sub-string and insert a new string
insert_substring <- function(string, sub_string, new_string) {
    # Find the position of the sub-string within the original string
    pos <- regexpr(sub_string, string)
    # If the sub-string is found, insert the new string at that position
    if (pos > 0) {
        new_string <- substr(string, start = 1, stop = pos - 1) %>%
            paste0(new_string, substr(string, start = pos, stop = nchar(string)))
        # Return the modified string
        return(new_string)
    } else {
        # If the sub-string is not found, return an error message
        stop("The sub-string '", sub_string, "' was not found in the string '", string, "'.")
    }
}

# Test the function
string <- "The quick brown fox jumps over the lazy dog."
sub_string <- "fox"
new_string <- "red fox"
new_string <- insert_substring(string, sub_string, new_string)
cat("The original string is '", string, "', the sub-string is '", sub_string, "', and the modified string is '", new_string, "'.\n")
