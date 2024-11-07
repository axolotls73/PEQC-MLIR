module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      %c0_10 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c22 step %c1_11 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    %c16_0 = arith.constant 16 : index
    %c18 = arith.constant 18 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c16_0 to %c18 step %c1_1 {
      %c0_10 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c22 step %c1_11 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c18_3 = arith.constant 18 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c18_3 step %c1_4 {
      %c0_10 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c24 step %c1_11 {
        %c0_12 = arith.constant 0 : index
        %c22 = arith.constant 22 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg14 = %c0_12 to %c22 step %c1_13 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
        }
      }
    }
    %c0_5 = arith.constant 0 : index
    %c16_6 = arith.constant 16 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg12 = %c0_5 to %c16_6 step %c1_7 {
      %c0_10 = arith.constant 0 : index
      %c18_11 = arith.constant 18 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c18_11 step %c1_12 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    %c0_8 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg12 = %c0_8 to %c2 step %c1_9 {
      %c0_10 = arith.constant 0 : index
      %0 = arith.cmpi eq, %arg12, %c0_10 : index
      scf.if %0 {
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg13 = %c0_12 to %c16_13 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c18_16 = arith.constant 18 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c18_16 step %c1_17 {
            %c0_18 = arith.constant 0 : index
            %c20 = arith.constant 20 : index
            %c1_19 = arith.constant 1 : index
            scf.for %arg15 = %c0_18 to %c20 step %c1_19 {
              %3 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %4 = memref.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %5 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              memref.store %7, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            %c19 = arith.constant 19 : index
            %c32 = arith.constant 32 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg15 = %c19 to %c32 step %c1_20 {
              %c-19 = arith.constant -19 : index
              %3 = arith.addi %arg15, %c-19 : index
              %4 = memref.load %arg11[%arg13, %3] : memref<?x22xf64>
              %5 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_21 = arith.constant -19 : index
              %6 = arith.addi %arg15, %c-19_21 : index
              %7 = memref.load %arg8[%arg14, %6] : memref<?x22xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %c-19_22 = arith.constant -19 : index
              %10 = arith.addi %arg15, %c-19_22 : index
              memref.store %9, %arg11[%arg13, %10] : memref<?x22xf64>
            }
          }
        }
      }
      %c0_11 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.addi %arg12, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0_11 : index
      scf.if %2 {
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg13 = %c0_12 to %c16_13 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c18_16 = arith.constant 18 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c18_16 step %c1_17 {
            %c32 = arith.constant 32 : index
            %c41 = arith.constant 41 : index
            %c1_18 = arith.constant 1 : index
            scf.for %arg15 = %c32 to %c41 step %c1_18 {
              %c-19 = arith.constant -19 : index
              %3 = arith.addi %arg15, %c-19 : index
              %4 = memref.load %arg11[%arg13, %3] : memref<?x22xf64>
              %5 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_19 = arith.constant -19 : index
              %6 = arith.addi %arg15, %c-19_19 : index
              %7 = memref.load %arg8[%arg14, %6] : memref<?x22xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %c-19_20 = arith.constant -19 : index
              %10 = arith.addi %arg15, %c-19_20 : index
              memref.store %9, %arg11[%arg13, %10] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

