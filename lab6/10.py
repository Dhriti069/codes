my_tuple = (10, 10, 10)
first_item = my_tuple[0]
all_same = True
for item in my_tuple:
    if item != first_item:
        all_same = False
        break
if all_same:
    print("All items in the tuple are the same.")
else:
    print("Not all items in the tuple are the same.")
