#include<iostream>
using namespace std;
int main(){
    int f,l,d,n;
    int reverse;
    cin>>f;
    cin>>l;
    for(int i = f;i<=l;i++){
       reverse = 0;
        n = i;
        while(n != 0){
            d = n % 10;
            reverse = reverse * 10 + d;
            n = n/10;
        }
        if(i == reverse){
            cout<<i<<endl;;
        }
    }
    return 0;
}