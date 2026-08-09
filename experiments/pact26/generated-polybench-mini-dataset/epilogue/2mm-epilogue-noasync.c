
{
  int ni = 16;
  int nj = 18;
  int nk = 22;
  int nl = 24;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}
