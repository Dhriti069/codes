triangular_numbers <- 1:20 * (1:20 + 1) / 2
names(triangular_numbers) <- letters[1:20]
vowel_triangular_numbers <- triangular_numbers[grep("[aeiou]", names(triangular_numbers))]
print(triangular_numbers)
print(vowel_triangular_numbers)
