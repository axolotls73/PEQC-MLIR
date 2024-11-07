
#include <math.h>
void kernel_lu(int n,
        double A[ 400 + 0][400 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 400; i++) {
    for (j = 0; j <i; j++) {
       for (k = 0; k < j; k++) {
          A[i][j] -= A[i][k] * A[k][j];
       }
        A[i][j] /= A[j][j];
    }
   for (j = i; j < 400; j++) {
       for (k = 0; k < i; k++) {
          A[i][j] -= A[i][k] * A[k][j];
       }
    }
  }
#pragma endscop
}


