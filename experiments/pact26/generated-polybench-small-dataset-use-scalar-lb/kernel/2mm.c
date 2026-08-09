
#include <math.h>
void kernel_2mm(int ni, int nj, int nk, int nl,
  double alpha,
  double beta,
  double tmp[ 40 + 0][50 + 0],
  double A[ 40 + 0][70 + 0],
  double B[ 70 + 0][50 + 0],
  double C[ 50 + 0][80 + 0],
  double D[ 40 + 0][80 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < 40; i++)
    for (j = 0; j < 50; j++)
      {
 tmp[i][j] = 0.0;
 for (k = 0; k < 70; ++k)
   tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
  for (i = 0; i < 40; i++)
    for (j = 0; j < 80; j++)
      {
 D[i][j] *= beta;
 for (k = 0; k < 50; ++k)
   D[i][j] += tmp[i][k] * C[k][j];
      }
#pragma endscop

}


