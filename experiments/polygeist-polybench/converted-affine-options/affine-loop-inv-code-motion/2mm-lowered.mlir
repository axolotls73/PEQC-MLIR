module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c18 = arith.constant 18 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg12 = %c0_2 to %c18 step %c1_3 {
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      %c18_4 = arith.constant 18 : index
      %c24 = arith.constant 24 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg12 = %c18_4 to %c24 step %c1_5 {
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg11 = %c0_0 to %c2 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %0 = arith.cmpi eq, %arg11, %c0_2 : index
      scf.if %0 {
        %c0_4 = arith.constant 0 : index
        %c16_5 = arith.constant 16 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg12 = %c0_4 to %c16_5 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c18 = arith.constant 18 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c18 step %c1_8 {
            %c0_9 = arith.constant 0 : index
            %c22 = arith.constant 22 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg14 = %c0_9 to %c22 step %c1_10 {
              %4 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %5 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %6 = arith.mulf %arg4, %5 : f64
              %7 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %4, %8 : f64
              memref.store %9, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %c21 = arith.constant 21 : index
            %c32 = arith.constant 32 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg14 = %c21 to %c32 step %c1_11 {
              %c-21 = arith.constant -21 : index
              %4 = arith.addi %arg14, %c-21 : index
              %5 = memref.load %arg10[%arg12, %4] : memref<?x24xf64>
              %c-21_12 = arith.constant -21 : index
              %6 = arith.addi %arg14, %c-21_12 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %3, %7 : f64
              %9 = arith.addf %5, %8 : f64
              %c-21_13 = arith.constant -21 : index
              %10 = arith.addi %arg14, %c-21_13 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
            }
          }
        }
      }
      %c0_3 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.addi %arg11, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0_3 : index
      scf.if %2 {
        %c0_4 = arith.constant 0 : index
        %c16_5 = arith.constant 16 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg12 = %c0_4 to %c16_5 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c18 = arith.constant 18 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c18 step %c1_8 {
            %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %c32 = arith.constant 32 : index
            %c45 = arith.constant 45 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg14 = %c32 to %c45 step %c1_9 {
              %c-21 = arith.constant -21 : index
              %4 = arith.addi %arg14, %c-21 : index
              %5 = memref.load %arg10[%arg12, %4] : memref<?x24xf64>
              %c-21_10 = arith.constant -21 : index
              %6 = arith.addi %arg14, %c-21_10 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %3, %7 : f64
              %9 = arith.addf %5, %8 : f64
              %c-21_11 = arith.constant -21 : index
              %10 = arith.addi %arg14, %c-21_11 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

