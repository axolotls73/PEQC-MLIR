#pragma pocc-region-start
void kernel_fdtd_2d(int tmax,
      int nx,
      int ny,
      double ex[ 20 + 0][30 + 0],
      double ey[ 20 + 0][30 + 0],
      double hz[ 20 + 0][30 + 0],
      double _fict_[ 20 + 0])
{
  int t, i, j;

#pragma scop

  for(t = 0; t < 20; t++)
    {
      for (j = 0; j < 30; j++)
 ey[0][j] = _fict_[t];
      for (i = 1; i < 20; i++)
 for (j = 0; j < 30; j++)
   ey[i][j] = ey[i][j] - 0.5*(hz[i][j]-hz[i-1][j]);
      for (i = 0; i < 20; i++)
 for (j = 1; j < 30; j++)
   ex[i][j] = ex[i][j] - 0.5*(hz[i][j]-hz[i][j-1]);
      for (i = 0; i < 20 - 1; i++)
 for (j = 0; j < 30 - 1; j++)
   hz[i][j] = hz[i][j] - 0.7* (ex[i][j+1] - ex[i][j] +
           ey[i+1][j] - ey[i][j]);
    }

#pragma endscop
}



{
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}
#pragma pocc-region-end
