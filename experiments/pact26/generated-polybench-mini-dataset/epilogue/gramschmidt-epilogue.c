
{
  int m = 20;
  int n = 30;
  double* A;
  double* R;
  double* Q;

#pragma peqc async_execute
{
  kernel_gramschmidt(m, n, A, R, Q);
}
}
