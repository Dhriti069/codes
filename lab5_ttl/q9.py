my_dict = {'a': 1, 'b': 2, 'c': 0, 'd': 4}
min_value = min(my_dict.values())
min_key = [k for k, v in my_dict.items() if v == min_value][0]
print(min_key)
print(min_value)
