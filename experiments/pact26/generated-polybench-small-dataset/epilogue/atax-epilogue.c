
{
  int m = 116;
  int n = 124;
  double* A;
  double* x;
  double* y;
  double* tmp;

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}
