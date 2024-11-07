module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c1_1 = arith.constant 1 : index
      %0 = arith.addi %arg4, %c1_1 : index
      %c0_2 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg5 = %c0_2 to %c8 step %c1_3 {
        %c1_7 = arith.constant 1 : index
        %1 = arith.addi %arg5, %c1_7 : index
        %c0_8 = arith.constant 0 : index
        %c8_9 = arith.constant 8 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg6 = %c0_8 to %c8_9 step %c1_10 {
          %c1_11 = arith.constant 1 : index
          %2 = arith.addi %arg6, %c1_11 : index
          %c0_12 = arith.constant 0 : index
          %c8_13 = arith.constant 8 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg7 = %c0_12 to %c8_13 step %c1_14 {
            %c1_15 = arith.constant 1 : index
            %3 = arith.addi %arg7, %c1_15 : index
            %c1_16 = arith.constant 1 : index
            %4 = arith.addi %1, %c1_16 : index
            %5 = memref.load %arg2[%4, %2, %3] : memref<?x10x10xf64>
            %6 = memref.load %arg2[%1, %2, %3] : memref<?x10x10xf64>
            %7 = arith.mulf %6, %cst : f64
            %8 = arith.subf %5, %7 : f64
            %c-1 = arith.constant -1 : index
            %9 = arith.addi %1, %c-1 : index
            %10 = memref.load %arg2[%9, %2, %3] : memref<?x10x10xf64>
            %11 = arith.addf %8, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %c1_17 = arith.constant 1 : index
            %13 = arith.addi %2, %c1_17 : index
            %14 = memref.load %arg2[%1, %13, %3] : memref<?x10x10xf64>
            %15 = arith.subf %14, %7 : f64
            %c-1_18 = arith.constant -1 : index
            %16 = arith.addi %2, %c-1_18 : index
            %17 = memref.load %arg2[%1, %16, %3] : memref<?x10x10xf64>
            %18 = arith.addf %15, %17 : f64
            %19 = arith.mulf %18, %cst_0 : f64
            %20 = arith.addf %12, %19 : f64
            %c1_19 = arith.constant 1 : index
            %21 = arith.addi %3, %c1_19 : index
            %22 = memref.load %arg2[%1, %2, %21] : memref<?x10x10xf64>
            %23 = arith.subf %22, %7 : f64
            %c-1_20 = arith.constant -1 : index
            %24 = arith.addi %3, %c-1_20 : index
            %25 = memref.load %arg2[%1, %2, %24] : memref<?x10x10xf64>
            %26 = arith.addf %23, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = arith.addf %20, %27 : f64
            %29 = arith.addf %28, %6 : f64
            memref.store %29, %arg3[%1, %2, %3] : memref<?x10x10xf64>
          }
        }
      }
      %c0_4 = arith.constant 0 : index
      %c8_5 = arith.constant 8 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg5 = %c0_4 to %c8_5 step %c1_6 {
        %c1_7 = arith.constant 1 : index
        %1 = arith.addi %arg5, %c1_7 : index
        %c0_8 = arith.constant 0 : index
        %c8_9 = arith.constant 8 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg6 = %c0_8 to %c8_9 step %c1_10 {
          %c1_11 = arith.constant 1 : index
          %2 = arith.addi %arg6, %c1_11 : index
          %c0_12 = arith.constant 0 : index
          %c8_13 = arith.constant 8 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg7 = %c0_12 to %c8_13 step %c1_14 {
            %c1_15 = arith.constant 1 : index
            %3 = arith.addi %arg7, %c1_15 : index
            %c1_16 = arith.constant 1 : index
            %4 = arith.addi %1, %c1_16 : index
            %5 = memref.load %arg3[%4, %2, %3] : memref<?x10x10xf64>
            %6 = memref.load %arg3[%1, %2, %3] : memref<?x10x10xf64>
            %7 = arith.mulf %6, %cst : f64
            %8 = arith.subf %5, %7 : f64
            %c-1 = arith.constant -1 : index
            %9 = arith.addi %1, %c-1 : index
            %10 = memref.load %arg3[%9, %2, %3] : memref<?x10x10xf64>
            %11 = arith.addf %8, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %c1_17 = arith.constant 1 : index
            %13 = arith.addi %2, %c1_17 : index
            %14 = memref.load %arg3[%1, %13, %3] : memref<?x10x10xf64>
            %15 = arith.subf %14, %7 : f64
            %c-1_18 = arith.constant -1 : index
            %16 = arith.addi %2, %c-1_18 : index
            %17 = memref.load %arg3[%1, %16, %3] : memref<?x10x10xf64>
            %18 = arith.addf %15, %17 : f64
            %19 = arith.mulf %18, %cst_0 : f64
            %20 = arith.addf %12, %19 : f64
            %c1_19 = arith.constant 1 : index
            %21 = arith.addi %3, %c1_19 : index
            %22 = memref.load %arg3[%1, %2, %21] : memref<?x10x10xf64>
            %23 = arith.subf %22, %7 : f64
            %c-1_20 = arith.constant -1 : index
            %24 = arith.addi %3, %c-1_20 : index
            %25 = memref.load %arg3[%1, %2, %24] : memref<?x10x10xf64>
            %26 = arith.addf %23, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = arith.addf %20, %27 : f64
            %29 = arith.addf %28, %6 : f64
            memref.store %29, %arg2[%1, %2, %3] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

