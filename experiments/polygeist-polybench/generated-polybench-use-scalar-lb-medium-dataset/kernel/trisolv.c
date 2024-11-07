
#include <math.h>
void kernel_trisolv(int n,
      double L[ 400 + 0][400 + 0],
      double x[ 400 + 0],
      double b[ 400 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 400; i++)
    {
      x[i] = b[i];
      for (j = 0; j <i; j++)
        x[i] -= L[i][j] * x[j];
      x[i] = x[i] / L[i][i];
    }
#pragma endscop

}


