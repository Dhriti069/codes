def set_operations(A, B):
    # Union of A and B
    union = A | B
    print("Union:", union)

    # Intersection of A and B
    intersection = A & B
    print("Intersection:", intersection)

    # Difference of A and B (A - B)
    difference = A - B
    print("Difference (A - B):", difference)

    # Symmetric Difference of A and B (A ^ B)
    symmetric_difference = A ^ B
    print("Symmetric Difference (A ^ B):", symmetric_difference)

# Example usage
A = {1, 2, 3, 4}
B = {3, 4, 5, 6}
set_operations(A, B)
