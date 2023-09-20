# load iris dataset
data(iris)

# display summary
cat("Summary of Iris Dataset:\n")
print(summary(iris))

# display structure
cat("\nStructure of Iris Dataset:\n")
print(str(iris))

# display first 5 rows
cat("\nFirst 5 rows of Iris Dataset:\n")
print(head(iris))

# display number of rows
cat("\nNumber of rows in Iris Dataset:", nrow(iris))

# display number of columns
cat("\nNumber of columns in Iris Dataset:", ncol(iris))

# display a scatterplot
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
    geom_point()
