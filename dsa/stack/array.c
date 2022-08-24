#include<stdio.h>
#include<stdlib.h>

struct Stack{
    int size;
    int top;
    int *S;
};

void create(struct Stack  *st)
{
    printf("enter stack size");
    scanf("%d",&st->size);
    st->top =-1;
    st->S = (int*)malloc(st->size*sizeof(int));

}

void display(struct Stack st){
    int i;
    for(i = top ; i>=0; i--)
        printf("%d",st.S[i]);
        
    }

void push(struct Stack *st,int x){
    if(st->top == st->size-1)
        printf("stack overflow \n");
    else
    {
        st->top++;
        st->S[st->top] = x;
    }    
}

int pop (struct Stack *st){
    int x = -1;

    if(st->top == -1)
        printf("stack underflow \n");

    else{
        x=st->S[st->top--];
    }    
    return x;
}
int main(){
    struct Stack st;
    create (&st);

    push (&st,10);
    push (&st,20);
    push (&st,30);

    display(st);

    return 0;

}