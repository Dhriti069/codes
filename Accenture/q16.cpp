#include<iostream>
using namespace std;
int calcMul(int n){
    int sum = 0;
    int value;
    for(int i=1;i<=10;i++){
        value = n*i;
        cout<<value<<" "<<endl ;
        sum += n*i;
    }
    return sum;
}

int main(){
    int n ;
    cin>>n;
    cout<<calcMul(n);
    return 0;
}