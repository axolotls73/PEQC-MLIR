
{
  int m;
  int n;
  double alpha;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_trmm(m, n, alpha, A, B);
}
}
