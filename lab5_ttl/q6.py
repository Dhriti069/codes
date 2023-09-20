d = {'a': 1, 'b': 2, 'c': 3, 'd': 4}
keys_to_remove = ['a', 'c']

for key in keys_to_remove:
    d.pop(key, None)

print(d)