
{
  int tsteps = 40;
  int n = 120;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}
