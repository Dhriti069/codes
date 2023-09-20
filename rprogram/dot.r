# data set "mtcars" with the columns "mpg" and "cyl"
input <- mtcars[,c('mpg','cyl')]
print(head(input))
# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
# draw boxplot with notch to find out how the medians of different data groups match with each other.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data", notch = TRUE,
        varwidth = TRUE, col = c("green","yellow","purple"),
        names = c("High","Medium","Low") # online