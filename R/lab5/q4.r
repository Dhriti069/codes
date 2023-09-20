# Load ggplot2 package
library(ggplot2)

# Create example data
df <- data.frame(
    Category = c("A", "B", "C", "D"),
    X = c(10, 20, 30, 40),
    Y = c(20, 30, 10, 40),
    Size = c(5, 10, 15, 20)
)

# Create bubble chart
ggplot(df, aes(x = X, y = Y, size = Size, fill = Category)) +
    geom_point(shape = 21, alpha = 0.7) +
    scale_size(range = c(5, 20)) +
    scale_fill_brewer(palette = "Set1") +
    labs(
        title = "Bubble Chart Example",
        x = "X Axis", y = "Y Axis",
        size = "Size Legend", fill = "Category Legend"
    )
