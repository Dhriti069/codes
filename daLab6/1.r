data <- read.csv("C:/Users/DHRITI/Desktop/input.csv")
print(data)
sal <- max(data$salary)
print(sal)

retval <- subset(data, dept == "IT")
print(retval)

info <- subset(data, salary > 600 & dept == "IT")
print(info)

retval <- subset(data, salary == max(salary))
print(retval)

retval <- subset(data, as.Date(start_date) >
    as.Date("2014-01-01"))
print(retval)
