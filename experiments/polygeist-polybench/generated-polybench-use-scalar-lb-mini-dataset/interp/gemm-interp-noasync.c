#pragma pocc-region-start
void kernel_gemm(int ni, int nj, int nk,
   double alpha,
   double beta,
   double C[ 20 + 0][25 + 0],
   double A[ 20 + 0][30 + 0],
   double B[ 30 + 0][25 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 20; i++) {
    for (j = 0; j < 25; j++)
 C[i][j] *= beta;
    for (k = 0; k < 30; k++) {
       for (j = 0; j < 25; j++)
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
