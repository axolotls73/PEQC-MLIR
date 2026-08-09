
#include <math.h>
void kernel_doitgen(int nr, int nq, int np,
      double A[ 25 + 0][20 + 0][30 + 0],
      double C4[ 30 + 0][30 + 0],
      double sum[ 30 + 0])
{
  int r, q, p, s;

#pragma scop
  for (r = 0; r < 25; r++)
    for (q = 0; q < 20; q++) {
      for (p = 0; p < 30; p++) {
 sum[p] = 0.0;
 for (s = 0; s < 30; s++)
   sum[p] += A[r][q][s] * C4[s][p];
      }
      for (p = 0; p < 30; p++)
 A[r][q][p] = sum[p];
    }
#pragma endscop

}


