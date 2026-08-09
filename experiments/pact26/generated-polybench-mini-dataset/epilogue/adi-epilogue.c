
{
  int tsteps = 20;
  int n = 20;
  double* u;
  double* v;
  double* p;
  double* q;

#pragma peqc async_execute
{
  kernel_adi(tsteps, n, u, v, p, q);
}
}
