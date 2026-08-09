
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_3mm(int ni, int nj, int nk, int nl, int nm,
  double E[ 16 + 0][18 + 0],
  double A[ 16 + 0][20 + 0],
  double B[ 20 + 0][18 + 0],
  double F[ 18 + 0][22 + 0],
  double C[ 18 + 0][24 + 0],
  double D[ 24 + 0][22 + 0],
  double G[ 16 + 0][22 + 0])
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
  int ni = 16;
  int nj = 18;
  int nk = 20;
  int nl = 22;
  int nm = 24;
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
