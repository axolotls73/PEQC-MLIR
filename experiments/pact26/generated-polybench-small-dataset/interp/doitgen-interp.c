
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_doitgen(int nr, int nq, int np,
      double A[ 25 + 0][20 + 0][30 + 0],
      double C4[ 30 + 0][30 + 0],
      double sum[ 30 + 0])
{
  int r, q, p, s;

#pragma scop
  for (r = 0; r < nr; r++)
    for (q = 0; q < nq; q++) {
      for (p = 0; p < np; p++) {
 sum[p] = 0.0;
 for (s = 0; s < np; s++)
   sum[p] += A[r][q][s] * C4[s][p];
      }
      for (p = 0; p < np; p++)
 A[r][q][p] = sum[p];
    }
#pragma endscop

}



{
  int nr = 25;
  int nq = 20;
  int np = 30;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}
#pragma pocc-region-end
