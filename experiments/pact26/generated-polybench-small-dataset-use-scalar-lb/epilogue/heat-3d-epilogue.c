
{
  int tsteps = 40;
  int n = 20;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}
