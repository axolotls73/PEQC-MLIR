#pragma pocc-region-start
void kernel_2mm(int ni, int nj, int nk, int nl,
  double alpha,
  double beta,
  double tmp[ 16 + 0][18 + 0],
  double A[ 16 + 0][22 + 0],
  double B[ 22 + 0][18 + 0],
  double C[ 18 + 0][24 + 0],
  double D[ 16 + 0][24 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < 16; i++)
    for (j = 0; j < 18; j++)
      {
 tmp[i][j] = 0.0;
 for (k = 0; k < 22; ++k)
   tmp[i][j] += alpha * A[i][k] * B[k][j];
      }
  for (i = 0; i < 16; i++)
    for (j = 0; j < 24; j++)
      {
 D[i][j] *= beta;
 for (k = 0; k < 18; ++k)
   D[i][j] += tmp[i][k] * C[k][j];
      }
#pragma endscop

}



{
  int ni;
  int nj;
  int nk;
  int nl;
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
