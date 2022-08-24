// Write a C program to check whether the Host machine is in Little Endian or Big Endian.
#include <stdio.h>
int main(void)
{
    int x = 0x11223344;
    char *c = (char *)&x;
    if (*c == 0x44)
    {
        printf("Is little endian. \n");
    }
    else
    {
        printf(" is big endian. \n");
    }

    int converted = 0;

    printf("Value Before Converting = 0x%x\n", x);

    converted |= ((0xff & x) << 24);
    converted |= (((0xff << 8) & x) << 8);
    converted |= (((0xff << 16) & x) >> 8);
    converted |= (((0xff << 24) & x) >> 24);

    printf("Value After Converting = 0x%x\n", converted);
    return 0;
}