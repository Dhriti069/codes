#include <bits/stdc++.h>
using namespace std;
int main()
{  
  int arr[] = {4,1,8,9,11,3,77,2};
  int N = sizeof(arr)/sizeof(arr[0]);
      
  int left = 0, right =N-1; //left at start index and right at end index
  while(left < right) //till left index is less than right index
  {
    if(arr[left]%2) //if array at left index is odd
    {
      while((arr[right]%2 ==1) and right > left)  //then loop backwards if element at right index is odd
        right --;
      swap(arr[left++],arr[right--]);//swap the even and odd elements to bring even element at front and odd at back.
    }
    else 
    left++;
  }
  
  for(int i=0;i<N;i++)
    cout<<arr[i]<<" ";
  return 0;
}