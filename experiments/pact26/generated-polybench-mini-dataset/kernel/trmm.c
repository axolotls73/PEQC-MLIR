
#include <math.h>
void kernel_trmm(int m, int n,
   double alpha,
   double A[ 20 + 0][20 + 0],
   double B[ 20 + 0][30 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < m; i++)
     for (j = 0; j < n; j++) {
        for (k = i+1; k < m; k++)
           B[i][j] += A[k][i] * B[k][j];
        B[i][j] = alpha * B[i][j];
     }
#pragma endscop

}


