module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg6] : memref<?xf64>
    }
    scf.for %arg6 = %c0 to %c38 step %c1 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      scf.for %arg7 = %c0 to %c42 step %c1 {
        %0 = memref.load %arg5[%arg6] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg5[%arg6] : memref<?xf64>
      }
      scf.for %arg7 = %c0 to %c42 step %c1 {
        %0 = memref.load %arg4[%arg7] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg5[%arg6] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

