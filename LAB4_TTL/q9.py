def common_char(s1, s2):
    result = ""
    for char in s1:
        if char in s2:
            result += char.lower()
    return result

str1 = input("Enter the first string: ")
str2 = input("Enter the second string: ")
print("Common characters in lowercase:", common_char(str1, str2))
