Died.At <- c(22,40,72,41) # nolint
Writer.At <- c(16, 18, 36, 36) # nolint
First.Name <- (c("John", "Edgar", "Walt", "Jane")) # nolint
Second.Name <- (c("Doe", "Poe", "Whitman", "Austen")) # nolint
Sex <- c("MALE", "MALE", "MALE", "FEMALE") # nolint
Date.Of.Death <- as.Date(c("2015-05-10", "1849-10-07", "1892-03-26","1817-07-18")) # nolint
writers_df <- data.frame(Died.At, Writer.At, First.Name, Second.Name, Sex, Date.Of.Death) # nolint
str(writers_df)

print(Sex)
print(First.Name)
print(Second.Name)