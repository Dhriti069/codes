#include<bits/stdc++.h>
using namespace std;


struct Node {
    char data;
    Node* next;
};

// This function prints contents of linked list
// starting from the given node
void printList(Node* n)
{
   while (n != NULL) {
     cout << n->data << " ";
     n = n->next;
   }
   cout << endl;
}

// Driver code
int main()
{
   Node* head = NULL;
   Node* second = NULL;
   Node* third = NULL;

   // allocate 3 nodes in the heap
   head = new Node();
   second = new Node();
   third = new Node();

   head->data = 'A'; // assign data in first node
   head->next = second; // Link first node with second

   second->data = 'B'; // assign data to second node
   second->next = third;

   third->data = 'C'; // assign data to third node
   third->next = NULL;

   printList(head);
 
   return 0;
}