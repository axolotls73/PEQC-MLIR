#pragma pocc-region-start
void kernel_jacobi_1d(int tsteps,
       int n,
       double A[ 30 + 0],
       double B[ 30 + 0])
{
  int t, i;

#pragma scop
  for (t = 0; t < 20; t++)
    {
      for (i = 1; i < 30 - 1; i++)
 B[i] = 0.33333 * (A[i-1] + A[i] + A[i + 1]);
      for (i = 1; i < 30 - 1; i++)
 A[i] = 0.33333 * (B[i-1] + B[i] + B[i + 1]);
    }
#pragma endscop

}



{
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}
#pragma pocc-region-end
