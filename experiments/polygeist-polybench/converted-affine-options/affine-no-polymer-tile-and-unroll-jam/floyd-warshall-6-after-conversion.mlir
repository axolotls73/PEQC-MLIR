module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c32 = arith.constant 32 : index
    scf.for %arg2 = %c0 to %c60 step %c32 {
      scf.for %arg3 = %c0 to %c60 step %c32 {
        scf.for %arg4 = %c0 to %c60 step %c32 {
          %0 = arith.addi %arg2, %c32 : index
          %1 = arith.minsi %0, %c60 : index
          scf.for %arg5 = %arg2 to %1 step %c1 {
            %2 = arith.addi %arg3, %c32 : index
            %3 = arith.minsi %2, %c60 : index
            scf.for %arg6 = %arg3 to %3 step %c1 {
              %4 = arith.addi %arg4, %c32 : index
              %5 = arith.minsi %4, %c60 : index
              scf.for %arg7 = %arg4 to %5 step %c1 {
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

