{
  double* A;
  double* B;
  double* C;

#pragma peqc async_execute
{
  kernel_matmul(A, B, C);
}
}
