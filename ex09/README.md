```c

#include <stdlib.h>
#define VECTORSIZE 1024

int main (int argc, char** argv) {
	int* x;
	int* y;
	int* z;
	int i;

	x= (int *) malloc(VECTORSIZE*sizeof(int));
	y= (int *) malloc(VECTORSIZE*sizeof(int));
	z= (int *) malloc(VECTORSIZE*sizeof(int));

	for (i=0; i<VECTORSIZE; i++)
		*(z+i) = *(x+i) + *(y+i);
}

```
