#include<bits/stdc++.h>
using namespace std;
void maxNu(int arr[],int length){
    int max = INT_MIN;
    int index;
    for(int i = 0;i<length;i++){
        if(arr[i] > max){
            max = arr[i];
            index = i;
        }
    }
    cout<<max<<endl<<index;
}

int main(){
    int n;
    cin>>n;
    int arr[n];
    for(int i = 0; i<n;i++){
        cin>>arr[i];
    }
    maxNu(arr,n);
    return 0;
}