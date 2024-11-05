void kernel_correlation(int m, int n,
   double float_n,
   double data[ 32 + 0][28 + 0],
   double corr[ 28 + 0][28 + 0],
   double mean[ 28 + 0],
   double stddev[ 28 + 0])
{
  int i, j, k;

  double eps = 0.1;


#pragma scop
  for (j = 0; j < 28; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 32; i++)
 mean[j] += data[i][j];
      mean[j] /= float_n;
    }


   for (j = 0; j < 28; j++)
    {
      stddev[j] = 0.0;
      for (i = 0; i < 32; i++)
        stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
      stddev[j] /= float_n;
      stddev[j] = sqrt(stddev[j]);



      stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
    }


  for (i = 0; i < 32; i++)
    for (j = 0; j < 28; j++)
      {
        data[i][j] -= mean[j];
        data[i][j] /= sqrt(float_n) * stddev[j];
      }


  for (i = 0; i < 28 -1; i++)
    {
      corr[i][i] = 1.0;
      for (j = i+1; j < 28; j++)
        {
          corr[i][j] = 0.0;
          for (k = 0; k < 32; k++)
            corr[i][j] += (data[k][i] * data[k][j]);
          corr[j][i] = corr[i][j];
        }
    }
  corr[28 -1][28 -1] = 1.0;
#pragma endscop

}


