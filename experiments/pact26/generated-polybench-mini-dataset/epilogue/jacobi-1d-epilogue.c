
{
  int tsteps = 20;
  int n = 30;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}
