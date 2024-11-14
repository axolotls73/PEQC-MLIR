
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_syrk(int n, int m,
   double alpha,
   double beta,
   double C[ 240 + 0][240 + 0],
   double A[ 240 + 0][200 + 0])
{
  int i, j, k;







#pragma scop
  for (i = 0; i < 240; i++) {
    for (j = 0; j <= i; j++)
      C[i][j] *= beta;
    for (k = 0; k < 200; k++) {
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
