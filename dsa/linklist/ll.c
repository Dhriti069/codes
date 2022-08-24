#include<stdio.h>
#include<stdlib.h>

struct node{
    int data;
    struct node *next;
}*first;

void create(int A[],int n){
    int i;
    struct node *t,*last;

    first = (struct node*)malloc(sizeof(struct node));
    first->data = A[0];
    first->next = NULL;
    last = first;

    for(i=1;i<n;i++){

        t = (struct node *)malloc(sizeof(struct node));
        t->data = A[i];
        t->next = NULL;
        last->next = t;
        last = t;
    }
}

void display(struct node *p){
    while(p!=0){
        printf("%d",p->data);
        p=p->next;
    }
}

void rdisplay(struct node*p){
    while(p!=0){
        printf("%d",p->data);
        rdisplay(p->next);
    }
}

int count(struct node *p){
    int l = 0;
    while (p){
        l++;
        p=p->next;
    }
    return l;
}

int rcount(struct node *p){
    if(p!=NULL)
        return rcount(p->next)+1;
    else
        return 0;
}

int sum(struct node *p){
    int s = 0;
    while(p!=NULL){
        s+=p->data;
        p=p->next;
    }
    return s;
}

struct node * lsearch(struct node *p,int key){
    while(p!=NULL){
        if(key==p->data)
        return p;
        p=p->next;
    }
    return NULL;
}

void insert (struct node *p,int index,int x){

    struct node *t;
    int i;

    if(index<0 || index>count(p))
    return;

    t = (struct node*)malloc(sizeof(struct node));
    t->data = x;

    if(index==0){
        t->next = first;
        first = t;
    }
    else{
    for(i=0;i<index-1;i++){
        p=p->next;
        t->next = p->next;
        p->next = t;
    }
    }
}


void sortedinsert(struct node *p,int x){
    struct node*t,*q = NULL;

    t = (struct node *)malloc(sizeof(struct node));
    t->data = x;
    t->next = NULL;

    if(first == NULL)
        first = t;
    else{
        while(p && p->data<x){
            q=p;
            p=p->next;
        }
        if(p==first){
            t->next = first;
            first = t;
        }
        else{
            t->next = q->next;
            q->next = t;
        }
    }    
}

int delete (struct node *p,int index){
    struct node *q=NULL;
    int x = -1,i;

    if(index<1 || index>count(p))
        return -1;

    if(index == 1)    
    {
        q = first;
        x = first->data;
        first = first->next;
        free(q);
        return x;

    }
    else{
        for(i=0;i<index-1;i++){
            q=p;
            p=p->next;
        }
        q->next = p->next;
        x = p->data;
        free(p) ;
        return x;
    }
}
int main(){

    //struct node *temp;
    int A[]={10,20,30,40,50};
    create(A,5);
    //insert(first,3,10);

    //sortedinsert(first,35);

    delete(first,4);

    display(first);
    printf("\n\n");

    //rdisplay(first);

    //printf("length is %d ",count(first));

    //printf("length is %d ",rcount(first));

    //printf("sum is %d \n\n",sum(first));

    //temp = lsearch(first,25);
    //if(temp)
    //    printf("key is found %d",temp->data);
    //else
    //    printf("key is not found");
   return 0;

    
    

}