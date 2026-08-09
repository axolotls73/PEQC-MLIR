
{
  int tsteps = 20;
  int n = 10;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}
