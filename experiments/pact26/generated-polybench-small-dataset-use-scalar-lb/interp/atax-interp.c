
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_atax(int m, int n,
   double A[ 116 + 0][124 + 0],
   double x[ 124 + 0],
   double y[ 124 + 0],
   double tmp[ 116 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 124; i++)
    y[i] = 0.0;
  for (i = 0; i < 116; i++)
    {
      tmp[i] = 0.0;
      for (j = 0; j < 124; j++)
 tmp[i] = tmp[i] + A[i][j] * x[j];
      for (j = 0; j < 124; j++)
 y[j] = y[j] + A[i][j] * tmp[i];
    }
#pragma endscop

}



{
  int m = 116;
  int n = 124;
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}
#pragma pocc-region-end
