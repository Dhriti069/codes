def frequency_sort(s):
    frequency = [0] * 26
    for c in s:
        if c.isalpha():
            frequency[ord(c.upper()) - ord('A')] += 1
    s_sorted = ''.join(c * frequency[ord(c) - ord('A')] for c in sorted(s, key=lambda x: frequency[ord(x.upper()) - ord('A')], reverse=True))
    return s_sorted

s = input("Enter a string: ")
print("Output: ", frequency_sort(s))