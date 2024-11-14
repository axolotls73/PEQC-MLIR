
#define expf exp
#define powf pow

#pragma pocc-region-start
void kernel_deriche(int w, int h, float alpha,
       float imgIn[ 720 + 0][480 + 0],
       float imgOut[ 720 + 0][480 + 0],
       float y1[ 720 + 0][480 + 0],
       float y2[ 720 + 0][480 + 0]) {
    int i,j;
    float xm1, tm1, ym1, ym2;
    float xp1, xp2;
    float tp1, tp2;
    float yp1, yp2;

    float k;
    float a1, a2, a3, a4, a5, a6, a7, a8;
    float b1, b2, c1, c2;

#pragma scop

   k = (1.0f - expf(-alpha)) * (1.0f - expf(-alpha)) /
        (((alpha * expf(-alpha) * 2.0f) + 1.0f) - expf(alpha * 2.0f));
   a1 = a5 = k;
   a2 = a6 = k*expf(-alpha)*(alpha-1.0f);
   a3 = a7 = k*expf(-alpha)*(alpha+1.0f);

   a4 = a8 = -k*expf(alpha * -2.0f);
   b1 = powf(2.0f,-alpha);

   b2 = -expf(alpha * -2.0f);
   c1 = c2 = 1;

   for (i=0; i<720; i++) {
        ym1 = 0.0f;
        ym2 = 0.0f;
        xm1 = 0.0f;
        for (j=0; j<480; j++) {
            y1[i][j] = a1*imgIn[i][j] + a2*xm1 + b1*ym1 + b2*ym2;
            xm1 = imgIn[i][j];
            ym2 = ym1;
            ym1 = y1[i][j];
        }
    }

    for (i=0; i<720; i++) {
        yp1 = 0.0f;
        yp2 = 0.0f;
        xp1 = 0.0f;
        xp2 = 0.0f;
        for (j=480 -1; j>=0; j--) {
            y2[i][j] = a3*xp1 + a4*xp2 + b1*yp1 + b2*yp2;
            xp2 = xp1;
            xp1 = imgIn[i][j];
            yp2 = yp1;
            yp1 = y2[i][j];
        }
    }

    for (i=0; i<720; i++)
        for (j=0; j<480; j++) {
            imgOut[i][j] = c1 * (y1[i][j] + y2[i][j]);
        }

    for (j=0; j<480; j++) {
        tm1 = 0.0f;
        ym1 = 0.0f;
        ym2 = 0.0f;
        for (i=0; i<720; i++) {
            y1[i][j] = a5*imgOut[i][j] + a6*tm1 + b1*ym1 + b2*ym2;
            tm1 = imgOut[i][j];
            ym2 = ym1;
            ym1 = y1 [i][j];
        }
    }


    for (j=0; j<480; j++) {
        tp1 = 0.0f;
        tp2 = 0.0f;
        yp1 = 0.0f;
        yp2 = 0.0f;
        for (i=720 -1; i>=0; i--) {
            y2[i][j] = a7*tp1 + a8*tp2 + b1*yp1 + b2*yp2;
            tp2 = tp1;
            tp1 = imgOut[i][j];
            yp2 = yp1;
            yp1 = y2[i][j];
        }
    }

    for (i=0; i<720; i++)
        for (j=0; j<480; j++)
            imgOut[i][j] = c2*(y1[i][j] + y2[i][j]);

#pragma endscop
}



{
  int w;
  int h;
  float alpha;
  float* imgIn;
  float* imgOut;
  float* y1;
  float* y2;


  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);

}
#pragma pocc-region-end
