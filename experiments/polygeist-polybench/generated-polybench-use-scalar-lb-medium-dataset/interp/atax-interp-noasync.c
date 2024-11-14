
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_atax(int m, int n,
   double A[ 390 + 0][410 + 0],
   double x[ 410 + 0],
   double y[ 410 + 0],
   double tmp[ 390 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 410; i++)
    y[i] = 0.0;
  for (i = 0; i < 390; i++)
    {
      tmp[i] = 0.0;
      for (j = 0; j < 410; j++)
 tmp[i] = tmp[i] + A[i][j] * x[j];
      for (j = 0; j < 410; j++)
 y[j] = y[j] + A[i][j] * tmp[i];
    }
#pragma endscop

}



{
  int m;
  int n;
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}
#pragma pocc-region-end
