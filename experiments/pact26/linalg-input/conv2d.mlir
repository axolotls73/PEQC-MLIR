module {
  func.func @kernel_conv2d(%input: memref<18x18xf64>, %filter: memref<3x3xf64>, %output: memref<16x16xf64>) {
    linalg.conv_2d ins(%input, %filter : memref<18x18xf64>, memref<3x3xf64>)
                   outs(%output : memref<16x16xf64>)
    return
  }
}