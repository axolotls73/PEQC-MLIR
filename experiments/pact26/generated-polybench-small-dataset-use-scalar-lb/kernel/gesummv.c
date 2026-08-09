
#include <math.h>
void kernel_gesummv(int n,
      double alpha,
      double beta,
      double A[ 90 + 0][90 + 0],
      double B[ 90 + 0][90 + 0],
      double tmp[ 90 + 0],
      double x[ 90 + 0],
      double y[ 90 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 90; i++)
    {
      tmp[i] = 0.0;
      y[i] = 0.0;
      for (j = 0; j < 90; j++)
 {
   tmp[i] = A[i][j] * x[j] + tmp[i];
   y[i] = B[i][j] * x[j] + y[i];
 }
      y[i] = alpha * tmp[i] + beta * y[i];
    }
#pragma endscop

}


