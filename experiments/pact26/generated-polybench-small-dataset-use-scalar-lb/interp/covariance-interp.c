
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_covariance(int m, int n,
         double float_n,
         double data[ 100 + 0][80 + 0],
         double cov[ 80 + 0][80 + 0],
         double mean[ 80 + 0])
{
  int i, j, k;

#pragma scop
  for (j = 0; j < 80; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 100; i++)
        mean[j] += data[i][j];
      mean[j] /= float_n;
    }

  for (i = 0; i < 100; i++)
    for (j = 0; j < 80; j++)
      data[i][j] -= mean[j];

  for (i = 0; i < 80; i++)
    for (j = i; j < 80; j++)
      {
        cov[i][j] = 0.0;
        for (k = 0; k < 100; k++)
   cov[i][j] += data[k][i] * data[k][j];
        cov[i][j] /= (float_n - 1.0);
        cov[j][i] = cov[i][j];
      }
#pragma endscop

}



{
  int m = 80;
  int n = 100;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}
#pragma pocc-region-end
