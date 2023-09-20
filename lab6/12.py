def sets_disjoint(set1, set2):
    for element in set1:
        if element in set2:
            return False
    return True

set1 = {1, 2, 3}
set2 = {4, 5, 6}

if sets_disjoint(set1, set2):
    print("The sets have no elements in common.")
else:
    print("The sets have at least one element in common.")

