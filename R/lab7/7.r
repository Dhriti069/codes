library(moments)

# Create a vector of the data values
x <- c(0, 3, 4, 1, 2, 3, 0, 2, 1, 3, 2, 0, 2, 2, 3, 2, 5, 2, 3, 999)

# Calculate the kurtosis
kurtosis <- kurtosis(x)

# Print the result
if (kurtosis < 0) {
    print("The distribution is platykurtic")
} else if (kurtosis > 0) {
    print("The distribution is leptokurtic")
} else {
    print("The distribution is mesokurtic")
}
