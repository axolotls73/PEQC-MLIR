module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c60_1 = arith.constant 60 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %c60_1 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c60_4 = arith.constant 60 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %c60_4 step %c1_5 {
          %c1_6 = arith.constant 1 : index
          %0 = arith.addi %arg2, %c1_6 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg5 = %arg2 to %0 step %c1_7 {
            %c1_8 = arith.constant 1 : index
            %1 = arith.addi %arg3, %c1_8 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg6 = %arg3 to %1 step %c1_9 {
              %c1_10 = arith.constant 1 : index
              %2 = arith.addi %arg4, %c1_10 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg7 = %arg4 to %2 step %c1_11 {
                %3 = memref.load %arg1[%arg6, %arg7] : memref<?x60xi32>
                %4 = memref.load %arg1[%arg6, %arg5] : memref<?x60xi32>
                %5 = memref.load %arg1[%arg5, %arg7] : memref<?x60xi32>
                %6 = arith.addi %4, %5 : i32
                %7 = arith.cmpi slt, %3, %6 : i32
                %8 = arith.select %7, %3, %6 : i32
                memref.store %8, %arg1[%arg6, %arg7] : memref<?x60xi32>
              }
            }
          }
        }
      }
    }
    return
  }
}

