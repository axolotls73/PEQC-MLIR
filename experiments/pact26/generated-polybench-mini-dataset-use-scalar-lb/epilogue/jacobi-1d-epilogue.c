
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
