
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_mvt(int n,
  double x1[ 120 + 0],
  double x2[ 120 + 0],
  double y_1[ 120 + 0],
  double y_2[ 120 + 0],
  double A[ 120 + 0][120 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x1[i] = x1[i] + A[i][j] * y_1[j];
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x2[i] = x2[i] + A[j][i] * y_2[j];
#pragma endscop

}



{
  int n = 120;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;


  kernel_mvt(n, x1, x2, y_1, y_2, A);

}
#pragma pocc-region-end
