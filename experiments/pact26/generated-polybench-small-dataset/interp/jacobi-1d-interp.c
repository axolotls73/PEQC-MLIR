
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_jacobi_1d(int tsteps,
       int n,
       double A[ 120 + 0],
       double B[ 120 + 0])
{
  int t, i;

#pragma scop
  for (t = 0; t < tsteps; t++)
    {
      for (i = 1; i < n - 1; i++)

 B[i] = (A[i-1] + A[i] + A[i + 1]) * 0.33333;
      for (i = 1; i < n - 1; i++)

 A[i] = (B[i-1] + B[i] + B[i + 1]) * 0.33333;
    }
#pragma endscop

}



{
  int tsteps = 40;
  int n = 120;
  double* A;
  double* B;


  kernel_jacobi_1d(tsteps, n, A, B);

}
#pragma pocc-region-end
