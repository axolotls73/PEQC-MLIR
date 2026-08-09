
#define expf exp
#define powf pow

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

  for(t = 0; t < tmax; t++)
    {
      for (j = 0; j < ny; j++)
 ey[0][j] = _fict_[t];
      for (i = 1; i < nx; i++)
 for (j = 0; j < ny; j++)

   ey[i][j] = ey[i][j] - ((hz[i][j]-hz[i-1][j]) * 0.5);
      for (i = 0; i < nx; i++)
 for (j = 1; j < ny; j++)

   ex[i][j] = ex[i][j] - ((hz[i][j]-hz[i][j-1]) * 0.5);
      for (i = 0; i < nx - 1; i++)
 for (j = 0; j < ny - 1; j++)


   hz[i][j] = hz[i][j] - ((ex[i][j+1] - ex[i][j] + ey[i+1][j] - ey[i][j]) * 0.7);
    }

#pragma endscop
}



{
  int tmax = 20;
  int nx = 20;
  int ny = 30;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}
#pragma pocc-region-end
