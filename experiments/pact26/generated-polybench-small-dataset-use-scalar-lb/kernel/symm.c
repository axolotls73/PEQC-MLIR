
#include <math.h>
void kernel_symm(int m, int n,
   double alpha,
   double beta,
   double C[ 60 + 0][80 + 0],
   double A[ 60 + 0][60 + 0],
   double B[ 60 + 0][80 + 0])
{
  int i, j, k;
  double temp2 = 0.0;

#pragma scop
   for (i = 0; i < 60; i++)
      for (j = 0; j < 80; j++ )
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


