
{
  int m;
  int n;
  double float_n;
  double* data;
  double* corr;
  double* mean;
  double* stddev;

#pragma peqc async_execute
{
  kernel_correlation(m, n, float_n, data, corr, mean, stddev);
}
}
