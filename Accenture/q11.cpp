#include<iostream>
using namespace std;

int main(){
    int n;
    int value = 0;
    int sum = 0;
    cin>>n;
    for(int i = 1; i <= 10;i++){
        value = n*i;
        cout<<value<<endl;
        sum = sum + value;
    }
    cout<<sum;
    return 0;
}