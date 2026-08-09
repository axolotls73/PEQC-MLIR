module {
  func.func @kernel_matmul(%A: memref<16x16xf64>, %B: memref<16x16xf64>, %C: memref<16x16xf64>) {
    linalg.matmul ins(%A, %B : memref<16x16xf64>, memref<16x16xf64>)
                  outs(%C : memref<16x16xf64>)
    return
  }
}