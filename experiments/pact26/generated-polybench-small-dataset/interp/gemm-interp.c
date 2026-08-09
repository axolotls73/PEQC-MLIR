
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_gemm(int ni, int nj, int nk,
   double alpha,
   double beta,
   double C[ 60 + 0][70 + 0],
   double A[ 60 + 0][80 + 0],
   double B[ 80 + 0][70 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < ni; i++) {
    for (j = 0; j < nj; j++)
 C[i][j] *= beta;
    for (k = 0; k < nk; k++) {
       for (j = 0; j < nj; j++)
   C[i][j] += alpha * A[i][k] * B[k][j];
    }
  }
#pragma endscop

}



{
  int ni = 60;
  int nj = 70;
  int nk = 80;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}
#pragma pocc-region-end
