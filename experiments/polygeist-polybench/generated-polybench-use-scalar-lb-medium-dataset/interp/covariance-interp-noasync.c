
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_covariance(int m, int n,
         double float_n,
         double data[ 260 + 0][240 + 0],
         double cov[ 240 + 0][240 + 0],
         double mean[ 240 + 0])
{
  int i, j, k;

#pragma scop
  for (j = 0; j < 240; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 260; i++)
        mean[j] += data[i][j];
      mean[j] /= float_n;
    }

  for (i = 0; i < 260; i++)
    for (j = 0; j < 240; j++)
      data[i][j] -= mean[j];

  for (i = 0; i < 240; i++)
    for (j = i; j < 240; j++)
      {
        cov[i][j] = 0.0;
        for (k = 0; k < 260; k++)
   cov[i][j] += data[k][i] * data[k][j];
        cov[i][j] /= (float_n - 1.0);
        cov[j][i] = cov[i][j];
      }
#pragma endscop

}



{
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}
#pragma pocc-region-end
