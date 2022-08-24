#include<stdio.h>
#include<conio.h>
# define max30
void main(){
    int i,j,n,bt[max],wt[max],tat[max];
    float awt=0 , atat=0;
    printf("Enter the number of process : ");
    scanf("%d",&n);
    printf("Enter the burst time for thr process : ");
    for(i=0;i<n,i++)
    {
        scanf("%d",&bt[i]);
    }
    printf("process\t bursttime\t waitingtime\t turnaroundtime\n");
    wt[i] = 0;
    tat[i] = 0;
    for(j=0;j<i;j++){
        wt[i] = wt[i] + b[j];

    }
    tat[i] = wt[i]+bt[i];
    awt = awt+wt[i];
    atat = atat + wt[i];
    printf("%d\t%d\t\t%d\t\t%d,i+1,bt[i],wt[i],tat[i]");
    awt=awt/n;
    atat=atat/n;
    printf("average waiting time = %f",awt);
    printf("average turn around time = %f",atat);
    getch();
}