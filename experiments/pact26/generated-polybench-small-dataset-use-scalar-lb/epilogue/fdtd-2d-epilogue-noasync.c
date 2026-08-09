
{
  int tmax = 40;
  int nx = 60;
  int ny = 80;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}
