{
  double* input;
  double* filter;
  double* output;

#pragma peqc async_execute
{
  kernel_conv2d(input, filter, output);
}
}