# Create a data frame with student data
students <- data.frame(
    roll_number = c(1, 2, 3, 4, 5),
    name = c("Alice", "Bob", "Charlie", "David", "Emily"),
    department = c("Math", "Physics", "Chemistry", "Biology", "Computer Science"), # nolint
    course = c("M.Sc.", "M.Sc.", "M.Sc.", "B.Sc.", "B.Sc."),
    year_of_joining = c(2020, 2019, 2021, 2018, 2020)
)

# Define a function to print names of students who joined in a particular year
get_students_by_year <- function(students, year) {
    names(students[students$year_of_joining == year, "name"])
}

print(get_students_by_year(students, 2020))
