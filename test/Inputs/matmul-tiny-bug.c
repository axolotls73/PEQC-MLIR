#pragma pocc-region-start
void matmul_on_memref(int** A, int** B, int** C) {
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++){
      C[i][j] = 0;
      for (int k = 0; k < 10; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
  C[5][6] = 42;
}
{
  matmul_on_memref(A, B, C);
}
#pragma pocc-region-end