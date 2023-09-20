# Load libraries and datasets
library(datasets)
library(caret)
data(USArrests)
data(wine)

# Fit a multiple regression model
lm_model <- lm(Rape ~ ., data = USArrests)

# Predictions on the USArrests dataset
predictions <- predict(lm_model, USArrests)

# Calculate RMSE, MSE, and MAE for USArrests dataset
rmse <- RMSE(predictions, USArrests$Rape)
mse <- mean((predictions - USArrests$Rape)^2)
mae <- mean(abs(predictions - USArrests$Rape))

# Output results
cat(paste0("USArrests dataset:\n",
           "RMSE: ", rmse, "\n",
           "MSE: ", mse, "\n",
           "MAE: ", mae, "\n"))

# Fit a multiple regression model
lm_model <- lm(quality ~ ., data = wine)

# Predictions on the wine dataset
predictions <- predict(lm_model, wine)

# Calculate RMSE, MSE, and MAE for wine dataset
rmse <- RMSE(predictions, wine$quality)
mse <- mean((predictions - wine$quality)^2)
mae <- mean(abs(predictions - wine$quality))

# Output results
cat(paste0("Wine dataset:\n",
           "RMSE: ", rmse, "\n",
           "MSE: ", mse, "\n",
           "MAE: ", mae, "\n"))

 ##output

 USArrests dataset:
RMSE: 6.268436
MSE: 39.31346
MAE: 4.310924
Wine dataset:
RMSE: 0.7063573
MSE: 0.4980231
MAE: 0.5561383          