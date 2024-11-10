module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %alloc = memref.alloc() : memref<1x1xf64>
    %alloc_0 = memref.alloc() : memref<1x1xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c32 = arith.constant 32 : index
    scf.for %arg12 = %c0 to %c18 step %c32 {
      %c0_3 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c32_4 = arith.constant 32 : index
      scf.for %arg13 = %c0_3 to %c22 step %c32_4 {
        %c18_5 = arith.constant 18 : index
        %0 = arith.addi %arg12, %c18_5 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %c22_6 = arith.constant 22 : index
          %1 = arith.addi %arg13, %c22_6 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg15 = %arg13 to %1 step %c1_7 {
            memref.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
            %c0_8 = arith.constant 0 : index
            %c24 = arith.constant 24 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg16 = %c0_8 to %c24 step %c1_9 {
              %2 = memref.load %arg9[%arg14, %arg16] : memref<?x24xf64>
              %3 = memref.load %arg10[%arg16, %arg15] : memref<?x22xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = memref.load %arg8[%arg14, %arg15] : memref<?x22xf64>
              %6 = arith.addf %5, %4 : f64
              memref.store %6, %arg8[%arg14, %arg15] : memref<?x22xf64>
            }
          }
        }
      }
    }
    %c0_1 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg12 = %c0_1 to %c16 step %c32_2 {
      %c16_3 = arith.constant 16 : index
      %0 = arith.addi %arg12, %c16_3 : index
      %c1 = arith.constant 1 : index
      scf.for %arg13 = %arg12 to %0 step %c1 {
        %c0_4 = arith.constant 0 : index
        %c18_5 = arith.constant 18 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg14 = %c0_4 to %c18_5 step %c1_6 {
          memref.store %cst, %arg5[%arg13, %arg14] : memref<?x18xf64>
          %c0_9 = arith.constant 0 : index
          %c20 = arith.constant 20 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg15 = %c0_9 to %c20 step %c1_10 {
            %1 = memref.load %arg6[%arg13, %arg15] : memref<?x20xf64>
            %2 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %5 = arith.addf %4, %3 : f64
            memref.store %5, %arg5[%arg13, %arg14] : memref<?x18xf64>
          }
        }
        %c0_7 = arith.constant 0 : index
        %c22 = arith.constant 22 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg14 = %c0_7 to %c22 step %c1_8 {
          memref.store %cst, %arg11[%arg13, %arg14] : memref<?x22xf64>
          %c0_9 = arith.constant 0 : index
          %c18_10 = arith.constant 18 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg15 = %c0_9 to %c18_10 step %c1_11 {
            %c0_12 = arith.constant 0 : index
            %c0_13 = arith.constant 0 : index
            memref.store %cst, %alloc[%c0_12, %c0_13] : memref<1x1xf64>
            %c0_14 = arith.constant 0 : index
            %c20 = arith.constant 20 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg16 = %c0_14 to %c20 step %c1_15 {
              %6 = memref.load %arg6[%arg13, %arg16] : memref<?x20xf64>
              %7 = memref.load %arg7[%arg16, %arg15] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %c0_24 = arith.constant 0 : index
              %c0_25 = arith.constant 0 : index
              %9 = memref.load %alloc[%c0_24, %c0_25] : memref<1x1xf64>
              %10 = arith.addf %9, %8 : f64
              %c0_26 = arith.constant 0 : index
              %c0_27 = arith.constant 0 : index
              memref.store %10, %alloc[%c0_26, %c0_27] : memref<1x1xf64>
            }
            %c0_16 = arith.constant 0 : index
            %c0_17 = arith.constant 0 : index
            memref.store %cst, %alloc_0[%c0_16, %c0_17] : memref<1x1xf64>
            %c0_18 = arith.constant 0 : index
            %c24 = arith.constant 24 : index
            %c1_19 = arith.constant 1 : index
            scf.for %arg16 = %c0_18 to %c24 step %c1_19 {
              %6 = memref.load %arg9[%arg15, %arg16] : memref<?x24xf64>
              %7 = memref.load %arg10[%arg16, %arg14] : memref<?x22xf64>
              %8 = arith.mulf %6, %7 : f64
              %c0_24 = arith.constant 0 : index
              %c0_25 = arith.constant 0 : index
              %9 = memref.load %alloc_0[%c0_24, %c0_25] : memref<1x1xf64>
              %10 = arith.addf %9, %8 : f64
              %c0_26 = arith.constant 0 : index
              %c0_27 = arith.constant 0 : index
              memref.store %10, %alloc_0[%c0_26, %c0_27] : memref<1x1xf64>
            }
            %c0_20 = arith.constant 0 : index
            %c0_21 = arith.constant 0 : index
            %1 = memref.load %alloc[%c0_20, %c0_21] : memref<1x1xf64>
            %c0_22 = arith.constant 0 : index
            %c0_23 = arith.constant 0 : index
            %2 = memref.load %alloc_0[%c0_22, %c0_23] : memref<1x1xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = memref.load %arg11[%arg13, %arg14] : memref<?x22xf64>
            %5 = arith.addf %4, %3 : f64
            memref.store %5, %arg11[%arg13, %arg14] : memref<?x22xf64>
          }
        }
      }
    }
    return
  }
}

