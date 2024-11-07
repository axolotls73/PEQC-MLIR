#pragma pocc-region-start
void kernel_ludcmp(int n,
     double A[ 400 + 0][400 + 0],
     double b[ 400 + 0],
     double x[ 400 + 0],
     double y[ 400 + 0])
{
  int i, j, k;

  double w;

#pragma scop
  for (i = 0; i < 400; i++) {
    for (j = 0; j <i; j++) {
       w = A[i][j];
       for (k = 0; k < j; k++) {
          w -= A[i][k] * A[k][j];
       }
        A[i][j] = w / A[j][j];
    }
   for (j = i; j < 400; j++) {
       w = A[i][j];
       for (k = 0; k < i; k++) {
          w -= A[i][k] * A[k][j];
       }
       A[i][j] = w;
    }
  }

  for (i = 0; i < 400; i++) {
     w = b[i];
     for (j = 0; j < i; j++)
        w -= A[i][j] * y[j];
     y[i] = w;
  }

   for (i = 400 -1; i >=0; i--) {
     w = y[i];
     for (j = i+1; j < 400; j++)
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

#pragma peqc async_execute
{
  kernel_ludcmp(n, A, b, x, y);
}
}
#pragma pocc-region-end
