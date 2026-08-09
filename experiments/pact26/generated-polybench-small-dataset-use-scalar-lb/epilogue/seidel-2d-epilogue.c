
{
  int tsteps = 40;
  int n = 120;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}
