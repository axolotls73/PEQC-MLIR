#pragma pocc-region-start
void kernel_heat_3d(int tsteps,
        int n,
        double A[ 40 + 0][40 + 0][40 + 0],
        double B[ 40 + 0][40 + 0][40 + 0])
{
  int t, i, j, k;

#pragma scop
    for (t = 1; t <= 100; t++) {
        for (i = 1; i < 40 -1; i++) {
            for (j = 1; j < 40 -1; j++) {
                for (k = 1; k < 40 -1; k++) {
                    B[i][j][k] = 0.125 * (A[i+1][j][k] - 2.0 * A[i][j][k] + A[i-1][j][k])
                                 + 0.125 * (A[i][j+1][k] - 2.0 * A[i][j][k] + A[i][j-1][k])
                                 + 0.125 * (A[i][j][k+1] - 2.0 * A[i][j][k] + A[i][j][k-1])
                                 + A[i][j][k];
                }
            }
        }
        for (i = 1; i < 40 -1; i++) {
           for (j = 1; j < 40 -1; j++) {
               for (k = 1; k < 40 -1; k++) {
                   A[i][j][k] = 0.125 * (B[i+1][j][k] - 2.0 * B[i][j][k] + B[i-1][j][k])
                                + 0.125 * (B[i][j+1][k] - 2.0 * B[i][j][k] + B[i][j-1][k])
                                + 0.125 * (B[i][j][k+1] - 2.0 * B[i][j][k] + B[i][j][k-1])
                                + B[i][j][k];
               }
           }
       }
    }
#pragma endscop

}



{
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_heat_3d(tsteps, n, A, B);

}
#pragma pocc-region-end
