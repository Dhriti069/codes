def is_palindrome(string):
    """
    This function takes a string as input and returns True if the string is a palindrome,
    otherwise it returns False.
    """
    # Convert the string to lowercase and remove whitespace
    string = string.lower().replace(" ", "")
    
    # Check if the string is equal to its reverse
    if string == string[::-1]:
        return True
    else:
        return False

# Testing the function
string1 = "racecar"
print(is_palindrome(string1))  # Output: True

string2 = "Hello World"
print(is_palindrome(string2))  # Output: False
