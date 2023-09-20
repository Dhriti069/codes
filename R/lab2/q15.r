n_069<-as.integer(readline(prompt = "Enter number: "))
rev=0
while(n_069>0){
  digit=n_069%%10
  rev=rev*10 + digit
  n_069=n_069%/%10
}
print(paste("Reverse number= ", rev))