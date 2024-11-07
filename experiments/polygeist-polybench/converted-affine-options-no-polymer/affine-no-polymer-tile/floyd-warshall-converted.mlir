module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      scf.for %arg3 = %c0 to %c60 step %c1 {
        scf.for %arg4 = %c0 to %c60 step %c1 {
          %0 = arith.addi %arg2, %c1 : index
          scf.for %arg5 = %arg2 to %0 step %c1 {
            %1 = arith.addi %arg3, %c1 : index
            scf.for %arg6 = %arg3 to %1 step %c1 {
              %2 = arith.addi %arg4, %c1 : index
              scf.for %arg7 = %arg4 to %2 step %c1 {
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

