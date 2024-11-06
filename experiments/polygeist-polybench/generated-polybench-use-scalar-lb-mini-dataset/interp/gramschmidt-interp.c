#pragma pocc-region-start
void kernel_gramschmidt(int m, int n,
   double A[ 20 + 0][30 + 0],
   double R[ 30 + 0][30 + 0],
   double Q[ 20 + 0][30 + 0])
{
  int i, j, k;

  double nrm;

#pragma scop
  for (k = 0; k < 30; k++)
    {
      nrm = 0.0;
      for (i = 0; i < 20; i++)
        nrm += A[i][k] * A[i][k];
      R[k][k] = sqrt(nrm);
      for (i = 0; i < 20; i++)
        Q[i][k] = A[i][k] / R[k][k];
      for (j = k + 1; j < 30; j++)
 {
   R[k][j] = 0.0;
   for (i = 0; i < 20; i++)
     R[k][j] += Q[i][k] * A[i][j];
   for (i = 0; i < 20; i++)
     A[i][j] = A[i][j] - Q[i][k] * R[k][j];
 }
    }
#pragma endscop

}



{
  int m;
  int n;
  double* A;
  double* R;
  double* Q;

#pragma peqc async_execute
{
  kernel_gramschmidt(m, n, A, R, Q);
}
}
#pragma pocc-region-end
