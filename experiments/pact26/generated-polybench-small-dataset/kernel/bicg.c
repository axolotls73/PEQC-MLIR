
#include <math.h>
void kernel_bicg(int m, int n,
   double A[ 124 + 0][116 + 0],
   double s[ 116 + 0],
   double q[ 124 + 0],
   double p[ 116 + 0],
   double r[ 124 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < m; i++)
    s[i] = 0.0;
  for (i = 0; i < n; i++)
    {
      q[i] = 0.0;
      for (j = 0; j < m; j++)
 {
   s[j] = s[j] + r[i] * A[i][j];
   q[i] = q[i] + A[i][j] * p[j];
 }
    }
#pragma endscop

}


