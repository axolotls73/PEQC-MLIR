
#include <math.h>
void kernel_syr2k(int n, int m,
    double alpha,
    double beta,
    double C[ 80 + 0][80 + 0],
    double A[ 80 + 0][60 + 0],
    double B[ 80 + 0][60 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 80; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 60; k++)
      for (j = 0; j <= i; j++)
 {
   C[i][j] += A[j][k]*alpha*B[i][k] + B[j][k]*alpha*A[i][k];
 }
  }
#pragma endscop

}


