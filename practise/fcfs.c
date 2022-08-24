#include<stdio.h>

void findwaitingtime(int processes[],int n,int bt[],int wt[]){
    wt[0]=0;

    for(int i=0;i<n;i++){
        wt[i]= bt[i-1]+wt[i-1];
    }
}

void turnaroundtime(int processes[],int n,int bt[],int wt[],int tat[]{
    for(int i=0;i<n;i++){
        tat[i]= bt[i]+wt[i];
    }

}

void averagetime(int processes[],int n,int bt[]){
    int wt[n],tat[n],total_tat=0 , total_wt=0;


    findwaitingtime(processes,n,bt,wt);
    turnaroundtime(processes,n,bt,wt,tat);

    printf("process    burst_time     waiting_time     turn_around_time  \n");

    for(int i=0;i<n;i++){
    total_tat = total_tat+tat[i];
    total_wt = total_wt + wt[i];

    printf("  %d",i+1);
    printf("  %d",bt[i]);
    printf("  %d",wt[i]);
    printf("  %d",tat[i]);

    s = (float)total_wt /(int) n;
    printf("average waiting time is %d",s);
    

    t = (float)total_tat /(int) n;
    printf("average turnaroundtime time is %d",t);

    }


}

int main(){
    int processes = {1,2,3};
    int n = sizeof(processes)/sizeof(processes[0]);

    int burst_time = {10,5,8};

    averagetime(processes,n,burst_time);

    return 0;

    )
}