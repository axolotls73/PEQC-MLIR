
{
  int tsteps = 20;
  int n = 40;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}
