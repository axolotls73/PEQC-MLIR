
{
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_lu(n, A);
}
}
