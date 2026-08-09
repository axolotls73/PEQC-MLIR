
{
  int nr = 10;
  int nq = 8;
  int np = 12;
  double* A;
  double* C4;
  double* sum;

#pragma peqc async_execute
{
  kernel_doitgen(nr, nq, np, A, C4, sum);
}
}
