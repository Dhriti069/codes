# Create a vector of the blood types
blood_types <- c("A", "O", "A", "B", "B", "AB", "B", "B", "O", "A", "O", "O", "O", "AB", "B", "AB", "AB", "A", "O", "A")
print(blood_types)
# Calculate the frequency of each blood type
freq_table <- table(blood_types)
print(freq_table)

# Calculate the proportion of each blood type
prop_table <- prop.table(freq_table)
print(prop_table)

# Calculate the percentage of each blood type
percent_table <- prop_table * 100
print(percent_table)

# Calculate the cumulative frequency
cumfreq_table <- cumsum(freq_table)
print(cumfreq_table)

# Combine the tables into a single data frame
blood_type_table <- data.frame(
    blood_type = names(freq_table),
    frequency = as.numeric(freq_table),
    proportion = prop_table,
    percent = percent_table,
    cumfreq = cumfreq_table
)

# Print the table
print(blood_type_table)
