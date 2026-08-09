
{
  int m = 60;
  int n = 80;
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
