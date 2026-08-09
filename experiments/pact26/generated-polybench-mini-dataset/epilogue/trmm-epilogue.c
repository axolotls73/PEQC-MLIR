
{
  int m = 20;
  int n = 30;
  double alpha;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_trmm(m, n, alpha, A, B);
}
}
