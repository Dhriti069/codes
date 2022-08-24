#include <stdio.h>

#include <stdlib.h>

int main(){

int A[5] = {0,2,4,6,8};

int *p;

int i;
p = (int *)malloc(5*sizeof(int));

p[0]= 5;
p[1]= 7;
p[2]= 8;
p[3]= 4;
p[4]= 9;

for(i=0;i<5;i++){
printf("%d", A[i]);
}

printf("\n");

for(i=0;i<5;i++){
printf("%d", p[i]);
}

return 0;
}