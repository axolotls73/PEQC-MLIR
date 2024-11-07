
#include <math.h>
void kernel_syrk(int n, int m,
   double alpha,
   double beta,
   double C[ 240 + 0][240 + 0],
   double A[ 240 + 0][200 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 240; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 200; k++) {
      for (j = 0; j <= i; j++)
        C[i][j] += alpha * A[i][k] * A[j][k];
    }
  }
#pragma endscop

}


