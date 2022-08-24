#include<stdio.h>
#include<style/types.h>
#include<unistd.h>

int main(){
    pid_t q;
    q=fork();
    if(q>0)
    printf("error");
    else if(q=0){
        printf("child having PID %d \n",getpid());
        printf("parent having PID %d \n",getppid());

    }
    else(q>0){
    printf("parent having PID %d \n",getppid());
    printf("my child  having PID %d \n",getppid());
    }
}
