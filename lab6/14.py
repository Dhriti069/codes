def remove_intersection(set1, set2):
    return set1 - set2

set1 = {1, 2, 3, 4, 5}
set2 = {3, 4, 5, 6, 7}

result = remove_intersection(set1, set2)

print("Set 1: ", set1)
print("Set 2: ", set2)
print("Result: ", result)
