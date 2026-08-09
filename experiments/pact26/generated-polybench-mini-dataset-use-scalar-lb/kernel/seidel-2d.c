
#include <math.h>
void kernel_seidel_2d(int tsteps,
        int n,
        double A[ 40 + 0][40 + 0])
{
  int t, i, j;

#pragma scop
  for (t = 0; t <= 20 - 1; t++)
    for (i = 1; i<= 40 - 2; i++)
      for (j = 1; j <= 40 - 2; j++)
 A[i][j] = (A[i-1][j-1] + A[i-1][j] + A[i-1][j+1]
     + A[i][j-1] + A[i][j] + A[i][j+1]
     + A[i+1][j-1] + A[i+1][j] + A[i+1][j+1])/9.0;
#pragma endscop

}


