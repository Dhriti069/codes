def replace_lowercase_letters(input_string):
    input_string = input_string.lower()
    input_string = input_string.replace('a', '#')
    input_string = input_string.replace('e', '&')
    input_string = input_string.replace('i', '*')
    input_string = input_string.replace('o', '$')
    input_string = input_string.replace('u', '@')
    return input_string

input_str = input("Enter a string: ")
output_str = replace_lowercase_letters(input_str)
print("Modified string:", output_str)