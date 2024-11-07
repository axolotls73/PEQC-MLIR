#pragma pocc-region-start
void kernel_gemm(int ni, int nj, int nk,
   double alpha,
   double beta,
   double C[ 200 + 0][220 + 0],
   double A[ 200 + 0][240 + 0],
   double B[ 240 + 0][220 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 200; i++) {
    for (j = 0; j < 220; j++)
 C[i][j] *= beta;
    for (k = 0; k < 240; k++) {
       for (j = 0; j < 220; j++)
   C[i][j] += alpha * A[i][k] * B[k][j];
    }
  }
#pragma endscop

}



{
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}
#pragma pocc-region-end
