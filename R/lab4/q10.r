# Prompt the user to enter a month and year
month <- as.integer(readline(prompt = "Enter the month (1-12): "))
year <- as.integer(readline(prompt = "Enter the year (YYYY): "))
library(lubridate)
date <- as.Date(paste(year, month, "01", sep = "-"))
days_in_month <- days_in_month(date)
weekday <- wday(date, label = TRUE) %>% as.numeric() - 1
weekdays <- c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
calendar <- matrix("", nrow = 6, ncol = 7)
day <- 1
for (i in 1:6) {
    for (j in 1:7) {
        if (i == 1 & j <= weekday) {
            calendar[i, j] <- "   "
        } else if (day > days_in_month) {
            calendar[i, j] <- "   "
        } else {
            calendar[i, j] <- sprintf("%2d ", day)
            day <- day + 1
        }
    }
}
cat(paste(month.name[month], year, "\n"))
cat(paste(weekdays, collapse = " "), "\n")
for (i in 1:6) {
    cat(paste(calendar[i, ], collapse = " "), "\n")
}
