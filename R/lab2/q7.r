calculate_circle_area <- function(radius_069) {
    pi <- 3.14
    area <- pi * radius_069^2
    return(area)
}

# Function to calculate area of rectangle
calculate_rectangle_area <- function(length, width) {
    area <- length * width
    return(area)
}

# Function to calculate area of triangle
calculate_triangle_area <- function(base, height) {
    area <- 0.5 * base * height
    return(area)
}

# Print menu
cat("Menu:\n1. Area of Circle\n2. Area of Rectangle\n3. Area of Triangle\n")

# Get user choice
choice <- as.numeric(readline("Enter your choice: "))

# Evaluate choice using switch-case statement
switch(choice,
    "1" = {
        radius_069 <- as.numeric(readline("Enter the radius_069 of the circle: ")) # nolint
        area <- calculate_circle_area(radius_069)
        cat("Area of Circle: ", area, "\n")
    },
    "2" = {
        length <- as.numeric(readline("Enter the length of the rectangle: "))
        width <- as.numeric(readline("Enter the width of the rectangle: "))
        area <- calculate_rectangle_area(length, width)
        cat("Area of Rectangle: ", area, "\n")
    },
    "3" = {
        base <- as.numeric(readline("Enter the base of the triangle: "))
        height <- as.numeric(readline("Enter the height of the triangle: "))
        area <- calculate_triangle_area(base, height)
        cat("Area of Triangle: ", area, "\n")
    },
    {
        cat("Invalid choice. Please enter a valid choice.\n")
    }
)