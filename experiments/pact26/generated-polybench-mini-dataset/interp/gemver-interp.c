
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_gemver(int n,
     double alpha,
     double beta,
     double A[ 40 + 0][40 + 0],
     double u1[ 40 + 0],
     double v1[ 40 + 0],
     double u2[ 40 + 0],
     double v2[ 40 + 0],
     double w[ 40 + 0],
     double x[ 40 + 0],
     double y[ 40 + 0],
     double z[ 40 + 0])
{
  int i, j;

#pragma scop

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      A[i][j] = A[i][j] + u1[i] * v1[j] + u2[i] * v2[j];

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      x[i] = x[i] + beta * A[j][i] * y[j];

  for (i = 0; i < n; i++)
    x[i] = x[i] + z[i];

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      w[i] = w[i] + alpha * A[i][j] * x[j];

#pragma endscop
}



{
  int n = 40;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}
#pragma pocc-region-end
