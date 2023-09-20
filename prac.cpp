#include<iostream>
#include<algorithm>
#include<vector>
using namespace std;
int difference_num(vector < int >&arr){
    int length = arr.size();
    if(length <= 3 ){
        return 0;
    }
    vector<int>even_pos;
    vector<int>odd_pos;

    for(int i = 0;i<length;i++){
        if(i % 2 == 0){
            even_pos.push_back(arr[i]);
        }else{
            odd_pos.push_back(arr[i]);
        }
    }
    sort (even_pos.rbegin (), even_pos.rend ());
    sort (odd_pos.begin (), odd_pos.end ());

    return even_pos[1] + odd_pos[1];
}
int main(){
    vector<int>arr = {3,2,1,7,5,4};
    cout<<difference_num(arr);
}