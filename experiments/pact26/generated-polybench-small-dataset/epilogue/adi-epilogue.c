
{
  int tsteps = 40;
  int n = 60;
  double* u;
  double* v;
  double* p;
  double* q;

#pragma peqc async_execute
{
  kernel_adi(tsteps, n, u, v, p, q);
}
}
