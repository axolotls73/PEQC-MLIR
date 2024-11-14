
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_durbin(int n,
     double r[ 400 + 0],
     double y[ 400 + 0])
{
 double z[400];
 double alpha;
 double beta;
 double sum;

 int i,k;

#pragma scop
 y[0] = -r[0];
 beta = 1.0;
 alpha = -r[0];

 for (k = 1; k < 400; k++) {
   beta = (1-alpha*alpha)*beta;
   sum = 0.0;
   for (i=0; i<k; i++) {
      sum += r[k-i-1]*y[i];
   }
   alpha = - (r[k] + sum)/beta;

   for (i=0; i<k; i++) {
      z[i] = y[i] + alpha*y[k-i-1];
   }
   for (i=0; i<k; i++) {
     y[i] = z[i];
   }
   y[k] = alpha;
 }
#pragma endscop

}



{
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}
#pragma pocc-region-end
