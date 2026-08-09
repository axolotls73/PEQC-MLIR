
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_lu(int n,
        double A[ 40 + 0][40 + 0])
{
  int i, j, k;

#pragma scop
  for (i = 0; i < 40; i++) {
    for (j = 0; j <i; j++) {
       for (k = 0; k < j; k++) {
          A[i][j] -= A[i][k] * A[k][j];
       }
        A[i][j] /= A[j][j];
    }
   for (j = i; j < 40; j++) {
       for (k = 0; k < i; k++) {
          A[i][j] -= A[i][k] * A[k][j];
       }
    }
  }
#pragma endscop
}



{
  int n;
  double* A;


  kernel_lu(n, A);

}
#pragma pocc-region-end
