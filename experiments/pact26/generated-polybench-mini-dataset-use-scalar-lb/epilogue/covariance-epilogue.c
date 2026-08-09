
{
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;

#pragma peqc async_execute
{
  kernel_covariance(m, n, float_n, data, cov, mean);
}
}
