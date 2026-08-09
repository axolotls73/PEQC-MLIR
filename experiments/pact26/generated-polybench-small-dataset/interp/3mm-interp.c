
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_3mm(int ni, int nj, int nk, int nl, int nm,
  double E[ 40 + 0][50 + 0],
  double A[ 40 + 0][60 + 0],
  double B[ 60 + 0][50 + 0],
  double F[ 50 + 0][70 + 0],
  double C[ 50 + 0][80 + 0],
  double D[ 80 + 0][70 + 0],
  double G[ 40 + 0][70 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
      {
 E[i][j] = 0.0;
 for (k = 0; k < nk; ++k)
   E[i][j] += A[i][k] * B[k][j];
      }

  for (i = 0; i < nj; i++)
    for (j = 0; j < nl; j++)
      {
 F[i][j] = 0.0;
 for (k = 0; k < nm; ++k)
   F[i][j] += C[i][k] * D[k][j];
      }

  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      {
 G[i][j] = 0.0;
 for (k = 0; k < nj; ++k)
   G[i][j] += E[i][k] * F[k][j];
      }
#pragma endscop

}



{
  int ni = 40;
  int nj = 50;
  int nk = 60;
  int nl = 70;
  int nm = 80;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;


  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);

}
#pragma pocc-region-end
