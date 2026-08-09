
{
  int w;
  int h;
  float alpha;
  float* imgIn;
  float* imgOut;
  float* y1;
  float* y2;

#pragma peqc async_execute
{
  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);
}
}
