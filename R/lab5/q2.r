# Line chart
plot(mtcars$mpg, type = "l", xlab = "Car Index", ylab = "Miles per Gallon", main = "Line Chart: Miles per Gallon")

# Bar plot
barplot(table(mtcars$gear), xlab = "Number of Gears", ylab = "Count", main = "Bar Plot: Number of Gears")

# Histogram
hist(mtcars$disp, xlab = "Engine Displacement", ylab = "Frequency", main = "Histogram: Engine Displacement")

# Pie chart
pie(table(mtcars$cyl), main = "Pie Chart: Cylinders", col = rainbow(length(table(mtcars$cyl))))

# Dot plot
plot(mtcars$wt, pch = 19, xlab = "Car Index", ylab = "Weight", main = "Dot Plot: Weight")

# Box plot
boxplot(mtcars$mpg ~ mtcars$cyl, xlab = "Number of Cylinders", ylab = "Miles per Gallon", main = "Box Plot: Miles per Gallon by Number of Cylinders")

# Scatter plot
plot(mtcars$wt, mtcars$mpg, pch = 19, xlab = "Weight", ylab = "Miles per Gallon", main = "Scatter Plot: Miles per Gallon vs Weight")

# Kernel density plot
plot(density(mtcars$mpg), xlab = "Miles per Gallon", ylab = "Density", main = "Kernel Density Plot: Miles per Gallon")
