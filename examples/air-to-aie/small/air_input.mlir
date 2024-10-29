module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%alloc : memref<16x16xi32>)
    linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%arg0, %arg1 : memref<16x16xi32>, memref<16x16xi32>) outs(%alloc : memref<16x16xi32>)
    return %alloc : memref<16x16xi32>
  }
}
