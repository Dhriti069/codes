#include<iostream>
#include<math.h>
using namespace std;

int main(){
    int x1,y1;
    int x2,y2;
    int x3,y3;
    cout<<"enter value for x1,y1"<<endl;
    cin>>x1>>y1;
    cout<<"enter value for x2,y2"<<endl;
    cin>>x2>>y2;
    cout<<"enter value for x3,y3"<<endl;
    cin>>x3>>y3;

    float firstsum = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
	float secondsum = sqrt(pow(x3 - x2, 2) + pow(y3 - y2, 2));
	float thirdsum = sqrt(pow(x3 - x1, 2) + pow(y3 - y1, 2));

    float sum = firstsum + secondsum + thirdsum;
    cout<<sum;
    return 0;
}