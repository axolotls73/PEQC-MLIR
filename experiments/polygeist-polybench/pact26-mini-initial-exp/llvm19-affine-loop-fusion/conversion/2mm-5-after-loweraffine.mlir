module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %alloc = memref.alloc() : memref<1x1xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c18 = arith.constant 18 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg12 = %c0_0 to %c18 step %c1_1 {
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        %c0_4 = arith.constant 0 : index
        %c22 = arith.constant 22 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg13 = %c0_4 to %c22 step %c1_5 {
          %0 = memref.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = memref.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
        }
      }
      %c0_2 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg12 = %c0_2 to %c24 step %c1_3 {
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        %c0_4 = arith.constant 0 : index
        %c18_5 = arith.constant 18 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg13 = %c0_4 to %c18_5 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c0_8 = arith.constant 0 : index
          memref.store %cst, %alloc[%c0_7, %c0_8] : memref<1x1xf64>
          %c0_9 = arith.constant 0 : index
          %c22 = arith.constant 22 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg14 = %c0_9 to %c22 step %c1_10 {
            %7 = memref.load %arg7[%arg11, %arg14] : memref<?x22xf64>
            %8 = arith.mulf %arg4, %7 : f64
            %9 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
            %10 = arith.mulf %8, %9 : f64
            %c0_13 = arith.constant 0 : index
            %c0_14 = arith.constant 0 : index
            %11 = memref.load %alloc[%c0_13, %c0_14] : memref<1x1xf64>
            %12 = arith.addf %11, %10 : f64
            %c0_15 = arith.constant 0 : index
            %c0_16 = arith.constant 0 : index
            memref.store %12, %alloc[%c0_15, %c0_16] : memref<1x1xf64>
          }
          %c0_11 = arith.constant 0 : index
          %c0_12 = arith.constant 0 : index
          %2 = memref.load %alloc[%c0_11, %c0_12] : memref<1x1xf64>
          %3 = memref.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
      }
    }
    return
  }
}

