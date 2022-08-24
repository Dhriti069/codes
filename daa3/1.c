#include<stdio.h>
#include<stdlib.h>
#include<math.h>

//int prime(int n) { // algo 1
   // int steps = 0;
   // int count = 1;
   // for (int i = 2; i < n; i++) {
   //     steps++;
   //     if(n%i == 0) {
   //         count = 0;
   //     }
   // }
   // if(count) {
   //     printf("The number is prime\n");
   // } else {
   //     printf("The number is not prime\n");
   // }
   // return steps;
//}

int prime(int n){  // algo 2
    int steps = 0;
    int m = 0,flag = 0;

     m=n/2;    
    for(int i=2;i<=m;i++)    
    {   
        steps++;
        if(n%i==0)      
        {    
            printf("Number is not prime \n");    
            flag=1; 
            break;    
        }    
            
    }    
    if(flag==0)    
    printf("Number is prime \n");   
    steps++;

    return steps;

}


int main() {
    int n;
    int m = 0,flag = 0;
    printf("Enter the number: ");
    scanf("%d", &n);
    
    printf("The number of steps required for %d input: %d", n, prime(n));
    return 0;
} 