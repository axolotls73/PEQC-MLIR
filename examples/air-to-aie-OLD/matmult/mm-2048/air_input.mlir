module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>) -> memref<2048x2048xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<2048x2048xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%alloc : memref<2048x2048xi32>)
    linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%arg0, %arg1 : memref<2048x2048xi32>, memref<2048x2048xi32>) outs(%alloc : memref<2048x2048xi32>)
    return %alloc : memref<2048x2048xi32>
  }
}
