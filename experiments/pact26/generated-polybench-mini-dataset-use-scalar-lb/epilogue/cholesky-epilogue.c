
{
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_cholesky(n, A);
}
}
