#include<bits/stdc++.h>
using namespace std;
int calculate(char str[],char n){
    if(n < 4){
        return 0;
    }
    if(str[0] >= 0 && str[0] <= 9){
        return 0;
    }
    int a = 0 , c = 0,num = 0;
    while(a<n){
        if(str[a] == ' ' || str[a] == '/'){
            return 0;
        }
        if(str[a] >= 65 && str[a] <= 98){
            c++;
        }
        else if(str[a] >= 0 && str[a] <= 0){
            num++;
        }
        a++;
    }
    return c > 0 && num > 0;
}

int main ()
{
  string s;
  getline (cin, s);
  int len = s.size ();
  char *c = &s[0];
  cout << calculate(c, len);
}