
#include <math.h>
void kernel_2mm(int ni, int nj, int nk, int nl,
  double alpha,
  double beta,
  double tmp[ 180 + 0][190 + 0],
  double A[ 180 + 0][210 + 0],
  double B[ 210 + 0][190 + 0],
  double C[ 190 + 0][220 + 0],
  double D[ 180 + 0][220 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < 180; i++)
    for (j = 0; j < 190; j++)
      {
 tmp[i][j] = 0.0;
 for (k = 0; k < 210; ++k)
   tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
  for (i = 0; i < 180; i++)
    for (j = 0; j < 220; j++)
      {
 D[i][j] *= beta;
 for (k = 0; k < 190; ++k)
   D[i][j] += tmp[i][k] * C[k][j];
      }
#pragma endscop

}


