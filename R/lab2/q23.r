interest<-function(p_069,t_069,r_069){
  return(p_069*t_069*r_069/100)
}
p_069<-as.numeric(readline("Enter p_069: "))
t_069<-as.numeric(readline("Enter t_069: "))
r_069<-as.numeric(readline("Enter r_069: "))
print(paste("Interest= ", interest(p_069,t_069,r_069)))