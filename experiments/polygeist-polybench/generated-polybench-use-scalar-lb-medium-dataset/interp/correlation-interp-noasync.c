#pragma pocc-region-start
void kernel_correlation(int m, int n,
   double float_n,
   double data[ 260 + 0][240 + 0],
   double corr[ 240 + 0][240 + 0],
   double mean[ 240 + 0],
   double stddev[ 240 + 0])
{
  int i, j, k;

  double eps = 0.1;


#pragma scop
  for (j = 0; j < 240; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 260; i++)
 mean[j] += data[i][j];
      mean[j] /= float_n;
    }


   for (j = 0; j < 240; j++)
    {
      stddev[j] = 0.0;
      for (i = 0; i < 260; i++)
        stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
      stddev[j] /= float_n;
      stddev[j] = sqrt(stddev[j]);



      stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
    }


  for (i = 0; i < 260; i++)
    for (j = 0; j < 240; j++)
      {
        data[i][j] -= mean[j];
        data[i][j] /= sqrt(float_n) * stddev[j];
      }


  for (i = 0; i < 240 -1; i++)
    {
      corr[i][i] = 1.0;
      for (j = i+1; j < 240; j++)
        {
          corr[i][j] = 0.0;
          for (k = 0; k < 260; k++)
            corr[i][j] += (data[k][i] * data[k][j]);
          corr[j][i] = corr[i][j];
        }
    }
  corr[240 -1][240 -1] = 1.0;
#pragma endscop

}



{
  int m;
  int n;
  double float_n;
  double* data;
  double* corr;
  double* mean;
  double* stddev;


  kernel_correlation(m, n, float_n, data, corr, mean, stddev);

}
#pragma pocc-region-end
