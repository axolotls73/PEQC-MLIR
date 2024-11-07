module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c32 = arith.constant 32 : index
    scf.for %arg2 = %c0 to %c60 step %c32 {
      %c0_0 = arith.constant 0 : index
      %c60_1 = arith.constant 60 : index
      %c32_2 = arith.constant 32 : index
      scf.for %arg3 = %c0_0 to %c60_1 step %c32_2 {
        %c0_3 = arith.constant 0 : index
        %c60_4 = arith.constant 60 : index
        %c32_5 = arith.constant 32 : index
        scf.for %arg4 = %c0_3 to %c60_4 step %c32_5 {
          %c32_6 = arith.constant 32 : index
          %0 = arith.addi %arg2, %c32_6 : index
          %c60_7 = arith.constant 60 : index
          %1 = arith.minsi %0, %c60_7 : index
          %c1 = arith.constant 1 : index
          scf.for %arg5 = %arg2 to %1 step %c1 {
            %c32_8 = arith.constant 32 : index
            %2 = arith.addi %arg3, %c32_8 : index
            %c60_9 = arith.constant 60 : index
            %3 = arith.minsi %2, %c60_9 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg6 = %arg3 to %3 step %c1_10 {
              %c32_11 = arith.constant 32 : index
              %4 = arith.addi %arg4, %c32_11 : index
              %c60_12 = arith.constant 60 : index
              %5 = arith.minsi %4, %c60_12 : index
              %c1_13 = arith.constant 1 : index
              scf.for %arg7 = %arg4 to %5 step %c1_13 {
                %6 = memref.load %arg1[%arg6, %arg7] : memref<?x60xi32>
                %7 = memref.load %arg1[%arg6, %arg5] : memref<?x60xi32>
                %8 = memref.load %arg1[%arg5, %arg7] : memref<?x60xi32>
                %9 = arith.addi %7, %8 : i32
                %10 = arith.cmpi slt, %6, %9 : i32
                %11 = arith.select %10, %6, %9 : i32
                memref.store %11, %arg1[%arg6, %arg7] : memref<?x60xi32>
              }
            }
          }
        }
      }
    }
    return
  }
}

