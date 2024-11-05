#pragma pocc-region-start
void kernel_ludcmp(int n,
     double A[ 40 + 0][40 + 0],
     double b[ 40 + 0],
     double x[ 40 + 0],
     double y[ 40 + 0])
{
  int i, j, k;

  double w;

#pragma scop
  for (i = 0; i < 40; i++) {
    for (j = 0; j <i; j++) {
       w = A[i][j];
       for (k = 0; k < j; k++) {
          w -= A[i][k] * A[k][j];
       }
        A[i][j] = w / A[j][j];
    }
   for (j = i; j < 40; j++) {
       w = A[i][j];
       for (k = 0; k < i; k++) {
          w -= A[i][k] * A[k][j];
       }
       A[i][j] = w;
    }
  }

  for (i = 0; i < 40; i++) {
     w = b[i];
     for (j = 0; j < i; j++)
        w -= A[i][j] * y[j];
     y[i] = w;
  }

   for (i = 40 -1; i >=0; i--) {
     w = y[i];
     for (j = i+1; j < 40; j++)
        w -= A[i][j] * x[j];
     x[i] = w / A[i][i];
  }
#pragma endscop

}



{
  int n;
  double* A;
  double* b;
  double* x;
  double* y;

  kernel_ludcmp(n, A, b, x, y);
}
#pragma pocc-region-end
