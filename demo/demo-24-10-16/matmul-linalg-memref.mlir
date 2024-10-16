func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloc() : memref<128x128xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%0 : memref<128x128xi32>)
    linalg.matmul ins(%arg0, %arg1 : memref<128x128xi32>, memref<128x128xi32>) outs(%0 : memref<128x128xi32>)
    return %0 : memref<128x128xi32>
}