#pragma pocc-region-start
int* arg0;
int* arg1;
int* arg2;
{
  for (int i = 0; i < 16; i++)
    for (int j = 0; j < 16; j++){
      arg2[i * 16 + j] = 0;
      for (int k = 0; k < 16; k++)
        arg2[i * 16 + j] += arg0[i * 16 + k] * arg1[k * 16 + j];
    }
}
#pragma pocc-region-end
