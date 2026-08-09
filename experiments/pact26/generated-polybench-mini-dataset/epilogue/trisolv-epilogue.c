
{
  int n = 40;
  double* L;
  double* x;
  double* b;

#pragma peqc async_execute
{
  kernel_trisolv(n, L, x, b);
}
}
