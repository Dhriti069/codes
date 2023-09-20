//binary search

#include<stdio.h>
int main(){
    int c,n,search,first,last,middle,array[50];
    printf("enter the number of integers");
    scanf("%d",&n);
    printf("enter %d integer \n:");
    for(c = 0;c<n;c++){
        scanf("%d",&array[c]);
    }
    printf("enter value to find :");
    scanf("%d",&search);
    first = 0;
    last = n-1;
    middle = first+last/2;
    if (array[middle] < search)
         first = middle - 1;    
      else if (array[middle] == search) {
         printf("%d is present at index %d.\n", search, middle+1);
    
      }
      else{
         last = middle + 1;
      middle = (first + last)/2;
   }
   return 0;
}