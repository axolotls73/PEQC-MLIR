
{
  int tmax = 20;
  int nx = 20;
  int ny = 30;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}
