
#include <math.h>
void kernel_symm(int m, int n,
   double alpha,
   double beta,
   double C[ 200 + 0][240 + 0],
   double A[ 200 + 0][200 + 0],
   double B[ 200 + 0][240 + 0])
{
  int i, j, k;
  double temp2 = 0.0;

#pragma scop
   for (i = 0; i < 200; i++)
      for (j = 0; j < 240; j++ )
      {
        temp2 = 0.0;
        for (k = 0; k < i; k++) {
           C[k][j] += alpha*B[i][j] * A[i][k];
           temp2 += B[k][j] * A[i][k];
        }
        C[i][j] = beta * C[i][j] + alpha*B[i][j] * A[i][i] + alpha * temp2;
     }
#pragma endscop

}


