module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg4 = %c1 to %c21 step %c1_1 {
      %c1_2 = arith.constant 1 : index
      %c9 = arith.constant 9 : index
      %c1_3 = arith.constant 1 : index
      scf.parallel (%arg5) = (%c1_2) to (%c9) step (%c1_3) {
        %c1_7 = arith.constant 1 : index
        %c9_8 = arith.constant 9 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %c9_8 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c9_11 = arith.constant 9 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %c9_11 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %0 = arith.addi %arg5, %c1_13 : index
            %1 = memref.load %arg2[%0, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = memref.load %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %arg5, %c-1 : index
            %6 = memref.load %arg2[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %c1_14 = arith.constant 1 : index
            %9 = arith.addi %arg6, %c1_14 : index
            %10 = memref.load %arg2[%arg5, %9, %arg7] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %c-1_15 = arith.constant -1 : index
            %12 = arith.addi %arg6, %c-1_15 : index
            %13 = memref.load %arg2[%arg5, %12, %arg7] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %8, %15 : f64
            %c1_16 = arith.constant 1 : index
            %17 = arith.addi %arg7, %c1_16 : index
            %18 = memref.load %arg2[%arg5, %arg6, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %c-1_17 = arith.constant -1 : index
            %20 = arith.addi %arg7, %c-1_17 : index
            %21 = memref.load %arg2[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_0 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
          }
        }
        scf.reduce 
      }
      %c1_4 = arith.constant 1 : index
      %c9_5 = arith.constant 9 : index
      %c1_6 = arith.constant 1 : index
      scf.parallel (%arg5) = (%c1_4) to (%c9_5) step (%c1_6) {
        %c1_7 = arith.constant 1 : index
        %c9_8 = arith.constant 9 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %c9_8 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c9_11 = arith.constant 9 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %c9_11 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %0 = arith.addi %arg5, %c1_13 : index
            %1 = memref.load %arg3[%0, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = memref.load %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %arg5, %c-1 : index
            %6 = memref.load %arg3[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %c1_14 = arith.constant 1 : index
            %9 = arith.addi %arg6, %c1_14 : index
            %10 = memref.load %arg3[%arg5, %9, %arg7] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %c-1_15 = arith.constant -1 : index
            %12 = arith.addi %arg6, %c-1_15 : index
            %13 = memref.load %arg3[%arg5, %12, %arg7] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %8, %15 : f64
            %c1_16 = arith.constant 1 : index
            %17 = arith.addi %arg7, %c1_16 : index
            %18 = memref.load %arg3[%arg5, %arg6, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %c-1_17 = arith.constant -1 : index
            %20 = arith.addi %arg7, %c-1_17 : index
            %21 = memref.load %arg3[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst_0 : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
          }
        }
        scf.reduce 
      }
    }
    return
  }
}

