
{
  int n;
  double* L;
  double* x;
  double* b;

#pragma peqc async_execute
{
  kernel_trisolv(n, L, x, b);
}
}
