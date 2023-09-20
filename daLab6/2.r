data <- read.csv("C:/Users/DHRITI/Desktop/airquality.csv")
print(data)


temp <- max(data$Temp)
print(temp)

temp <- min(data$Temp)
print(temp)



avg_temp <- mean(data$Temp)
print(avg_temp)

MAY <- subset(data, Month == "5")
print("air quality data for 5th month")
print(MAY)


ret <- subset(data, is.na(Ozone))
print(ret)
# count no of rows and cols
print(ncol(data))
print(nrow(data))
# Get the air quality recorded after 2nd Feb 2018
info <- subset(data, Year > 2017)
info1 <- subset(info, Month > 1 & Day > 1)
print(info1)
