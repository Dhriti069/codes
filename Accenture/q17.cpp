#include<iostream>
using namespace std;

int reverse(int a){
    int rem;
    int rev = 0;
    while(a != 0){
        rem = a%10;
        rev = (rev*10) + rem;
        a = a/10;
    }
    return rev;
}

int main(){
    int m,n;
    cin>>m;
    cin>>n;
    for(int i = m;i<=n;i++){
        if(i == reverse(i)){
            cout<<i<<" "<<endl;
        }
    }
    return 0;
}