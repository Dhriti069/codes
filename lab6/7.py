original_tuple = (1, 2, 3)
modified_tuple = original_tuple[:2] + (4,) + original_tuple[2:]
print(modified_tuple)
