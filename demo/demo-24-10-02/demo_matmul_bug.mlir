func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c0_i32 = arith.constant 0 : i32
    %i1 = arith.constant 0 : index
    %i2 = arith.constant 42 : index
    %0 = memref.alloc() : memref<128x128xi32>
    linalg.matmul ins(%arg0, %arg1 : memref<128x128xi32>, memref<128x128xi32>) outs(%0 : memref<128x128xi32>)
    memref.store %c0_i32, %0[%i1, %i2] : memref<128x128xi32>
    return %0 : memref<128x128xi32>
}