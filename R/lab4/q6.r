# Define a function to reverse a string
reverse_string <- function(string) {
    # Split string into individual characters
    chars <- strsplit(string, "")[[1]]
    # Reverse the order of the characters
    rev_chars <- rev(chars)
    # Combine the reversed characters back into a string
    rev_string <- paste(rev_chars, collapse = "")
    # Return the reversed string
    return(rev_string)
}

# Test the function
string <- "Hello, world!"
rev_string <- reverse_string(string)
cat("The original string is '", string, "', and the reversed string is '", rev_string, "'.\n")
