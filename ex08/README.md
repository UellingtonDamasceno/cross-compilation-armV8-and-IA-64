```c

#define VECTORSIZE 1024

int main (int argc, char** argv) {
	double x[VECTORSIZE];
	double y[VECTORSIZE];
	double z[VECTORSIZE];
	int i;

	for (i=0; i<VECTORSIZE; i++)
		z[i] = x[i] + y[i];
}

```
