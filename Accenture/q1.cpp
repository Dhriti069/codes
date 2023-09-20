#include<bits/stdc++.h>
using namespace std;

int calculate(int r,int unit,int n,int arr[]){
    if(n == 0){
        return -1;
    }
    int food_required = r*unit;
    int total_food = 0;
    int house = 0;
    for(house = 0;house<n;++house){
        total_food += arr[house];
        if(total_food >= food_required){
            break;
        }
    }
    if(total_food < food_required){
        return 0 ;
    }
    return house+1;
    }
    
int main(){
    int r;
    cin>>r;
    int unit;
    cin>>unit;
    int n;
    cin>>n;
    int arr[n];
    for(int i = 0;i<n;++i){
        cin>>arr[i];
    }

    cout<<calculate(r,unit,n,arr);
    return 0;
}

// Note:

// Return -1 if the array is null
// Return 0 if the total amount of food from all houses is not sufficient for all the rats.
// Computed values lie within the integer range.
// Example:

// Input:

// r: 7
// unit: 2
// n: 8
// arr: 2 8 3 5 7 4 1 2
// Output:

// 4

// Explanation:
// Total amount of food required for all rats = r * unit

// = 7 * 2 = 14.

// The amount of food in 1st houses = 2+8+3+5 = 18. Since, amount of food in 1st 4 houses is sufficient for all the rats. Thus, output is 4.