scores <- c(55, 65, 80, 95, 90, 90, 95, 75, 75, 85, 90, 80)
# Calculate the confidence interval using t.test()
conf_interval <- t.test(scores, conf.level = 0.95)$conf.int

# Calculate the margin error
margin_error <- (conf_interval[2] - conf_interval[1]) / 2

# Print the confidence interval and margin error
cat("Confidence interval: [", conf_interval[1], ", ", conf_interval[2], "]\n")
cat("Margin error: ", margin_error)
