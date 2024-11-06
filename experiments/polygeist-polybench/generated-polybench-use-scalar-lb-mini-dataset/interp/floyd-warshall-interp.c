#pragma pocc-region-start
void kernel_floyd_warshall(int n,
      int path[ 60 + 0][60 + 0])
{
  int i, j, k;

#pragma scop
  for (k = 0; k < 60; k++)
    {
      for(i = 0; i < 60; i++)
 for (j = 0; j < 60; j++)
   path[i][j] = path[i][j] < path[i][k] + path[k][j] ?
     path[i][j] : path[i][k] + path[k][j];
    }
#pragma endscop

}



{
  int n;
  int* path;

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}
#pragma pocc-region-end
