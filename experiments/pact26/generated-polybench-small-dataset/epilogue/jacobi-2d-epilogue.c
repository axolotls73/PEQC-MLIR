
{
  int tsteps = 40;
  int n = 90;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_2d(tsteps, n, A, B);
}
}
