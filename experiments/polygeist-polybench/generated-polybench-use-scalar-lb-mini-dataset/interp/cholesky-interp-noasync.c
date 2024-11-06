#pragma pocc-region-start
void kernel_cholesky(int n,
       double A[ 40 + 0][40 + 0])
{
  int i, j, k;


#pragma scop
  for (i = 0; i < 40; i++) {

     for (j = 0; j < i; j++) {
        for (k = 0; k < j; k++) {
           A[i][j] -= A[i][k] * A[j][k];
        }
        A[i][j] /= A[j][j];
     }

     for (k = 0; k < i; k++) {
        A[i][i] -= A[i][k] * A[i][k];
     }
     A[i][i] = sqrt(A[i][i]);
  }
#pragma endscop

}



{
  int n;
  double* A;


  kernel_cholesky(n, A);

}
#pragma pocc-region-end
