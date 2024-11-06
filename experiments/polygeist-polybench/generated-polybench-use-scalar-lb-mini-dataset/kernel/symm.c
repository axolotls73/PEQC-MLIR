
#include <math.h>
void kernel_symm(int m, int n,
   double alpha,
   double beta,
   double C[ 20 + 0][30 + 0],
   double A[ 20 + 0][20 + 0],
   double B[ 20 + 0][30 + 0])
{
  int i, j, k;
  double temp2;

#pragma scop
   for (i = 0; i < 20; i++)
      for (j = 0; j < 30; j++ )
      {
        temp2 = 0;
        for (k = 0; k < i; k++) {
           C[k][j] += alpha*B[i][j] * A[i][k];
           temp2 += B[k][j] * A[i][k];
        }
        C[i][j] = beta * C[i][j] + alpha*B[i][j] * A[i][i] + alpha * temp2;
     }
#pragma endscop

}


