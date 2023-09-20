#include<iostream>
using namespace std;
int result(int a, int b, int c){
    if(c == 1){
        return a+b;
    }
    if( c == 2){
        return a-b;
    }
    if(c == 3){
        return a*b;
    }
    if(c == 4){
        return a/b;
    }
    return 0;
}

int main(){
    int x,y,z;
    cin>>x;
    cin>>y;
    cin>>z;

    cout<<"final result is : "<<result(x,y,z);
    return 0;
}