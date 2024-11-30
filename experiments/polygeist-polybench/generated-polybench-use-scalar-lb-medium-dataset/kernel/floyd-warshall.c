
#include <math.h>
void kernel_floyd_warshall(int n,
      int path[ 180 + 0][180 + 0])
{
  int i, j, k;

#pragma scop
  for (k = 0; k < 180; k++)
    {
      for(i = 0; i < 180; i++)
 for (j = 0; j < 180; j++)
   path[i][j] = path[i][j] < path[i][k] + path[k][j] ?
     path[i][j] : path[i][k] + path[k][j];
    }
#pragma endscop

}


