def remove_char(string, char):
    return string.replace(char, "")

input_string = "hello"
char_to_remove = "l"

output_string = remove_char(input_string, char_to_remove)

print(output_string)