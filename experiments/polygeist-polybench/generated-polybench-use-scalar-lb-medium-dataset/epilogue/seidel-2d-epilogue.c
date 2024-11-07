
{
  int tsteps;
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}
