#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int prime(int n) { // algo 1
    int steps = 0;
    int count = 1;
    for (int i = 2; i < n; i++) {
        steps++;
        if(n%i == 0) {
            count = 0;
        }
    }
    if(count) {
        printf("The number is prime\n");
    } else {
        printf("The number is not prime\n");
    }
    return steps;
}



int main() {
    int n;
    int m = 0,flag = 0;
    printf("Enter the prime number: ");
    scanf("%d", &n);
    
    printf("The number of steps required for %d input: %d", n, prime(n));
    return 0;
} 