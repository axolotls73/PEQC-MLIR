
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_syrk(int n, int m,
   double alpha,
   double beta,
   double C[ 80 + 0][80 + 0],
   double A[ 80 + 0][60 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < n; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < m; k++) {
      for (j = 0; j <= i; j++)
        C[i][j] += alpha * A[i][k] * A[j][k];
    }
  }
#pragma endscop

}



{
  int n = 80;
  int m = 60;
  double alpha;
  double beta;
  double* C;
  double* A;


  kernel_syrk(n, m, alpha, beta, C, A);

}
#pragma pocc-region-end
