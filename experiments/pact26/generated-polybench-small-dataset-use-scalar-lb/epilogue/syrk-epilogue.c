
{
  int n = 80;
  int m = 60;
  double alpha;
  double beta;
  double* C;
  double* A;

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}
