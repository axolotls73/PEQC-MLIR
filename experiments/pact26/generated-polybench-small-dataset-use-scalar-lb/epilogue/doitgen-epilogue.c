
{
  int nr = 25;
  int nq = 20;
  int np = 30;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}
