
#include <math.h>
void kernel_ludcmp(int n,
     double A[ 120 + 0][120 + 0],
     double b[ 120 + 0],
     double x[ 120 + 0],
     double y[ 120 + 0])
{
  int i, j, k;

  double w;

#pragma scop
  for (i = 0; i < 120; i++) {
    for (j = 0; j <i; j++) {
       w = A[i][j];
       for (k = 0; k < j; k++) {
          w -= A[i][k] * A[k][j];
       }
        A[i][j] = w / A[j][j];
    }
   for (j = i; j < 120; j++) {
       w = A[i][j];
       for (k = 0; k < i; k++) {
          w -= A[i][k] * A[k][j];
       }
       A[i][j] = w;
    }
  }

  for (i = 0; i < 120; i++) {
     w = b[i];
     for (j = 0; j < i; j++)
        w -= A[i][j] * y[j];
     y[i] = w;
  }

   for (i = 120 -1; i >=0; i--) {
     w = y[i];
     for (j = i+1; j < 120; j++)
        w -= A[i][j] * x[j];
     x[i] = w / A[i][i];
  }
#pragma endscop

}


