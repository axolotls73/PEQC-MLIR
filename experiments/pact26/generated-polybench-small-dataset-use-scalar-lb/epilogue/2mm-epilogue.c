
{
  int ni = 40;
  int nj = 50;
  int nk = 70;
  int nl = 80;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}
