library(moments)

sizes <- c("10-12", "12-14", "14-16", "16-18", "18-20")
freq <- c(27, 20, 12, 6, 3)
data <- data.frame(sizes, freq)

print(skewness(data$freq))


size <- c("10-12", "12-14", "14-16", "16-18", "18-20")
frequency <- c(3, 6, 12, 20, 27)
data <- data.frame(sizes, frequency)
print(skewness(data$frequency))
