#ifndef IT_2004_TIMER_H
#define IT_2004_TIMER_H
#include <time.h>

void cpu_timer_start(struct timespec *tstart_cpu);
double cpu_timer_stop(struct timespec tstart_cpu);

#endif
