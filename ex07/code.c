#define VECTORSIZE 1024

int main (int argc, char** argv) {
	int x[VECTORSIZE];
	int y[VECTORSIZE];
	int z[VECTORSIZE];
	int i;

	for (i=0; i<VECTORSIZE; i++)
		z[i] = x[i] + argc;
}
