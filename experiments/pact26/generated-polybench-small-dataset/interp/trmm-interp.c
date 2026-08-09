
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_trmm(int m, int n,
   double alpha,
   double A[ 60 + 0][60 + 0],
   double B[ 60 + 0][80 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < m; i++)
     for (j = 0; j < n; j++) {
        for (k = i+1; k < m; k++)
           B[i][j] += A[k][i] * B[k][j];
        B[i][j] = alpha * B[i][j];
     }
#pragma endscop

}



{
  int m = 60;
  int n = 80;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}
#pragma pocc-region-end
