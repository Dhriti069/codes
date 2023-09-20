#include<iostream>
using namespace std;
string calc_string(string s, int n){
    int count = 0;
    for(int i = 0 ; i<n ;){
        if(s[i] == '-'){
            count++;
            s.erase(i,1);
        }else{
            i++;
        }
        
    }
    while(count--){
        s = '-' + s;
    }
    return s;
}

int main(){
    string s;
    cin>>s;
    int n = s.size();
    cout<<calc_string(s,n);
    return 0;
}