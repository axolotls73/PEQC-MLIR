module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c18 = arith.constant 18 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg12 = %c0_3 to %c18 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %0 = arith.addi %arg11, %c1_5 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg13 = %arg11 to %0 step %c1_6 {
          %c1_7 = arith.constant 1 : index
          %1 = arith.addi %arg12, %c1_7 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg14 = %arg12 to %1 step %c1_8 {
            memref.store %cst, %arg6[%arg13, %arg14] : memref<?x18xf64>
            %c0_9 = arith.constant 0 : index
            %c22 = arith.constant 22 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg15 = %c0_9 to %c22 step %c1_10 {
              %2 = memref.load %arg7[%arg13, %arg15] : memref<?x22xf64>
              %3 = arith.mulf %arg4, %2 : f64
              %4 = memref.load %arg8[%arg15, %arg14] : memref<?x18xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %arg6[%arg13, %arg14] : memref<?x18xf64>
            }
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c16_1 = arith.constant 16 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg11 = %c0_0 to %c16_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg12 = %c0_3 to %c24 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %0 = arith.addi %arg11, %c1_5 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg13 = %arg11 to %0 step %c1_6 {
          %c1_7 = arith.constant 1 : index
          %1 = arith.addi %arg12, %c1_7 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg14 = %arg12 to %1 step %c1_8 {
            %2 = memref.load %arg10[%arg13, %arg14] : memref<?x24xf64>
            %3 = arith.mulf %2, %arg5 : f64
            memref.store %3, %arg10[%arg13, %arg14] : memref<?x24xf64>
            %c0_9 = arith.constant 0 : index
            %c18 = arith.constant 18 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg15 = %c0_9 to %c18 step %c1_10 {
              %4 = memref.load %arg6[%arg13, %arg15] : memref<?x18xf64>
              %5 = memref.load %arg9[%arg15, %arg14] : memref<?x24xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = memref.load %arg10[%arg13, %arg14] : memref<?x24xf64>
              %8 = arith.addf %7, %6 : f64
              memref.store %8, %arg10[%arg13, %arg14] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

