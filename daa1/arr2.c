#include<stdio.h>

int main(){
    int nbr,i,arr[30],r;
    printf("enter the numner of elements in array : ");
    scanf("%d",&nbr);

    printf("enter the array element : ");
    for(i=0;i<nbr;i++){
        scanf("%d",&arr[i]);
    }

    printf("enter elements to be searched :  ");
    scanf("%d",&r);

    i = 0;
   while (i < nbr && r != arr[i]) {
      i++;
   }

   if(i<nbr){
    printf("element is found in position = %d ", i+1);
    }
    else {
      printf("Element not found!");
   }

   return 0;
}