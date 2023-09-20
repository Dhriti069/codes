n=(input())
le=len(n)
n=int(n)
sum_even=0
sum_odd=0
for i in range(1,le+1):
   if((n%10)%2==0):
           sum_even+=n%10
   else:
           sum_odd+=n%10
   n=n//(10)
print(sum_even  ,  sum_odd )