#pragma pocc-region-start
void matmul(int** A, int** B, int** func_arg_ret_2) {
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++)
      for (int k = 0; k < 10; k++)
        func_arg_ret_2[i][j] += A[i][k] * B[k][j];
}
{
  matmul(A, B, func_arg_ret_2);
}
#pragma pocc-region-end