#include <time.h>
#include <sys/resource.h>
#include <stdio.h>

int get_time() {
	struct timespec t;
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &t);
	return t.tv_sec;
}

int main() {
	unsigned long long iter = 0;
	while (iter % 128 != 0 || get_time() < 1) {
		iter++;
	}
	printf("%llu iterations\n", iter);
	return 0;
}
