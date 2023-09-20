year = as.integer(readline(prompt="Enter a year_069: ")) # nolint
if((year %% 4) == 0) { # nolint
if((year %% 100) == 0) { # nolint
if((year %% 400) == 0) {
print(paste(year,"is a leap year"))
} else {
print(paste(year,"is not a leap year"))
}
} else {
print(paste(year,"is a leap year"))
}
} else {
print(paste(year,"is not a leap year"))
}