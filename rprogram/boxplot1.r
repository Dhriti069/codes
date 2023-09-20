# Define the data set
x <- c(3, 7, 8, 5, 12, 14, 21, 15, 18, 14)

# Create a boxplot
boxplot(x,
    main = "Boxplot of {3, 7, 8, 5, 12, 14, 21, 15, 18, 14}",
    xlab = "Data Set",
    ylab = "Values",
    horizontal = FALSE,
    col = "lightblue",
    border = "black",
    notch = FALSE,
    notchwidth = 0.5,
    whisklty = 1,
    staplelty = 1,
    medcol = "red",
    boxwex = 0.5
)
