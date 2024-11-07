
#include <math.h>
void kernel_fdtd_2d(int tmax,
      int nx,
      int ny,
      double ex[ 200 + 0][240 + 0],
      double ey[ 200 + 0][240 + 0],
      double hz[ 200 + 0][240 + 0],
      double _fict_[ 100 + 0])
{
  int t, i, j;

#pragma scop

  for(t = 0; t < 100; t++)
    {
      for (j = 0; j < 240; j++)
 ey[0][j] = _fict_[t];
      for (i = 1; i < 200; i++)
 for (j = 0; j < 240; j++)
   ey[i][j] = ey[i][j] - 0.5*(hz[i][j]-hz[i-1][j]);
      for (i = 0; i < 200; i++)
 for (j = 1; j < 240; j++)
   ex[i][j] = ex[i][j] - 0.5*(hz[i][j]-hz[i][j-1]);
      for (i = 0; i < 200 - 1; i++)
 for (j = 0; j < 240 - 1; j++)
   hz[i][j] = hz[i][j] - 0.7* (ex[i][j+1] - ex[i][j] +
           ey[i+1][j] - ey[i][j]);
    }

#pragma endscop
}


