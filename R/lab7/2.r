# Create the frequency distribution
x <- c("0-10", "10-20", "20-30", "30-40", "40-50", "50-60", "60-70", "70-80")
f <- c(6, 12, 22, 48, 56, 32, 18, 6)
df <- data.frame(x, f)

print(df)

midpoint <- c(5, 15, 25, 35, 45, 55, 65, 75)

# Calculate the sum of midpoint times frequency
sum1 <- sum(midpoint * df$f)

# Calculate the sum of frequencies
sum2 <- sum(df$f)

# Calculate the mean
mean <- sum1 / sum2
print("mean of dataframe : ")
print(mean)

# Calculate median
total <- sum2
cf <- cumsum(sum2)
median.x <- df$x[min(which(cf >= total / 2))]
print(median.x)





# Calculate standard deviation
sum3 <- (df$x - mean)^2
sum4 <- sum3 * sum2
total <- sum2
variance <- sum4 / (total - 1)
sd <- sqrt(variance)
print(sd)
