#pragma pocc-region-start
void kernel_gesummv(int n,
      double alpha,
      double beta,
      double A[ 30 + 0][30 + 0],
      double B[ 30 + 0][30 + 0],
      double tmp[ 30 + 0],
      double x[ 30 + 0],
      double y[ 30 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 30; i++)
    {
      tmp[i] = 0.0;
      y[i] = 0.0;
      for (j = 0; j < 30; j++)
 {
   tmp[i] = A[i][j] * x[j] + tmp[i];
   y[i] = B[i][j] * x[j] + y[i];
 }
      y[i] = alpha * tmp[i] + beta * y[i];
    }
#pragma endscop

}



{
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
#pragma pocc-region-end
