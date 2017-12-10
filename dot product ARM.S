/*
DOT PRODUCT

int dot(int a[], int b[], int n){
	int sum = 0;
	for (int i = 0; i<n; i++)
		sum += a[i]*b[i];
	return sum;
}
*/

loop:
	ldr 	r3, [r0, r6, lsl #2]
	ldr 	r4, [r1, r6, lsl #2]
	mul 	r3, r3, r4
	add		r5, r3, r5
	add		r6, r6, #1
	cmp		r6, r2
	bne		loop
