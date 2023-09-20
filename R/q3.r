name <- readline(prompt = "input your name :")
age <- readline(prompt = "input your age :")
roll <- readline(prompt = "input your roll :")
branch <- readline(prompt = "input your branch :")

roll <- as.integer(roll)
print(paste("my name is", name ,"my roll is" , roll ,"my age is", age , "and my branch is", branch)) # nolint