#pragma pocc-region-start
void kernel_seidel_2d(int tsteps,
        int n,
        double A[ 400 + 0][400 + 0])
{
  int t, i, j;

#pragma scop
  for (t = 0; t <= 100 - 1; t++)
    for (i = 1; i<= 400 - 2; i++)
      for (j = 1; j <= 400 - 2; j++)
 A[i][j] = (A[i-1][j-1] + A[i-1][j] + A[i-1][j+1]
     + A[i][j-1] + A[i][j] + A[i][j+1]
     + A[i+1][j-1] + A[i+1][j] + A[i+1][j+1])/9.0;
#pragma endscop

}



{
  int tsteps;
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}
#pragma pocc-region-end
