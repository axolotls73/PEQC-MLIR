
#include <math.h>
void kernel_gramschmidt(int m, int n,
   double A[ 200 + 0][240 + 0],
   double R[ 240 + 0][240 + 0],
   double Q[ 200 + 0][240 + 0])
{
  int i, j, k;

  double nrm;

#pragma scop
  for (k = 0; k < 240; k++)
    {
      nrm = 0.0;
      for (i = 0; i < 200; i++)
        nrm += A[i][k] * A[i][k];
      R[k][k] = sqrt(nrm);
      for (i = 0; i < 200; i++)
        Q[i][k] = A[i][k] / R[k][k];
      for (j = k + 1; j < 240; j++)
 {
   R[k][j] = 0.0;
   for (i = 0; i < 200; i++)
     R[k][j] += Q[i][k] * A[i][j];
   for (i = 0; i < 200; i++)
     A[i][j] = A[i][j] - Q[i][k] * R[k][j];
 }
    }
#pragma endscop

}


