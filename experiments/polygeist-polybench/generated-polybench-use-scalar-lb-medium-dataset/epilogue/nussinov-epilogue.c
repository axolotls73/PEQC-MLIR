
{
  int n;
  base* seq;
  int* table;

#pragma peqc async_execute
{
  kernel_nussinov(n, seq, table);
}
}
