
#include <math.h>
void kernel_nussinov(int n, base seq[ 60 + 0],
      int table[ 60 + 0][60 + 0])
{
  int i, j, k;

#pragma scop
 for (i = 60 -1; i >= 0; i--) {
  for (j=i+1; j<60; j++) {

   if (j-1>=0)
      table[i][j] = ((table[i][j] >= table[i][j-1]) ? table[i][j] : table[i][j-1]);
   if (i+1<60)
      table[i][j] = ((table[i][j] >= table[i+1][j]) ? table[i][j] : table[i+1][j]);

   if (j-1>=0 && i+1<60) {

     if (i<j-1)
        table[i][j] = ((table[i][j] >= table[i+1][j-1]+(((seq[i])+(seq[j])) == 3 ? 1 : 0)) ? table[i][j] : table[i+1][j-1]+(((seq[i])+(seq[j])) == 3 ? 1 : 0));
     else
        table[i][j] = ((table[i][j] >= table[i+1][j-1]) ? table[i][j] : table[i+1][j-1]);
   }

   for (k=i+1; k<j; k++) {
      table[i][j] = ((table[i][j] >= table[i][k] + table[k+1][j]) ? table[i][j] : table[i][k] + table[k+1][j]);
   }
  }
 }
#pragma endscop

}


