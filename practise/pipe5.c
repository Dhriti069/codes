#include<stdio.h>
#include<unistd.h>

int main(){
    int pipefds1,pipefds2;
    int returnstatus1,returnstatus2;

    int pid;

    char pipe1writemessage[10]={"hi"};
    char pipe2writemessage[20]={"hello"};

    returnstatus1 = pipe(pipefds1);
    returnstatus2 = pipe(pipefds2);

    if(returnstatus1 == -1){
        printf("unable to create pipe1 :");
        return 1;
    }

    if(returnstatus2 == -1){
        printf("unable to create pipe2 :");
        return 1;
    }

    pid = fork();

    if(pid!=0) // parent process
    {
        close(pipefds1[0]) // close read end of pipe1
        close(pipefds2[1]) // close write end of pipe2;

        printf("writing to pipe message 1 is %s \n",pipe1writemessage);
        write(pipefds1[1],pipe1writemessage,sizeof(pipe1writemessage));

        printf("reading from pipe message 2 is %s \n",readmessage);
        read(pipefds2[0],readmessage,sizeof(readmessage));
    }

    else { //child process

        close(pipefds1[1]) // close write end of pipe1
        close(pipefds2[0]) // close read end of pipe2;

        printf("reading from pipe message 1 is %s \n",readmessage);
        read(pipefds1[0],readmessage,sizeof(readmessage));
    

        printf("writing to pipe message 2 is %s \n",pipe2writemessage);
        write(pipefds2[1],pipe2writemessage,sizeof(pipe2writemessage));

        return 0;

    }
}