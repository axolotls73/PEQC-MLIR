module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %0 = arith.addi %arg4, %c1_0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %0 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %c29 = arith.constant 29 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg6 = %c1_2 to %c29 step %c1_3 {
          %c1_7 = arith.constant 1 : index
          %c29_8 = arith.constant 29 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg7 = %c1_7 to %c29_8 step %c1_9 {
            %1 = memref.load %arg2[%arg6, %arg7] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %2 = arith.addi %arg7, %c-1 : index
            %3 = memref.load %arg2[%arg6, %2] : memref<?x30xf64>
            %4 = arith.addf %1, %3 : f64
            %c1_10 = arith.constant 1 : index
            %5 = arith.addi %arg7, %c1_10 : index
            %6 = memref.load %arg2[%arg6, %5] : memref<?x30xf64>
            %7 = arith.addf %4, %6 : f64
            %c1_11 = arith.constant 1 : index
            %8 = arith.addi %arg6, %c1_11 : index
            %9 = memref.load %arg2[%8, %arg7] : memref<?x30xf64>
            %10 = arith.addf %7, %9 : f64
            %c-1_12 = arith.constant -1 : index
            %11 = arith.addi %arg6, %c-1_12 : index
            %12 = memref.load %arg2[%11, %arg7] : memref<?x30xf64>
            %13 = arith.addf %10, %12 : f64
            %14 = arith.mulf %13, %cst : f64
            memref.store %14, %arg3[%arg6, %arg7] : memref<?x30xf64>
          }
        }
        %c1_4 = arith.constant 1 : index
        %c29_5 = arith.constant 29 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg6 = %c1_4 to %c29_5 step %c1_6 {
          %c1_7 = arith.constant 1 : index
          %c29_8 = arith.constant 29 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg7 = %c1_7 to %c29_8 step %c1_9 {
            %1 = memref.load %arg3[%arg6, %arg7] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %2 = arith.addi %arg7, %c-1 : index
            %3 = memref.load %arg3[%arg6, %2] : memref<?x30xf64>
            %4 = arith.addf %1, %3 : f64
            %c1_10 = arith.constant 1 : index
            %5 = arith.addi %arg7, %c1_10 : index
            %6 = memref.load %arg3[%arg6, %5] : memref<?x30xf64>
            %7 = arith.addf %4, %6 : f64
            %c1_11 = arith.constant 1 : index
            %8 = arith.addi %arg6, %c1_11 : index
            %9 = memref.load %arg3[%8, %arg7] : memref<?x30xf64>
            %10 = arith.addf %7, %9 : f64
            %c-1_12 = arith.constant -1 : index
            %11 = arith.addi %arg6, %c-1_12 : index
            %12 = memref.load %arg3[%11, %arg7] : memref<?x30xf64>
            %13 = arith.addf %10, %12 : f64
            %14 = arith.mulf %13, %cst : f64
            memref.store %14, %arg2[%arg6, %arg7] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

