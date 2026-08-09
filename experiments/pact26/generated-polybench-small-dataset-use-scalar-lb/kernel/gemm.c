
#include <math.h>
void kernel_gemm(int ni, int nj, int nk,
   double alpha,
   double beta,
   double C[ 60 + 0][70 + 0],
   double A[ 60 + 0][80 + 0],
   double B[ 80 + 0][70 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 60; i++) {
    for (j = 0; j < 70; j++)
 C[i][j] *= beta;
    for (k = 0; k < 80; k++) {
       for (j = 0; j < 70; j++)
   C[i][j] += alpha * A[i][k] * B[k][j];
    }
  }
#pragma endscop

}


