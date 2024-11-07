#pragma pocc-region-start
void kernel_bicg(int m, int n,
   double A[ 410 + 0][390 + 0],
   double s[ 390 + 0],
   double q[ 410 + 0],
   double p[ 390 + 0],
   double r[ 410 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 390; i++)
    s[i] = 0;
  for (i = 0; i < 410; i++)
    {
      q[i] = 0.0;
      for (j = 0; j < 390; j++)
 {
   s[j] = s[j] + r[i] * A[i][j];
   q[i] = q[i] + A[i][j] * p[j];
 }
    }
#pragma endscop

}



{
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;

#pragma peqc async_execute
{
  kernel_bicg(m, n, A, s, q, p, r);
}
}
#pragma pocc-region-end
