module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    %c0_0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c128 step %c1 {
      %c0_1 = arith.constant 0 : index
      %c128_2 = arith.constant 128 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg3 = %c0_1 to %c128_2 step %c1_3 {
        %c0_4 = arith.constant 0 : index
        %c128_5 = arith.constant 128 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg4 = %c0_4 to %c128_5 step %c1_6 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<128x128xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<128x128xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<128x128xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<128x128xi32>
        }
      }
    }
    memref.store %c0_i32, %alloc[%c0, %c42] : memref<128x128xi32>
    return %alloc : memref<128x128xi32>
  }
}

