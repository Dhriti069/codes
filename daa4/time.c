#include<time.h>

clock_t start,end;
double t_time;

double t_time(){
start = clock(){}
end = clock();

t_time = double(end - start)/CLOCKS_PER_SECOND; //SECOND
printf ("total time = %d",t_time);

return 0;
}