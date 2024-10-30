// RUN: split-file %s %t && \
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %t/input.mlir > %t/input-lowered.mlir
// RUN: verif-opt --verif-dma-to-memref --verif-scf-parallel-to-async %t/input-lowered.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c %testroot/..

// RUN: %pastchecker %t/translation.c %t/translation.c A,B,C | grep YES

// COM: weird stride 16 in dma_memcpy?
// RUN: %pastchecker %t/translation.c %t/compare.c A,B,C 2>&1 | grep YES

//--- input.mlir

module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c16, %c16) step (%c4, %c4) {
      %subview = memref.subview %arg0[%arg2, 0] [4, 16] [1, 1] : memref<16x16xi32> to memref<4x16xi32, strided<[16, 1], offset: ?>>
      %subview_0 = memref.subview %arg1[0, %arg3] [16, 4] [1, 1] : memref<16x16xi32> to memref<16x4xi32, strided<[16, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg2, %arg3] [4, 4] [1, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      %alloc_2 = memref.alloc() : memref<4x4xi32, 1>
      linalg.fill ins(%c0_i32 : i32) outs(%alloc_2 : memref<4x4xi32, 1>)
      linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%subview, %subview_0 : memref<4x16xi32, strided<[16, 1], offset: ?>>, memref<16x4xi32, strided<[16, 1], offset: ?>>) outs(%alloc_2 : memref<4x4xi32, 1>)
      %c4_3 = arith.constant 4 : index
      %c4_4 = arith.constant 4 : index
      %c16_5 = arith.constant 16 : index
      %c1 = arith.constant 1 : index
      air.dma_memcpy_nd (%alloc[%arg2, %arg3] [%c4_3, %c4_4] [%c16_5, %c1], %alloc_2[] [] []) {id = 1 : i32} : (memref<16x16xi32>, memref<4x4xi32, 1>)
      memref.dealloc %alloc_2 : memref<4x4xi32, 1>
      scf.reduce
    }
    return %alloc : memref<16x16xi32>
  }
}

//--- epilogue.c

{
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}


//--- compare.c

#pragma pocc-region-start
void forward(int** A, int** B, int** C, int N) {
  for (int i = 0; i < N; i++)
    for (int j = 0; j < N; j++){
      C[i][j] = 0;
      for (int k = 0; k < N; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
}
{
  float* A;
  float* B;
  float* C;
  forward(A, B, C, 16);
}
#pragma pocc-region-end
