
#include <math.h>
void kernel_trisolv(int n,
      double L[ 40 + 0][40 + 0],
      double x[ 40 + 0],
      double b[ 40 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 40; i++)
    {
      x[i] = b[i];
      for (j = 0; j <i; j++)
        x[i] -= L[i][j] * x[j];
      x[i] = x[i] / L[i][i];
    }
#pragma endscop

}


