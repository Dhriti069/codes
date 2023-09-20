data <- read.csv("C:/Users/DHRITI/Downloads/Student.csv")
print(data)
perc <- max(data$ Percentage)
Percentage <- subset(data, Percentage == perc)  # nolint
print(Percentage)

val <- subset(data, Branch == "IT" | Branch == "CSE")
print(val)

val2 <- subset(data, Branch == "CSE" & Percentage >= 80)
print(val2)

retval <- subset(data, as.Date(DOA) > as.Date("01-05-2021"))
