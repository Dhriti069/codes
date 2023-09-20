#include<stdio.h>
#include<string.h>

void print(){
    
}


void lcs(){
    m = strlen(x);
    n = strlen(y);

    for(i=0;i<m;i++){
        for(j=0;j<n;j++){
            if(A[i] == '\0'|| B[j] == '\0')
            return 0;
            else if(A[i] == B[j])
            return 1 + lcs(i+1,j+1);
            else
            return max(lcs(i+1,j),lcs(i,j+1));
        }
    }
}

int main(){
    char A[10],char B[10];
    for (i = 0;i<10;i++){
    printf("enter the 1st sequence:");
    scanf("%s",x);
    }
    for(i = 0 ; i<10;i++){
    printf("enter the second sequence:");
    scanf("%s",y);
    }
    printf("the longest common subsequence is \n");
    lcs();

    print(m,n);
}