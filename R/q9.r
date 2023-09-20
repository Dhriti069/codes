a <- readline(prompt = "enter value for a : ")
b <- readline(prompt = "enter value for b : ")

a <- as.integer(a)
b <- as.integer(b)

if(a>0 && b>0){
   print("Positive Number") 
}

if(a<0 && b<0){
   print("negative Number") 
}