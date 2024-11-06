#pragma pocc-region-start
void kernel_syrk(int n, int m,
   double alpha,
   double beta,
   double C[ 30 + 0][30 + 0],
   double A[ 30 + 0][20 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 30; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 20; k++) {
      for (j = 0; j <= i; j++)
        C[i][j] += alpha * A[i][k] * A[j][k];
    }
  }
#pragma endscop

}



{
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;


  kernel_syrk(n, m, alpha, beta, C, A);

}
#pragma pocc-region-end
