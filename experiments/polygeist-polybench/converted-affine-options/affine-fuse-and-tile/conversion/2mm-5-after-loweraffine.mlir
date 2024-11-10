module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    scf.for %arg11 = %c0 to %c16 step %c32 {
      %c16_2 = arith.constant 16 : index
      %0 = arith.addi %arg11, %c16_2 : index
      %c1 = arith.constant 1 : index
      scf.for %arg12 = %arg11 to %0 step %c1 {
        %c0_3 = arith.constant 0 : index
        %c18 = arith.constant 18 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg13 = %c0_3 to %c18 step %c1_4 {
          %1 = memref.load %arg10[%arg12, %arg13] : memref<?x24xf64>
          %2 = arith.mulf %1, %arg5 : f64
          memref.store %2, %arg10[%arg12, %arg13] : memref<?x24xf64>
          memref.store %cst, %arg6[%arg12, %arg13] : memref<?x18xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c6 = arith.constant 6 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg13 = %c0_5 to %c6 step %c1_6 {
          %c18_7 = arith.constant 18 : index
          %1 = arith.addi %arg13, %c18_7 : index
          %2 = memref.load %arg10[%arg12, %1] : memref<?x24xf64>
          %3 = arith.mulf %2, %arg5 : f64
          %c18_8 = arith.constant 18 : index
          %4 = arith.addi %arg13, %c18_8 : index
          memref.store %3, %arg10[%arg12, %4] : memref<?x24xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c32_1 = arith.constant 32 : index
    scf.for %arg11 = %c0_0 to %c2 step %c32_1 {
      %c2_2 = arith.constant 2 : index
      %0 = arith.addi %arg11, %c2_2 : index
      %c1 = arith.constant 1 : index
      scf.for %arg12 = %arg11 to %0 step %c1 {
        %c0_3 = arith.constant 0 : index
        %1 = arith.cmpi eq, %arg12, %c0_3 : index
        scf.if %1 {
          %c0_5 = arith.constant 0 : index
          %c16_6 = arith.constant 16 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg13 = %c0_5 to %c16_6 step %c1_7 {
            %c0_8 = arith.constant 0 : index
            %c18 = arith.constant 18 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg14 = %c0_8 to %c18 step %c1_9 {
              %c0_10 = arith.constant 0 : index
              %c22 = arith.constant 22 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg15 = %c0_10 to %c22 step %c1_11 {
                %4 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %5 = memref.load %arg7[%arg13, %arg15] : memref<?x22xf64>
                %6 = arith.mulf %arg4, %5 : f64
                %7 = memref.load %arg8[%arg15, %arg14] : memref<?x18xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.addf %4, %8 : f64
                memref.store %9, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %c0_12 = arith.constant 0 : index
              %c11 = arith.constant 11 : index
              %c1_13 = arith.constant 1 : index
              scf.for %arg15 = %c0_12 to %c11 step %c1_13 {
                %4 = memref.load %arg10[%arg13, %arg15] : memref<?x24xf64>
                %5 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %6 = memref.load %arg9[%arg14, %arg15] : memref<?x24xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                memref.store %8, %arg10[%arg13, %arg15] : memref<?x24xf64>
              }
            }
          }
        }
        %c0_4 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.addi %arg12, %c-1 : index
        %3 = arith.cmpi eq, %2, %c0_4 : index
        scf.if %3 {
          %c0_5 = arith.constant 0 : index
          %c16_6 = arith.constant 16 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg13 = %c0_5 to %c16_6 step %c1_7 {
            %c0_8 = arith.constant 0 : index
            %c18 = arith.constant 18 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg14 = %c0_8 to %c18 step %c1_9 {
              %c0_10 = arith.constant 0 : index
              %c13 = arith.constant 13 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg15 = %c0_10 to %c13 step %c1_11 {
                %c11 = arith.constant 11 : index
                %4 = arith.addi %arg15, %c11 : index
                %5 = memref.load %arg10[%arg13, %4] : memref<?x24xf64>
                %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c11_12 = arith.constant 11 : index
                %7 = arith.addi %arg15, %c11_12 : index
                %8 = memref.load %arg9[%arg14, %7] : memref<?x24xf64>
                %9 = arith.mulf %6, %8 : f64
                %10 = arith.addf %5, %9 : f64
                %c11_13 = arith.constant 11 : index
                %11 = arith.addi %arg15, %c11_13 : index
                memref.store %10, %arg10[%arg13, %11] : memref<?x24xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

