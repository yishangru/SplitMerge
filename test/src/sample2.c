#import <stdio.h>
// sample test for destructive merge - loop
int dm_sample_cond_loop (int condition) {
	int a = 0;
	int loop = 0;

	while (1) {
		
		int b = a;
		
		if (condition > 10) {
			a = 1;
			loop += a;
		} else {
			a = 2;
			loop += a;
		}

		printf("b is %d\n", b);
		if (loop > 10) {
			break;
		}
	}

	int retval = a + loop;
	printf("result was %d\n", retval);
	return retval;
}