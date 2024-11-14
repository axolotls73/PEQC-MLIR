
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_syr2k(int n, int m,
    double alpha,
    double beta,
    double C[ 240 + 0][240 + 0],
    double A[ 240 + 0][200 + 0],
    double B[ 240 + 0][200 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 240; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 200; k++)
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


  kernel_syr2k(n, m, alpha, beta, C, A, B);

}
#pragma pocc-region-end
