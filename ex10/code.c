#include <stdlib.h>
#define VECTORSIZE 1024

int main (int argc, char** argv) {
	double* x;
	double* y;
	double* z;
	int i;

	x= (double *) malloc(VECTORSIZE*sizeof(double));
	y= (double *) malloc(VECTORSIZE*sizeof(double));
	z= (double *) malloc(VECTORSIZE*sizeof(double));

	for (i=0; i<VECTORSIZE; i++)
		*(z+i) = *(x+i) + *(y+i);
}
