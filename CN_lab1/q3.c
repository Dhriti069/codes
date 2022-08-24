// C program to extract each byte from a given number  and store them in different character variables and print

#include<stdio.h>

void extract_byte(n);

int main(){
    int n = 9683;

    extract_byte(n);
}

void extract_byte(int variable)
{
    int byte0, byte1, byte2, byte3;
    byte0 = ((char*)(&variable))[0];
byte1 = ((char*)(&variable))[1];
byte2 = ((char*)(&variable))[2];
byte3 = ((char*)(&variable))[3];

printf("Extracted bytes are : %d, %d, %d, %d", byte0, byte1, byte2, byte3);
}