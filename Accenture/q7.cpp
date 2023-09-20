#include<iostream>
using namespace std;
int productsmallestpair(int n,int sum, int arr[]){
    int check,answer;
    if(n<2){
        return -1;
    }
    for(int i=0;i<n;i++){
        for(int j=i+1;j<n;j++){
            if(arr[i] > arr[j]){
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    check = arr[0] + arr[1];
    if(check <= sum){
        answer = arr[0] * arr[1];
    }else{
        answer = 0;
    }
    return answer;
}
 int main(){
    int sum;
    int n;
    cin>>sum;
    cin>>n;
    int arr[n];
    for(int i = 0;i<n;i++){
        cin>>arr[i];
    }
    cout<<productsmallestpair(n,sum,arr);
 }