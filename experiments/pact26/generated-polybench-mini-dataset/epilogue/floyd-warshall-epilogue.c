
{
  int n = 60;
  int* path;

#pragma peqc async_execute
{
  kernel_floyd_warshall(n, path);
}
}
