#include<bits/stdtr1c++.h>
#include<iostream>
using namespace std;

//creating node
class Node{
    public:
    int value;
    Node* next;
};
int main(){
    Node* head;
    Node* one = NULL;
    Node* two = NULL;
    Node* three = NULL;

    //allocate memory in heap

    one = new Node();
    two = new Node();
    three = new Node();

    one->value = 5;
    two->value = 10;
    three->value = 15;

    one->next = two;
    two->next = three;
    three->next = NULL;

    head = one;
    while(head!=NULL){
        cout<<head->value;
        head = head->next;
    }
    

}


