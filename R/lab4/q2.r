# Set the choices
pets <- c("dog", "cat", "hamster", "goldfish")

# Generate 1,000 random pets
set.seed(123) # Set a seed for reproducibility
random_pets <- sample(pets, 1000, replace = TRUE)

# Display the first few values
head(random_pets)
print(pets)
print(head(random_pets))
print(table(random_pets))
