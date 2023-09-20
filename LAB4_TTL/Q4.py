items = []
while True:
    item = input("Enter an item (or 'done' to stop): ")
    if item == 'done':
        break
    items.append(item)

print("Here are the items in the list:", items)