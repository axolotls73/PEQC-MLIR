
#include <math.h>
void kernel_correlation(int m, int n,
   double float_n,
   double data[ 100 + 0][80 + 0],
   double corr[ 80 + 0][80 + 0],
   double mean[ 80 + 0],
   double stddev[ 80 + 0])
{
  int i, j, k;

  double eps = 0.1;


#pragma scop
  for (j = 0; j < 80; j++)
    {
      mean[j] = 0.0;
      for (i = 0; i < 100; i++)
 mean[j] += data[i][j];
      mean[j] /= float_n;
    }


   for (j = 0; j < 80; j++)
    {
      stddev[j] = 0.0;
      for (i = 0; i < 100; i++)
        stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
      stddev[j] /= float_n;
      stddev[j] = sqrt(stddev[j]);



      stddev[j] = stddev[j] <= eps ? 1.0 : stddev[j];
    }


  for (i = 0; i < 100; i++)
    for (j = 0; j < 80; j++)
      {
        data[i][j] -= mean[j];
        data[i][j] /= sqrt(float_n) * stddev[j];
      }


  for (i = 0; i < 80 -1; i++)
    {
      corr[i][i] = 1.0;
      for (j = i+1; j < 80; j++)
        {
          corr[i][j] = 0.0;
          for (k = 0; k < 100; k++)
            corr[i][j] += (data[k][i] * data[k][j]);
          corr[j][i] = corr[i][j];
        }
    }
  corr[80 -1][80 -1] = 1.0;
#pragma endscop

}


