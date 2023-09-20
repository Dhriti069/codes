# Input the marks of 36 students
marks <- c(
    55, 75, 65, 30, 90, 55, 40, 50, 60, 80, 80, 76, 95,
    75, 55, 45, 65, 80, 30, 50, 75, 85, 80, 90, 75, 75,
    90, 65, 78, 72, 82, 52, 62, 67, 66, 65, 88, 45, 70
)

# Measures of Frequency
print("---marks table for 36 students ---")
print(table(marks)) # Frequency distribution

# Measures of Central Tendency
print("--mean--")
print(mean(marks)) # Mean
print("---median---")
print(median(marks)) # Median
print("---mode---")
mode <- function(x) {
    ux <- unique(x)
    ux[which.max(tabulate(match(x, ux)))]
}
print(mode(marks)) # Mode

# Measures of Dispersion or Variation
print("---range of marks---")
print(range(marks)) # Range
print("---standard deviation---")
print(sd(marks)) # Standard deviation
print("---variance---")
print(var(marks)) # Variance

# Measures of Position
print("---quartile---")
print(quantile(marks, c(0.25, 0.50, 0.75))) # Quartiles
