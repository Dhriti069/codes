# ____________________Problem
# Sample data
data <- c(102.5, 101.7, 103.1, 100.9, 100.5, 102.2)

# Calculate the sample mean and standard deviation
sample_mean <- mean(data)
sample_sd <- sd(data)

# Calculate the standard error of the mean
se <- sample_sd / sqrt(length(data))

# calculate the z-score
z <- (data - sample_mean) / (sample_sd / sqrt(length(data)))

# Calculate the confidence interval
conf_int <- t.test(data, conf.level = 0.95)$conf.int

# Print
cat("Sample Mean:", sample_mean, "\n")
cat("Standard Error:", se, "\n")
cat("95% Confidence Interval:", conf_int, "\n")
cat("Z-score is : ", z, "\n")
