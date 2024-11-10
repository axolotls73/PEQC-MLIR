module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %c1_1 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %0 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c30 = arith.constant 30 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg9 = %c0_3 to %c30 step %c1_4 {
          %1 = memref.load %arg6[%arg8] : memref<?xf64>
          %c0_13 = arith.constant 0 : index
          memref.store %1, %arg4[%c0_13, %arg9] : memref<?x30xf64>
        }
        %c1_5 = arith.constant 1 : index
        %c20_6 = arith.constant 20 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c1_5 to %c20_6 step %c1_7 {
          %c0_13 = arith.constant 0 : index
          %c30_14 = arith.constant 30 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg10 = %c0_13 to %c30_14 step %c1_15 {
            %1 = memref.load %arg4[%arg9, %arg10] : memref<?x30xf64>
            %2 = memref.load %arg5[%arg9, %arg10] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %3 = arith.addi %arg9, %c-1 : index
            %4 = memref.load %arg5[%3, %arg10] : memref<?x30xf64>
            %5 = arith.subf %2, %4 : f64
            %6 = arith.mulf %5, %cst_0 : f64
            %7 = arith.subf %1, %6 : f64
            memref.store %7, %arg4[%arg9, %arg10] : memref<?x30xf64>
          }
        }
        %c0_8 = arith.constant 0 : index
        %c20_9 = arith.constant 20 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c0_8 to %c20_9 step %c1_10 {
          %c1_13 = arith.constant 1 : index
          %c30_14 = arith.constant 30 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg10 = %c1_13 to %c30_14 step %c1_15 {
            %1 = memref.load %arg3[%arg9, %arg10] : memref<?x30xf64>
            %2 = memref.load %arg5[%arg9, %arg10] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %3 = arith.addi %arg10, %c-1 : index
            %4 = memref.load %arg5[%arg9, %3] : memref<?x30xf64>
            %5 = arith.subf %2, %4 : f64
            %6 = arith.mulf %5, %cst_0 : f64
            %7 = arith.subf %1, %6 : f64
            memref.store %7, %arg3[%arg9, %arg10] : memref<?x30xf64>
          }
        }
        %c0_11 = arith.constant 0 : index
        %c19 = arith.constant 19 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg9 = %c0_11 to %c19 step %c1_12 {
          %c0_13 = arith.constant 0 : index
          %c29 = arith.constant 29 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg10 = %c0_13 to %c29 step %c1_14 {
            %1 = memref.load %arg5[%arg9, %arg10] : memref<?x30xf64>
            %c1_15 = arith.constant 1 : index
            %2 = arith.addi %arg10, %c1_15 : index
            %3 = memref.load %arg3[%arg9, %2] : memref<?x30xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x30xf64>
            %5 = arith.subf %3, %4 : f64
            %c1_16 = arith.constant 1 : index
            %6 = arith.addi %arg9, %c1_16 : index
            %7 = memref.load %arg4[%6, %arg10] : memref<?x30xf64>
            %8 = arith.addf %5, %7 : f64
            %9 = memref.load %arg4[%arg9, %arg10] : memref<?x30xf64>
            %10 = arith.subf %8, %9 : f64
            %11 = arith.mulf %10, %cst : f64
            %12 = arith.subf %1, %11 : f64
            memref.store %12, %arg5[%arg9, %arg10] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

