#include<stdio.h>
#include<stdlib.h>

int main(){
    int a[10][10],b[10][10],c[10][10];

    getSparseMatrix(a);
    printSparseMatrix(a);

    getSparseMatrix(b);
    printSparseMatrix(b);

    addSparseMatrix(a,b,c);
    printf("the result matrix is \n");
    printSparseMatrix(c);
}

void getSparseMatrix(a[10][10]){
    int i,rows ,cols , n;
    printf("enter the number of rows and columns in matrix : \n");
    scanf("%d %d",&rows,&cols);
    printf("enter the number of non-zero elements : \n");
    scanf("%d",&n);

    a[0][0] = rows ;
    a[0][1] = cols ;
    a[0][2] = n ;

    for(i=1;i<=n;i++){
        printf("enter the row , col , and non-zero values : \n");
        scanf("%d%d%d",a[i][0],a[i][1],a[i][2]);
    }
}

void getSparseMatrix(b[10][10]){
    int i,rows ,cols , n;
    printf("enter the number of rows and columns in matrix : \n");
    scanf("%d %d",&rows,&cols);
    printf("enter the number of non-zero elements : \n");
    scanf("%d",&n);

    b[0][0] = rows ;
    b[0][1] = cols ;
    b[0][2] = n ;

    for(i=1;i<=n;i++){
        printf("enter the row , col , and non-zero values : \n");
        scanf("%d%d%d",b[i][0],b[i][1],b[i][2]);
    }
}

void addSparseMatrix(a[10][10],b[10][10],c[10][10]){
    int i = 0, j = 0 ,k = 0,m,n;
    if (a[0][0] != b[0][0] || a[0][1] != b[0][1]){
        printf("matrix addition is not possible ");
    }

    c[0][0] = a[0][0];
    c[0][1] = a[0][1];

    m = a[0][2] ; // col of nonzero element for matrix a
    n = b[0][2] ;// col of nonzero element for matrix b

    while(i<=m && j<=n)
    if (a[i][0] < b[j][0])
    {
    c[k][0] = a[i][0];
    c[k][1] = a[i][1];
    c[k][2] = a[i][2];
    k++;
    i++;
    }

    else if(a[i][0] > b[j][0]){
    c[k][0] = b[j][0];
    c[k][1] = b[j][1];
    c[k][2] = b[j][2];
    k++;
    j++;
    }

    else if (a[i][1] < b[j][1]){
    c[k][0] = a[i][0];
    c[k][1] = a[i][1];
    c[k][2] = a[i][2];
    k++;
    i++;
    }

    else if (a[i][1] > b[j][1]){
    c[k][0] = b[j][0];
    c[k][1] = b[j][1];
    c[k][2] = b[j][2];
    k++;
    j++;
    }

    else{ 
    c[k][0] = a[i][0];
    c[k][1] = a[i][1];
    c[k][2] = a[i][2] + b[j][2];

    k++;
    j++;
    i++;
    }

    void printSparseMatrix(int a[10][10]){
        int i,n;
        n = a[0][2];
        for( i = 1 ; i<=n ; i++){
            print("\n %d%d%d",a[i][0],a[i][1,a[i][2]]);
        }
    }


}