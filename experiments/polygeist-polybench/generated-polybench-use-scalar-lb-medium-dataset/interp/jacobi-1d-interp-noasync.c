
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_jacobi_1d(int tsteps,
       int n,
       double A[ 400 + 0],
       double B[ 400 + 0])
{
  int t, i;

#pragma scop
  for (t = 0; t < 100; t++)
    {
      for (i = 1; i < 400 - 1; i++)

 B[i] = (A[i-1] + A[i] + A[i + 1]) * 0.33333;
      for (i = 1; i < 400 - 1; i++)

 A[i] = (B[i-1] + B[i] + B[i + 1]) * 0.33333;
    }
#pragma endscop

}



{
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_1d(tsteps, n, A, B);

}
#pragma pocc-region-end
