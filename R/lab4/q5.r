# Define a function to count vowels in a string
count_vowels <- function(string) {
    # Convert string to lowercase
    string <- tolower(string)
    # Count number of vowels
    num_vowels <- sum(strcount(string, "[aeiou]"))
    # Return number of vowels
    return(num_vowels)
}

# Test the function
string <- "The quick brown fox jumps over the lazy dog"
num_vowels <- count_vowels(string)
cat("The string '", string, "' contains", num_vowels, "vowels.\n")
