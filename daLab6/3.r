# install.packages("readr")
# library(readr)
data <- read.delim("C:/Users/DHRITI/Desktop/input .tsv")
print(data)

max_val <- max(data$salary)
print(max_val)

t2 <- min(data$salary)
print(t2)

avgTemp <- mean(data$salary)
print(avgTemp)
