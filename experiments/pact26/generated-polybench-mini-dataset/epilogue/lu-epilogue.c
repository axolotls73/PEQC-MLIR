
{
  int n = 40;
  double* A;

#pragma peqc async_execute
{
  kernel_lu(n, A);
}
}
