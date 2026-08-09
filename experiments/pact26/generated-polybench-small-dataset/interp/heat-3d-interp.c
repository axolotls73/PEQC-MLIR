
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_heat_3d(int tsteps,
        int n,
        double A[ 20 + 0][20 + 0][20 + 0],
        double B[ 20 + 0][20 + 0][20 + 0])
{
  int t, i, j, k;

#pragma scop
    for (t = 1; t <= 40; t++) {
        for (i = 1; i < n-1; i++) {
            for (j = 1; j < n-1; j++) {
                for (k = 1; k < n-1; k++) {





                    B[i][j][k] = ((A[i+1][j][k] - (A[i][j][k] * 2.0) + A[i-1][j][k]) * 0.125)
                                + ((A[i][j+1][k] - (A[i][j][k] * 2.0) + A[i][j-1][k]) * 0.125)
                                + ((A[i][j][k+1] - (A[i][j][k] * 2.0) + A[i][j][k-1]) * 0.125)
                                + A[i][j][k];
                }
            }
        }
        for (i = 1; i < n-1; i++) {
           for (j = 1; j < n-1; j++) {
               for (k = 1; k < n-1; k++) {




                    A[i][j][k] = ((B[i+1][j][k] - (B[i][j][k] * 2.0) + B[i-1][j][k]) * 0.125)
                                + ((B[i][j+1][k] - (B[i][j][k] * 2.0) + B[i][j-1][k]) * 0.125)
                                + ((B[i][j][k+1] - (B[i][j][k] * 2.0) + B[i][j][k-1]) * 0.125)
                                + B[i][j][k];
               }
           }
       }
    }
#pragma endscop

}



{
  int tsteps = 40;
  int n = 20;
  double* A;
  double* B;


  kernel_heat_3d(tsteps, n, A, B);

}
#pragma pocc-region-end
