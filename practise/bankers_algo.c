#include<stdio.h>
int main()
{
    int m,n,i,j;
    printf("Enter the number of processes: ");
    scanf("%d",&m);
    printf("Enter the number of resources: ");
    scanf("%d",&n);
    int max[m][n];
    int alloc[m][n];
    int need[m][n];
    int r[n],aviallable[n],safe[m];
    
    printf("Enter the numbre of per resources aviallable\n");
    for(i=0;i<n;i++)
    {
        printf("Resource%d: ",(i+1));
        scanf("%d",&r[i]);
    }
    printf("Enter the max resources needed:\n ");
    for(i=0;i<m;i++)
    {
        printf("For process %d\n",(i+1));
        for(j=0;j<n;j++)
        {
            printf("Resource %d ",(j+1));
            scanf("%d",&max[i][j]);        
        }
    }
    printf("Enter the allocation\n");
    for(i=0;i<m;i++)
    {
        printf("For process %d\n",(i+1));
        for(j=0;j<n;j++)
        {
            printf("Resource %d ",(j+1));
            scanf("%d",&alloc[i][j]);        
        }
    }
    printf("Max matrix\n");
    for(i=0;i<m;i++)
    {
        for(j=0;j<n;j++)
         printf("%d ",max[i][j]);
        printf("\n");
    }
    
    printf("Allocation matrix\n");
    for(i=0;i<m;i++)
    {
        for(j=0;j<n;j++)
         printf("%d ",alloc[i][j]);
        printf("\n");
    }
    //calculate need matrix
    for(i=0;i<m;i++)
     for(j=0;j<n;j++)
      need[i][j]=max[i][j]-alloc[i][j];
    
    //printing need matrix
    printf("Need matrix\n");
    for(i=0;i<m;i++)
    {
        for(j=0;j<n;j++)
         printf("%d ",need[i][j]);
        printf("\n");
    }
    
    //avaliable array nika rhe hai
    //total instances - total allocated

    for(i=0;i<n;i++)
    {
        int s=0;
        for(j=0;j<m;j++)
        {
            s+=alloc[j][i];
            
        }
        //printf("%d\n",s);
        aviallable[i]=r[i]-s;
    }
    
    int done[m];
    for(i=0;i<m;i++)
     done[i]=0;
    int s=0;
    i=0;
    int flag=1,lc=0,cc=0;
    while(1)
    {
        flag=1;
        if(done[i]==0)
        {
            for(j=0;j<n;j++)
            {
                if(need[i][j]>aviallable[j])
                {
                    flag=0;
                    break;
                }
            }
            if(flag==1)
            {
                //printf("hii%d\n",i);
                safe[s++]=i;
                cc++;
                done[i]=1;
                for(j=0;j<n;j++)
                 aviallable[j]=aviallable[j]+alloc[i][j];
            }
        }
        i=(i+1)%m;
        if(cc==0&&i==0 || s==m)
         break;
        cc=0;
    }
    printf("The safe sequence is: ");
    for(i=0;i<m;i++)
     printf("P%d ",(safe[i]+1));
    return 0;


}