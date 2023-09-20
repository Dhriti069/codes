tuple_of_tuples = [(1, 3), (3, 2), (2, 1)]

sorted_tuple = sorted(tuple_of_tuples, key=lambda x: x[1])

print(sorted_tuple)
# Output: [(2, 1), (3, 2), (1, 3)]
