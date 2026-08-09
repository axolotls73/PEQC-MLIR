
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_symm(int m, int n,
   double alpha,
   double beta,
   double C[ 60 + 0][80 + 0],
   double A[ 60 + 0][60 + 0],
   double B[ 60 + 0][80 + 0])
{
  int i, j, k;
  double temp2 = 0.0;

#pragma scop
   for (i = 0; i < m; i++)
      for (j = 0; j < n; j++ )
      {
        temp2 = 0.0;
        for (k = 0; k < i; k++) {
           C[k][j] += alpha*B[i][j] * A[i][k];
           temp2 += B[k][j] * A[i][k];
        }
        C[i][j] = beta * C[i][j] + alpha*B[i][j] * A[i][i] + alpha * temp2;
     }
#pragma endscop

}



{
  int m = 60;
  int n = 80;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_symm(m, n, alpha, beta, C, A, B);

}
#pragma pocc-region-end
