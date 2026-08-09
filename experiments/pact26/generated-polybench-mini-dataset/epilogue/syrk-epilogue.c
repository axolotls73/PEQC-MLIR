
{
  int n = 30;
  int m = 20;
  double alpha;
  double beta;
  double* C;
  double* A;

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}
