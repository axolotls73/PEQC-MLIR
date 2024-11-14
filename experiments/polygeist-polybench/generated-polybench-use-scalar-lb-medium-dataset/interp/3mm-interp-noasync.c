
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_3mm(int ni, int nj, int nk, int nl, int nm,
  double E[ 180 + 0][190 + 0],
  double A[ 180 + 0][200 + 0],
  double B[ 200 + 0][190 + 0],
  double F[ 190 + 0][210 + 0],
  double C[ 190 + 0][220 + 0],
  double D[ 220 + 0][210 + 0],
  double G[ 180 + 0][210 + 0])
{
  int i, j, k;

#pragma scop

  for (i = 0; i < 180; i++)
    for (j = 0; j < 190; j++)
      {
 E[i][j] = 0.0;
 for (k = 0; k < 200; ++k)
   E[i][j] += A[i][k] * B[k][j];
      }

  for (i = 0; i < 190; i++)
    for (j = 0; j < 210; j++)
      {
 F[i][j] = 0.0;
 for (k = 0; k < 220; ++k)
   F[i][j] += C[i][k] * D[k][j];
      }

  for (i = 0; i < 180; i++)
    for (j = 0; j < 210; j++)
      {
 G[i][j] = 0.0;
 for (k = 0; k < 190; ++k)
   G[i][j] += E[i][k] * F[k][j];
      }
#pragma endscop

}



{
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
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
