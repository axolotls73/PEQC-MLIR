void kernel_covariance(int m, int n,
         double float_n,
         double data[ 32 + 0][28 + 0],
         double cov[ 28 + 0][28 + 0],
         double mean[ 28 + 0])
{
  int i, j, k;

#pragma scop
  for (j = 0; j < 28; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 32; i++)
        mean[j] += data[i][j];
      mean[j] /= float_n;
    }

  for (i = 0; i < 32; i++)
    for (j = 0; j < 28; j++)
      data[i][j] -= mean[j];

  for (i = 0; i < 28; i++)
    for (j = i; j < 28; j++)
      {
        cov[i][j] = 0.0;
        for (k = 0; k < 32; k++)
   cov[i][j] += data[k][i] * data[k][j];
        cov[i][j] /= (float_n - 1.0);
        cov[j][i] = cov[i][j];
      }
#pragma endscop

}


