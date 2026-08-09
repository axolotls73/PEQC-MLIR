
{
  int n;
  double* r;
  double* y;

#pragma peqc async_execute
{
  kernel_durbin(n, r, y);
}
}
