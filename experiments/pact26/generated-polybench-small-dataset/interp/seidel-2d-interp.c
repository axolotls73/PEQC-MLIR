
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_seidel_2d(int tsteps,
        int n,
        double A[ 120 + 0][120 + 0])
{
  int t, i, j;

#pragma scop
  for (t = 0; t <= tsteps - 1; t++)
    for (i = 1; i<= n - 2; i++)
      for (j = 1; j <= n - 2; j++)
 A[i][j] = (A[i-1][j-1] + A[i-1][j] + A[i-1][j+1]
     + A[i][j-1] + A[i][j] + A[i][j+1]
     + A[i+1][j-1] + A[i+1][j] + A[i+1][j+1])/9.0;
#pragma endscop

}



{
  int tsteps = 40;
  int n = 120;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}
#pragma pocc-region-end
