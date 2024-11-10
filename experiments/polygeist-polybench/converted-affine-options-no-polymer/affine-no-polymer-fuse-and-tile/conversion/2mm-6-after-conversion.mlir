module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c18 = arith.constant 18 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloc = memref.alloc() : memref<1x1xf64>
    scf.for %arg11 = %c0 to %c16 step %c32 {
      %0 = arith.addi %arg11, %c16 : index
      scf.for %arg12 = %arg11 to %0 step %c1 {
        scf.for %arg13 = %c0 to %c18 step %c1 {
          memref.store %cst, %arg6[%arg12, %arg13] : memref<?x18xf64>
          scf.for %arg14 = %c0 to %c22 step %c1 {
            %1 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
            %2 = arith.mulf %arg4, %1 : f64
            %3 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %6 = arith.addf %5, %4 : f64
            memref.store %6, %arg6[%arg12, %arg13] : memref<?x18xf64>
          }
        }
        scf.for %arg13 = %c0 to %c24 step %c1 {
          %1 = memref.load %arg10[%arg12, %arg13] : memref<?x24xf64>
          %2 = arith.mulf %1, %arg5 : f64
          memref.store %2, %arg10[%arg12, %arg13] : memref<?x24xf64>
          scf.for %arg14 = %c0 to %c18 step %c1 {
            memref.store %cst, %alloc[%c0, %c0] : memref<1x1xf64>
            scf.for %arg15 = %c0 to %c22 step %c1 {
              %8 = memref.load %arg7[%arg12, %arg15] : memref<?x22xf64>
              %9 = arith.mulf %arg4, %8 : f64
              %10 = memref.load %arg8[%arg15, %arg14] : memref<?x18xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = memref.load %alloc[%c0, %c0] : memref<1x1xf64>
              %13 = arith.addf %12, %11 : f64
              memref.store %13, %alloc[%c0, %c0] : memref<1x1xf64>
            }
            %3 = memref.load %alloc[%c0, %c0] : memref<1x1xf64>
            %4 = memref.load %arg9[%arg14, %arg13] : memref<?x24xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = memref.load %arg10[%arg12, %arg13] : memref<?x24xf64>
            %7 = arith.addf %6, %5 : f64
            memref.store %7, %arg10[%arg12, %arg13] : memref<?x24xf64>
          }
        }
      }
    }
    return
  }
}

