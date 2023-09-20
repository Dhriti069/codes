BS = as.integer(readline(prompt = "enter the Basic salary : "))
DA = readline(prompt = "input dearness allowance : ")
HR = readline(prompt = "input house rent : ")
DA = 0.4 * BS
HR = 0.2 * BS
print(paste("Gross salary is :",BS+DA+HR))