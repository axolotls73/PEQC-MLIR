module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c20 = arith.constant 20 : index
    %c16 = arith.constant 16 : index
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c1 = arith.constant 1 : index
    %c18 = arith.constant 18 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloc = memref.alloc() : memref<1x1xf64>
    %alloc_0 = memref.alloc() : memref<1x1xf64>
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        scf.for %arg14 = %c0 to %c24 step %c1 {
          %0 = memref.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = memref.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c18 step %c1 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        scf.for %arg14 = %c0 to %c20 step %c1 {
          %0 = memref.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = memref.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        scf.for %arg14 = %c0 to %c18 step %c1 {
          memref.store %cst, %alloc[%c0, %c0] : memref<1x1xf64>
          scf.for %arg15 = %c0 to %c20 step %c1 {
            %5 = memref.load %arg6[%arg12, %arg15] : memref<?x20xf64>
            %6 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %alloc[%c0, %c0] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            memref.store %9, %alloc[%c0, %c0] : memref<1x1xf64>
          }
          memref.store %cst, %alloc_0[%c0, %c0] : memref<1x1xf64>
          scf.for %arg15 = %c0 to %c24 step %c1 {
            %5 = memref.load %arg9[%arg14, %arg15] : memref<?x24xf64>
            %6 = memref.load %arg10[%arg15, %arg13] : memref<?x22xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %alloc_0[%c0, %c0] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            memref.store %9, %alloc_0[%c0, %c0] : memref<1x1xf64>
          }
          %0 = memref.load %alloc[%c0, %c0] : memref<1x1xf64>
          %1 = memref.load %alloc_0[%c0, %c0] : memref<1x1xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    return
  }
}

