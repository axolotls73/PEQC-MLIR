#pragma pocc-region-start
void kernel_trmm(int m, int n,
   double alpha,
   double A[ 200 + 0][200 + 0],
   double B[ 200 + 0][240 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 200; i++)
     for (j = 0; j < 240; j++) {
        for (k = i+1; k < 200; k++)
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

#pragma peqc async_execute
{
  kernel_trmm(m, n, alpha, A, B);
}
}
#pragma pocc-region-end
