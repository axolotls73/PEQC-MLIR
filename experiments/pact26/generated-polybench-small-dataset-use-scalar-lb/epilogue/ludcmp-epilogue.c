
{
  int n = 120;
  double* A;
  double* b;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_ludcmp(n, A, b, x, y);
}
}
