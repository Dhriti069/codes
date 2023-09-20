dict1 = {'a': 1, 'b': 2}
dict2 = {'c': 3, 'd': 4}

# using update()
dict1.update(dict2)
print(dict1)  # output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}

# using ** operator
dict1 = {'a': 1, 'b': 2}
dict3 = {**dict1, **dict2}
print(dict3)