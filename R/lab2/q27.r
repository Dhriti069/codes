add<-function(a,b,c,d,e){
  sum=a+b+c+d+e
  return(sum)
}
average<-function(a,b,c,d,e){
  sum=a+b+c+d+e
  avg=sum%/%5
  return(avg)
}
s_dev<-function(a,b,c,d,e){
  v<-c(a,b,c,d,e)
  std_dev=sd(v)
  return(std_dev)
}
n1_069<-as.integer(readline(prompt = "Enter num_069: "))
n2_069<-as.integer(readline(prompt = "Enter num_069: "))
n3_069<-as.integer(readline(prompt = "Enter num_069: "))
n4_069<-as.integer(readline(prompt = "Enter num_069: "))
n5_069<-as.integer(readline(prompt = "Enter num_069: "))
print(paste("Sum = ", add(n1_069,n2_069,n3_069,n4_069,n5_069)))
print(paste("Average = ", average(n1_069,n2_069,n3_069,n4_069,n5_069)))
print(paste("Standard Deviation = ", s_dev(n1_069,n2_069,n3_069,n4_069,n5_069)))
