#import <stdio.h>
// sample test for destructive merge - simple
int dm_sample_cond_3 (int condition1, int condition2, int condition3) {
	int x = 10;
	
	if (condition1 > 20) {
		x = 15;
	} else {
		x = 5;
	}

	// merge node D
	int y = 20;
	if (condition2 > 20) {
		y += 10;
	} else {
		y -= 10;
	}

	// assignment G
	int m = x;
	if (condition3 > 20) {
		m += 30;
	} else {
		m -= 30;
	}

	// final return
	int retval = x + y + m;
	printf("result was %d\n", retval);
	return retval;
}