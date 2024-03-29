#include<stdio.h>
#include<stdlib.h> 

void knapsack(int n, float weight[], float profit[], float capacity) {
   float x[20], tp = 0;
   int i, j, u;
   u = capacity; 
   // Array to store current usage of an element.
   for (i = 0; i < n; i++)
        x[i] = 0.0;
 
   for (i = 0; i < n; i++) {
        if (weight[i] > u)
            break;
        else {
            x[i] = 1.0;
            tp = tp + profit[i];
            u = u - weight[i];
        }
    }
    if (i < n)
        x[i] = u / weight[i];
    tp = tp + (x[i] * profit[i]);
 
    printf("\nMaximum profit is:- %f", tp);
}
 
int main() {
    float weight[20], profit[20], capacity;
    int num, i, j;
    float ratio[20], temp;
    
    // User input :-
    printf("\nEnter the no. of objects: ");
    scanf("%d", &num);
    printf("\nEnter the weight and profit of each object:-\n");
    for (i = 0; i < num; i++) {
        scanf("%f %f", &weight[i], &profit[i]);
    }
    printf("\nEnter the capacity of knapsack:- ");
    scanf("%f", &capacity);
    
    // Sort the ratio array :-
    for (i = 0; i < num; i++) {
        ratio[i] = profit[i]/weight[i];
    }
    for (i = 0; i < num; i++) {
        for (j = i + 1; j < num; j++) {
            if (ratio[i] < ratio[j]) {
                temp = ratio[j];
                ratio[j] = ratio[i];
                ratio[i] = temp;
 
                temp = weight[j];
                weight[j] = weight[i];
                weight[i] = temp;
 
                temp = profit[j];
                profit[j] = profit[i];
                profit[i] = temp;
            }
        }
    } 
    
    // Function call
    knapsack(num, weight, profit, capacity);
    return 0;
}