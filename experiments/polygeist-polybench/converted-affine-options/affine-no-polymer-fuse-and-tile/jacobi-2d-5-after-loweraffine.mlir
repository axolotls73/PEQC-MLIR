module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c20 step %c32 {
      %c20_0 = arith.constant 20 : index
      %0 = arith.addi %arg4, %c20_0 : index
      %c1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        %c0_1 = arith.constant 0 : index
        %c28 = arith.constant 28 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg6 = %c0_1 to %c28 step %c1_2 {
          %c0_6 = arith.constant 0 : index
          %c28_7 = arith.constant 28 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg7 = %c0_6 to %c28_7 step %c1_8 {
            %c1_9 = arith.constant 1 : index
            %1 = arith.addi %arg6, %c1_9 : index
            %c1_10 = arith.constant 1 : index
            %2 = arith.addi %arg7, %c1_10 : index
            %3 = memref.load %arg2[%1, %2] : memref<?x30xf64>
            %c1_11 = arith.constant 1 : index
            %4 = arith.addi %arg6, %c1_11 : index
            %5 = memref.load %arg2[%4, %arg7] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %c1_12 = arith.constant 1 : index
            %7 = arith.addi %arg6, %c1_12 : index
            %c2 = arith.constant 2 : index
            %8 = arith.addi %arg7, %c2 : index
            %9 = memref.load %arg2[%7, %8] : memref<?x30xf64>
            %10 = arith.addf %6, %9 : f64
            %c2_13 = arith.constant 2 : index
            %11 = arith.addi %arg6, %c2_13 : index
            %c1_14 = arith.constant 1 : index
            %12 = arith.addi %arg7, %c1_14 : index
            %13 = memref.load %arg2[%11, %12] : memref<?x30xf64>
            %14 = arith.addf %10, %13 : f64
            %c1_15 = arith.constant 1 : index
            %15 = arith.addi %arg7, %c1_15 : index
            %16 = memref.load %arg2[%arg6, %15] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            %c1_16 = arith.constant 1 : index
            %19 = arith.addi %arg6, %c1_16 : index
            %c1_17 = arith.constant 1 : index
            %20 = arith.addi %arg7, %c1_17 : index
            memref.store %18, %arg3[%19, %20] : memref<?x30xf64>
          }
        }
        %c0_3 = arith.constant 0 : index
        %c28_4 = arith.constant 28 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c28_4 step %c1_5 {
          %c0_6 = arith.constant 0 : index
          %c28_7 = arith.constant 28 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg7 = %c0_6 to %c28_7 step %c1_8 {
            %c1_9 = arith.constant 1 : index
            %1 = arith.addi %arg6, %c1_9 : index
            %c1_10 = arith.constant 1 : index
            %2 = arith.addi %arg7, %c1_10 : index
            %3 = memref.load %arg3[%1, %2] : memref<?x30xf64>
            %c1_11 = arith.constant 1 : index
            %4 = arith.addi %arg6, %c1_11 : index
            %5 = memref.load %arg3[%4, %arg7] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %c1_12 = arith.constant 1 : index
            %7 = arith.addi %arg6, %c1_12 : index
            %c2 = arith.constant 2 : index
            %8 = arith.addi %arg7, %c2 : index
            %9 = memref.load %arg3[%7, %8] : memref<?x30xf64>
            %10 = arith.addf %6, %9 : f64
            %c2_13 = arith.constant 2 : index
            %11 = arith.addi %arg6, %c2_13 : index
            %c1_14 = arith.constant 1 : index
            %12 = arith.addi %arg7, %c1_14 : index
            %13 = memref.load %arg3[%11, %12] : memref<?x30xf64>
            %14 = arith.addf %10, %13 : f64
            %c1_15 = arith.constant 1 : index
            %15 = arith.addi %arg7, %c1_15 : index
            %16 = memref.load %arg3[%arg6, %15] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            %c1_16 = arith.constant 1 : index
            %19 = arith.addi %arg6, %c1_16 : index
            %c1_17 = arith.constant 1 : index
            %20 = arith.addi %arg7, %c1_17 : index
            memref.store %18, %arg2[%19, %20] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

