
{
  int ni = 20;
  int nj = 25;
  int nk = 30;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);
}
}
