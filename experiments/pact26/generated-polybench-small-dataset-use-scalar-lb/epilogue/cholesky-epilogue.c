
{
  int n = 120;
  double* A;

#pragma peqc async_execute
{
  kernel_cholesky(n, A);
}
}
