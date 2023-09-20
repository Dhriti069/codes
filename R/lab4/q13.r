# Define the initial inventory matrix and costs vector
inventory <- matrix(c(50, 20, 100, 70, 40, 30, 10, 60, 90, 80, 120, 50), nrow = 3, ncol = 4, dimnames = list(c("Division 1", "Division 2", "Division 3"), c("Product 1", "Product 2", "Product 3", "Product 4")))
costs <- c(2.5, 1.0, 0.5, 1.5)

# Define a function to calculate the total inventory value
calculate_inventory_value <- function(inventory, costs) {
    total_value <- sum(inventory * costs)
    return(total_value)
}

# Example usage
total_value <- calculate_inventory_value(inventory, costs)
print(total_value)
