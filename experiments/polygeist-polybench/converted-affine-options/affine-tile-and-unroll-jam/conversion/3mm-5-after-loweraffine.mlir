module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    scf.for %arg12 = %c0 to %c16 step %c32 {
      %c0_10 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c32_11 = arith.constant 32 : index
      scf.for %arg13 = %c0_10 to %c22 step %c32_11 {
        %c16_12 = arith.constant 16 : index
        %0 = arith.addi %arg12, %c16_12 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %c22_13 = arith.constant 22 : index
          %1 = arith.addi %arg13, %c22_13 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %arg13 to %1 step %c1_14 {
            memref.store %cst, %arg11[%arg14, %arg15] : memref<?x22xf64>
            memref.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c32_1 = arith.constant 32 : index
    scf.for %arg12 = %c0_0 to %c2 step %c32_1 {
      %c0_10 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c32_11 = arith.constant 32 : index
      scf.for %arg13 = %c0_10 to %c22 step %c32_11 {
        %c2_12 = arith.constant 2 : index
        %0 = arith.addi %arg12, %c2_12 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %c22_13 = arith.constant 22 : index
          %1 = arith.addi %arg13, %c22_13 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %arg13 to %1 step %c1_14 {
            %c16_15 = arith.constant 16 : index
            %2 = arith.addi %arg14, %c16_15 : index
            memref.store %cst, %arg8[%2, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    %c0_2 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c32_3 = arith.constant 32 : index
    scf.for %arg12 = %c0_2 to %c18 step %c32_3 {
      %c0_10 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c32_11 = arith.constant 32 : index
      scf.for %arg13 = %c0_10 to %c24 step %c32_11 {
        %c0_12 = arith.constant 0 : index
        %c22 = arith.constant 22 : index
        %c32_13 = arith.constant 32 : index
        scf.for %arg14 = %c0_12 to %c22 step %c32_13 {
          %c18_14 = arith.constant 18 : index
          %0 = arith.addi %arg12, %c18_14 : index
          %c1 = arith.constant 1 : index
          scf.for %arg15 = %arg12 to %0 step %c1 {
            %c24_15 = arith.constant 24 : index
            %1 = arith.addi %arg13, %c24_15 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg16 = %arg13 to %1 step %c1_16 {
              %c22_17 = arith.constant 22 : index
              %2 = arith.addi %arg14, %c22_17 : index
              %c1_18 = arith.constant 1 : index
              scf.for %arg17 = %arg14 to %2 step %c1_18 {
                %3 = memref.load %arg8[%arg15, %arg17] : memref<?x22xf64>
                %4 = memref.load %arg9[%arg15, %arg16] : memref<?x24xf64>
                %5 = memref.load %arg10[%arg16, %arg17] : memref<?x22xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.addf %3, %6 : f64
                memref.store %7, %arg8[%arg15, %arg17] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    %c0_4 = arith.constant 0 : index
    %c16_5 = arith.constant 16 : index
    %c32_6 = arith.constant 32 : index
    scf.for %arg12 = %c0_4 to %c16_5 step %c32_6 {
      %c0_10 = arith.constant 0 : index
      %c18_11 = arith.constant 18 : index
      %c32_12 = arith.constant 32 : index
      scf.for %arg13 = %c0_10 to %c18_11 step %c32_12 {
        %c16_13 = arith.constant 16 : index
        %0 = arith.addi %arg12, %c16_13 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %c18_14 = arith.constant 18 : index
          %1 = arith.addi %arg13, %c18_14 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg15 = %arg13 to %1 step %c1_15 {
            memref.store %cst, %arg5[%arg14, %arg15] : memref<?x18xf64>
          }
        }
      }
    }
    %c0_7 = arith.constant 0 : index
    %c2_8 = arith.constant 2 : index
    %c32_9 = arith.constant 32 : index
    scf.for %arg12 = %c0_7 to %c2_8 step %c32_9 {
      %c2_10 = arith.constant 2 : index
      %0 = arith.addi %arg12, %c2_10 : index
      %c1 = arith.constant 1 : index
      scf.for %arg13 = %arg12 to %0 step %c1 {
        %c0_11 = arith.constant 0 : index
        %1 = arith.cmpi eq, %arg13, %c0_11 : index
        scf.if %1 {
          %c0_13 = arith.constant 0 : index
          %c16_14 = arith.constant 16 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg14 = %c0_13 to %c16_14 step %c1_15 {
            %c0_16 = arith.constant 0 : index
            %c18_17 = arith.constant 18 : index
            %c1_18 = arith.constant 1 : index
            scf.for %arg15 = %c0_16 to %c18_17 step %c1_18 {
              %c0_19 = arith.constant 0 : index
              %c20 = arith.constant 20 : index
              %c1_20 = arith.constant 1 : index
              scf.for %arg16 = %c0_19 to %c20 step %c1_20 {
                %4 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %5 = memref.load %arg6[%arg14, %arg16] : memref<?x20xf64>
                %6 = memref.load %arg7[%arg16, %arg15] : memref<?x18xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                memref.store %8, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %c0_21 = arith.constant 0 : index
              %c13 = arith.constant 13 : index
              %c1_22 = arith.constant 1 : index
              scf.for %arg16 = %c0_21 to %c13 step %c1_22 {
                %4 = memref.load %arg11[%arg14, %arg16] : memref<?x22xf64>
                %5 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %6 = memref.load %arg8[%arg15, %arg16] : memref<?x22xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                memref.store %8, %arg11[%arg14, %arg16] : memref<?x22xf64>
              }
            }
          }
        }
        %c0_12 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.addi %arg13, %c-1 : index
        %3 = arith.cmpi eq, %2, %c0_12 : index
        scf.if %3 {
          %c0_13 = arith.constant 0 : index
          %c16_14 = arith.constant 16 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg14 = %c0_13 to %c16_14 step %c1_15 {
            %c0_16 = arith.constant 0 : index
            %c18_17 = arith.constant 18 : index
            %c1_18 = arith.constant 1 : index
            scf.for %arg15 = %c0_16 to %c18_17 step %c1_18 {
              %c0_19 = arith.constant 0 : index
              %c9 = arith.constant 9 : index
              %c1_20 = arith.constant 1 : index
              scf.for %arg16 = %c0_19 to %c9 step %c1_20 {
                %c13 = arith.constant 13 : index
                %4 = arith.addi %arg16, %c13 : index
                %5 = memref.load %arg11[%arg14, %4] : memref<?x22xf64>
                %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c13_21 = arith.constant 13 : index
                %7 = arith.addi %arg16, %c13_21 : index
                %8 = memref.load %arg8[%arg15, %7] : memref<?x22xf64>
                %9 = arith.mulf %6, %8 : f64
                %10 = arith.addf %5, %9 : f64
                %c13_22 = arith.constant 13 : index
                %11 = arith.addi %arg16, %c13_22 : index
                memref.store %10, %arg11[%arg14, %11] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

