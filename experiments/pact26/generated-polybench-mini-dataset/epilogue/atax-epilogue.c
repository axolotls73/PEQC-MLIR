
{
  int m = 38;
  int n = 42;
  double* A;
  double* x;
  double* y;
  double* tmp;

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}
