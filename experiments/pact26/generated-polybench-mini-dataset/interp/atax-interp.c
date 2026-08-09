
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_atax(int m, int n,
   double A[ 38 + 0][42 + 0],
   double x[ 42 + 0],
   double y[ 42 + 0],
   double tmp[ 38 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < n; i++)
    y[i] = 0.0;
  for (i = 0; i < m; i++)
    {
      tmp[i] = 0.0;
      for (j = 0; j < n; j++)
 tmp[i] = tmp[i] + A[i][j] * x[j];
      for (j = 0; j < n; j++)
 y[j] = y[j] + A[i][j] * tmp[i];
    }
#pragma endscop

}



{
  int m = 38;
  int n = 42;
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}
#pragma pocc-region-end
