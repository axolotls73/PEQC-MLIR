#pragma pocc-region-start
void kernel_syr2k(int n, int m,
    double alpha,
    double beta,
    double C[ 30 + 0][30 + 0],
    double A[ 30 + 0][20 + 0],
    double B[ 30 + 0][20 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 30; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 20; k++)
      for (j = 0; j <= i; j++)
 {
   C[i][j] += A[j][k]*alpha*B[i][k] + B[j][k]*alpha*A[i][k];
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
  double* B;

#pragma peqc async_execute
{
  kernel_syr2k(n, m, alpha, beta, C, A, B);
}
}
#pragma pocc-region-end
