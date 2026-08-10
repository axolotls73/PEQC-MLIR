module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %alloc = memref.alloc() : memref<1x1xf64>
    %alloc_0 = memref.alloc() : memref<1x1xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c18 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg13 = %c0_3 to %c22 step %c1_4 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %c0_5 = arith.constant 0 : index
        %c24 = arith.constant 24 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg14 = %c0_5 to %c24 step %c1_6 {
          %0 = memref.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = memref.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    %c0_1 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg12 = %c0_1 to %c16 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c18_4 = arith.constant 18 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg13 = %c0_3 to %c18_4 step %c1_5 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        %c0_8 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg14 = %c0_8 to %c20 step %c1_9 {
          %0 = memref.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = memref.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
      %c0_6 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %c22 step %c1_7 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        %c0_8 = arith.constant 0 : index
        %c18_9 = arith.constant 18 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg14 = %c0_8 to %c18_9 step %c1_10 {
          %c0_11 = arith.constant 0 : index
          %c0_12 = arith.constant 0 : index
          memref.store %cst, %alloc[%c0_11, %c0_12] : memref<1x1xf64>
          %c0_13 = arith.constant 0 : index
          %c20 = arith.constant 20 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %c0_13 to %c20 step %c1_14 {
            %5 = memref.load %arg6[%arg12, %arg15] : memref<?x20xf64>
            %6 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
            %7 = arith.mulf %5, %6 : f64
            %c0_23 = arith.constant 0 : index
            %c0_24 = arith.constant 0 : index
            %8 = memref.load %alloc[%c0_23, %c0_24] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            %c0_25 = arith.constant 0 : index
            %c0_26 = arith.constant 0 : index
            memref.store %9, %alloc[%c0_25, %c0_26] : memref<1x1xf64>
          }
          %c0_15 = arith.constant 0 : index
          %c0_16 = arith.constant 0 : index
          memref.store %cst, %alloc_0[%c0_15, %c0_16] : memref<1x1xf64>
          %c0_17 = arith.constant 0 : index
          %c24 = arith.constant 24 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg15 = %c0_17 to %c24 step %c1_18 {
            %5 = memref.load %arg9[%arg14, %arg15] : memref<?x24xf64>
            %6 = memref.load %arg10[%arg15, %arg13] : memref<?x22xf64>
            %7 = arith.mulf %5, %6 : f64
            %c0_23 = arith.constant 0 : index
            %c0_24 = arith.constant 0 : index
            %8 = memref.load %alloc_0[%c0_23, %c0_24] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            %c0_25 = arith.constant 0 : index
            %c0_26 = arith.constant 0 : index
            memref.store %9, %alloc_0[%c0_25, %c0_26] : memref<1x1xf64>
          }
          %c0_19 = arith.constant 0 : index
          %c0_20 = arith.constant 0 : index
          %0 = memref.load %alloc[%c0_19, %c0_20] : memref<1x1xf64>
          %c0_21 = arith.constant 0 : index
          %c0_22 = arith.constant 0 : index
          %1 = memref.load %alloc_0[%c0_21, %c0_22] : memref<1x1xf64>
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

