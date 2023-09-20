# Load libraries and datasets
library(datasets)
library(caret)
data(Boston)
data(Advertising)

# Fit a linear regression model
lm_model <- lm(medv ~ ., data = Boston)

# Predictions on the Boston dataset
predictions <- predict(lm_model, Boston)

# Calculate RMSE, MSE, and MAE for Boston dataset
rmse <- RMSE(predictions, Boston$medv)
mse <- mean((predictions - Boston$medv)^2)
mae <- mean(abs(predictions - Boston$medv))

# Output results
cat(paste0(
    "Boston dataset:\n",
    "RMSE: ", rmse, "\n",
    "MSE: ", mse, "\n",
    "MAE: ", mae, "\n"
))

# Fit a linear regression model
lm_model <- lm(sales ~ ., data = Advertising)

# Predictions on the Advertising dataset
predictions <- predict(lm_model, Advertising)

# Calculate RMSE, MSE, and MAE for Advertising dataset
rmse <- RMSE(predictions, Advertising$sales)
mse <- mean((predictions - Advertising$sales)^2)
mae <- mean(abs(predictions - Advertising$sales))

# Output results
cat(paste0(
    "Advertising dataset:\n",
    "RMSE: ", rmse, "\n",
    "MSE: ", mse, "\n",
    "MAE: ", mae, "\n"
))
