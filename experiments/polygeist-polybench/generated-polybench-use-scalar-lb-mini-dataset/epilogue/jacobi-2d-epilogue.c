
{
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_2d(tsteps, n, A, B);
}
}
