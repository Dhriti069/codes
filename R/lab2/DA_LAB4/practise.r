emp.data <- data.frame( # nolint
emp_id = c (1:5), # nolint
emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), # nolint
salary = c(623.3,515.2,611.0,729.0,843.25), # nolint
start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-
11", "2015-03-27")),
stringsAsFactors = FALSE
)

print(emp.data)

str(emp.data)

print(class(emp.data))