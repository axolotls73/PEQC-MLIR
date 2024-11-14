
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_trmm(int m, int n,
   double alpha,
   double A[ 20 + 0][20 + 0],
   double B[ 20 + 0][30 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 20; i++)
     for (j = 0; j < 30; j++) {
        for (k = i+1; k < 20; k++)
           B[i][j] += A[k][i] * B[k][j];
        B[i][j] = alpha * B[i][j];
     }
#pragma endscop

}



{
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}
#pragma pocc-region-end
