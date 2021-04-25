#import <stdio.h>
// sample test for destructive merge - loop
int dm_sample_cond_loop () {
	int a = 0;
	int loop = 0;
	int condition = 0;

	while (1) {
		
		int b = a;
		
		if (condition == 0) {
			a = 1;
			loop += a;
			condition = 1;
		} else {
			a = 2;
			loop += a;
			condition = 0;
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