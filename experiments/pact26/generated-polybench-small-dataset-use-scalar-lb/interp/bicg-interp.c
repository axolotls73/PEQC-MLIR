
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_bicg(int m, int n,
   double A[ 124 + 0][116 + 0],
   double s[ 116 + 0],
   double q[ 124 + 0],
   double p[ 116 + 0],
   double r[ 124 + 0])
{
  int i, j;

#pragma scop
  for (i = 0; i < 116; i++)
    s[i] = 0.0;
  for (i = 0; i < 124; i++)
    {
      q[i] = 0.0;
      for (j = 0; j < 116; j++)
 {
   s[j] = s[j] + r[i] * A[i][j];
   q[i] = q[i] + A[i][j] * p[j];
 }
    }
#pragma endscop

}



{
  int m = 116;
  int n = 124;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;


  kernel_bicg(m, n, A, s, q, p, r);

}
#pragma pocc-region-end
