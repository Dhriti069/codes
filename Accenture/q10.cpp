#include<iostream>
using namespace std;

int calculate(int n, int m){
    int sum = 0;
    for(int i=m; i<=n;i++){
        if((i % 3 == 0) && (i % 5 == 0)){
            sum = sum + i;
        }
    }
    return sum;
}

int main(){
    int m,n;
    cin>>m;
    cin>>n;
    cout<<calculate(n,m);
    return 0;
}