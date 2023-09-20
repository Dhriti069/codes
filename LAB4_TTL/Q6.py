def unique_chars(string):
    return set(string.lower())

input_string = input("Enter a string: ")
print("Unique characters in lowercase: ", end="")
print(*unique_chars(input_string), sep="")