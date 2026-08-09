
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_2mm(int ni, int nj, int nk, int nl,
  double alpha,
  double beta,
  double tmp[ 40 + 0][50 + 0],
  double A[ 40 + 0][70 + 0],
  double B[ 70 + 0][50 + 0],
  double C[ 50 + 0][80 + 0],
  double D[ 40 + 0][80 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
      {
 tmp[i][j] = 0.0;
 for (k = 0; k < nk; ++k)
   tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      {
 D[i][j] *= beta;
 for (k = 0; k < nj; ++k)
   D[i][j] += tmp[i][k] * C[k][j];
      }
#pragma endscop

}



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


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}
#pragma pocc-region-end
