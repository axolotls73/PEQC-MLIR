#pragma pocc-region-start
void kernel_bicg(int m, int n,
   double A[ 42 + 0][38 + 0],
   double s[ 38 + 0],
   double q[ 42 + 0],
   double p[ 38 + 0],
   double r[ 42 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 38; i++)
    s[i] = 0;
  for (i = 0; i < 42; i++)
    {
      q[i] = 0.0;
      for (j = 0; j < 38; j++)
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
