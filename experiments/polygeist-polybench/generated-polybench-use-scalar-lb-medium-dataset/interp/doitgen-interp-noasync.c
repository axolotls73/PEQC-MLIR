#pragma pocc-region-start
void kernel_doitgen(int nr, int nq, int np,
      double A[ 50 + 0][40 + 0][60 + 0],
      double C4[ 60 + 0][60 + 0],
      double sum[ 60 + 0])
{
  int r, q, p, s;

#pragma scop
  for (r = 0; r < 50; r++)
    for (q = 0; q < 40; q++) {
      for (p = 0; p < 60; p++) {
 sum[p] = 0.0;
 for (s = 0; s < 60; s++)
   sum[p] += A[r][q][s] * C4[s][p];
      }
      for (p = 0; p < 60; p++)
 A[r][q][p] = sum[p];
    }
#pragma endscop

}



{
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}
#pragma pocc-region-end
