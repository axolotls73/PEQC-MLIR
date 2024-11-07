
#include <math.h>
void kernel_mvt(int n,
  double x1[ 400 + 0],
  double x2[ 400 + 0],
  double y_1[ 400 + 0],
  double y_2[ 400 + 0],
  double A[ 400 + 0][400 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 400; i++)
    for (j = 0; j < 400; j++)
      x1[i] = x1[i] + A[i][j] * y_1[j];
  for (i = 0; i < 400; i++)
    for (j = 0; j < 400; j++)
      x2[i] = x2[i] + A[j][i] * y_2[j];
#pragma endscop

}


