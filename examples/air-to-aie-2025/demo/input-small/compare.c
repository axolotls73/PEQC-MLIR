#pragma pocc-region-start
void forward(int** A, int** B, int** C, int N) {
  for (int i = 0; i < N; i++)
    for (int j = 0; j < N; j++){
      C[i][j] = 0;
      for (int k = 0; k < N; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
}
{
  float* A;
  float* B;
  float* C;
  forward(A, B, C, 16);
}
#pragma pocc-region-end
