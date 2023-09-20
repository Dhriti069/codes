# Load libraries and datasets
library(forecast)
data(AirPassengers)

# Split dataset into training and testing sets
train <- window(AirPassengers, end = c(1957, 12))
test <- window(AirPassengers, start = c(1958, 1))

# Simple Exponential Smoothing
ses_model <- ses(train)
ses_pred <- forecast(ses_model, h = length(test))
ses_mape <- mean(abs(ses_pred$mean - test) / test)

# Holt's Trend Method
holt_model <- holt(train)
holt_pred <- forecast(holt_model, h = length(test))
holt_mape <- mean(abs(holt_pred$mean - test) / test)

# MAPE computation
mape <- function(actual, forecast) {
  mean(abs((actual - forecast) / actual)) * 100
}

print(mape)
# Output results
cat(paste0(
  "Simple Exponential Smoothing:\n",
  "MAPE: ", ses_mape, "%\n\n"
))

cat(paste0(
  "Holt's Trend Method:\n",
  "MAPE: ", holt_mape, "%\n\n"
))

cat(paste0(
  "MAPE computation:\n",
  "MAPE: ", mape(test, ses_pred$mean), "% (Simple Exponential Smoothing)\n",
  "MAPE: ", mape(test, holt_pred$mean), "% (Holt's Trend Method)\n"
))
