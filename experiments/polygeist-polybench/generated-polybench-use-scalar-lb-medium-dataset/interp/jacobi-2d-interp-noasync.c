
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_jacobi_2d(int tsteps,
       int n,
       double A[ 250 + 0][250 + 0],
       double B[ 250 + 0][250 + 0])
{
  int t, i, j;

#pragma scop
  for (t = 0; t < 100; t++)
    {
      for (i = 1; i < 250 - 1; i++)
 for (j = 1; j < 250 - 1; j++)

   B[i][j] = (A[i][j] + A[i][j-1] + A[i][1+j] + A[1+i][j] + A[i-1][j]) * 0.2;
      for (i = 1; i < 250 - 1; i++)
 for (j = 1; j < 250 - 1; j++)

   A[i][j] = (B[i][j] + B[i][j-1] + B[i][1+j] + B[1+i][j] + B[i-1][j]) * 0.2;
    }
#pragma endscop

}



{
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_2d(tsteps, n, A, B);

}
#pragma pocc-region-end
