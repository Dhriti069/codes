a <- readline(prompt = "input value for a_069 : ")
b <- readline(prompt = "input value for b_069 : ")

a <- as.integer(a)
b <- as.integer(b)

if(a>b){
    print(paste("a is greater"))
}else{
    print(paste("b is greater"))
}