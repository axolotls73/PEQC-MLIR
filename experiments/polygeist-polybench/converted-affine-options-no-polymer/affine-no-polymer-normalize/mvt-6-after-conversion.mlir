module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c40 step %c1 {
      scf.for %arg7 = %c0 to %c40 step %c1 {
        %0 = memref.load %arg1[%arg6] : memref<?xf64>
        %1 = memref.load %arg5[%arg6, %arg7] : memref<?x40xf64>
        %2 = memref.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg1[%arg6] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c40 step %c1 {
      scf.for %arg7 = %c0 to %c40 step %c1 {
        %0 = memref.load %arg2[%arg6] : memref<?xf64>
        %1 = memref.load %arg5[%arg7, %arg6] : memref<?x40xf64>
        %2 = memref.load %arg4[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
}

