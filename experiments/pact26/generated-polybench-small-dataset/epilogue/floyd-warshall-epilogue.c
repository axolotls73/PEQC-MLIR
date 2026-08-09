
{
  int n = 180;
  int* path;

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}
