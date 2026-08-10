module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg4 = %c1 to %c21 step %c1_1 {
      %c1_2 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.addi %0, %c-1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %1 step %c1_3 {
        %c1_7 = arith.constant 1 : index
        %c-1_8 = arith.constant -1 : index
        %3 = arith.addi %0, %c-1_8 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %3 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c-1_11 = arith.constant -1 : index
          %4 = arith.addi %0, %c-1_11 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %4 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %5 = arith.addi %arg5, %c1_13 : index
            %6 = memref.load %arg2[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = memref.load %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %8 = arith.mulf %7, %cst : f64
            %9 = arith.subf %6, %8 : f64
            %c-1_14 = arith.constant -1 : index
            %10 = arith.addi %arg5, %c-1_14 : index
            %11 = memref.load %arg2[%10, %arg6, %arg7] : memref<?x10x10xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %c1_15 = arith.constant 1 : index
            %14 = arith.addi %arg6, %c1_15 : index
            %15 = memref.load %arg2[%arg5, %14, %arg7] : memref<?x10x10xf64>
            %16 = arith.subf %15, %8 : f64
            %c-1_16 = arith.constant -1 : index
            %17 = arith.addi %arg6, %c-1_16 : index
            %18 = memref.load %arg2[%arg5, %17, %arg7] : memref<?x10x10xf64>
            %19 = arith.addf %16, %18 : f64
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.addf %13, %20 : f64
            %c1_17 = arith.constant 1 : index
            %22 = arith.addi %arg7, %c1_17 : index
            %23 = memref.load %arg2[%arg5, %arg6, %22] : memref<?x10x10xf64>
            %24 = arith.subf %23, %8 : f64
            %c-1_18 = arith.constant -1 : index
            %25 = arith.addi %arg7, %c-1_18 : index
            %26 = memref.load %arg2[%arg5, %arg6, %25] : memref<?x10x10xf64>
            %27 = arith.addf %24, %26 : f64
            %28 = arith.mulf %27, %cst_0 : f64
            %29 = arith.addf %21, %28 : f64
            %30 = arith.addf %29, %7 : f64
            memref.store %30, %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
          }
        }
      }
      %c1_4 = arith.constant 1 : index
      %c-1_5 = arith.constant -1 : index
      %2 = arith.addi %0, %c-1_5 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg5 = %c1_4 to %2 step %c1_6 {
        %c1_7 = arith.constant 1 : index
        %c-1_8 = arith.constant -1 : index
        %3 = arith.addi %0, %c-1_8 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %3 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c-1_11 = arith.constant -1 : index
          %4 = arith.addi %0, %c-1_11 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %4 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %5 = arith.addi %arg5, %c1_13 : index
            %6 = memref.load %arg3[%5, %arg6, %arg7] : memref<?x10x10xf64>
            %7 = memref.load %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %8 = arith.mulf %7, %cst : f64
            %9 = arith.subf %6, %8 : f64
            %c-1_14 = arith.constant -1 : index
            %10 = arith.addi %arg5, %c-1_14 : index
            %11 = memref.load %arg3[%10, %arg6, %arg7] : memref<?x10x10xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %c1_15 = arith.constant 1 : index
            %14 = arith.addi %arg6, %c1_15 : index
            %15 = memref.load %arg3[%arg5, %14, %arg7] : memref<?x10x10xf64>
            %16 = arith.subf %15, %8 : f64
            %c-1_16 = arith.constant -1 : index
            %17 = arith.addi %arg6, %c-1_16 : index
            %18 = memref.load %arg3[%arg5, %17, %arg7] : memref<?x10x10xf64>
            %19 = arith.addf %16, %18 : f64
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.addf %13, %20 : f64
            %c1_17 = arith.constant 1 : index
            %22 = arith.addi %arg7, %c1_17 : index
            %23 = memref.load %arg3[%arg5, %arg6, %22] : memref<?x10x10xf64>
            %24 = arith.subf %23, %8 : f64
            %c-1_18 = arith.constant -1 : index
            %25 = arith.addi %arg7, %c-1_18 : index
            %26 = memref.load %arg3[%arg5, %arg6, %25] : memref<?x10x10xf64>
            %27 = arith.addf %24, %26 : f64
            %28 = arith.mulf %27, %cst_0 : f64
            %29 = arith.addf %21, %28 : f64
            %30 = arith.addf %29, %7 : f64
            memref.store %30, %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

