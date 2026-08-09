
{
  int ni = 60;
  int nj = 70;
  int nk = 80;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}
