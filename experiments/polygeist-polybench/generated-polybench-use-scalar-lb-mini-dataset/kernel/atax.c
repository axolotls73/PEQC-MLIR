
#include <math.h>
void kernel_atax(int m, int n,
   double A[ 38 + 0][42 + 0],
   double x[ 42 + 0],
   double y[ 42 + 0],
   double tmp[ 38 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 42; i++)
    y[i] = 0;
  for (i = 0; i < 38; i++)
    {
      tmp[i] = 0.0;
      for (j = 0; j < 42; j++)
 tmp[i] = tmp[i] + A[i][j] * x[j];
      for (j = 0; j < 42; j++)
 y[j] = y[j] + A[i][j] * tmp[i];
    }
#pragma endscop

}


