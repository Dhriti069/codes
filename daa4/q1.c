#include<iostream>
#include<time.h>
using namespace std;

int main(){
    int key,i;
    int arr[10]={20,19,24,12,3};
    for(int j=1;j<6;j++){
        key=arr[j];
        i=j-1;
        while(i>=0 && arr[i]>key){
            arr[i+1]=arr[i];
            i=i-1;
        }
        arr[i+1]=key;
    }
    cout<<"sorted array is";
    for(i=0;i<6;i++){
        cout<<arr[i]<<endl;
    }


}

