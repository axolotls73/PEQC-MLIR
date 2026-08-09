
{
  int m = 20;
  int n = 30;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_symm(m, n, alpha, beta, C, A, B);
}
}
