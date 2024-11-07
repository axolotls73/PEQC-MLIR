module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c-1 = arith.constant -1 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      scf.for %arg5 = %c0 to %c8 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        scf.for %arg6 = %c0 to %c8 step %c1 {
          %1 = arith.addi %arg6, %c1 : index
          scf.for %arg7 = %c0 to %c8 step %c1 {
            %2 = arith.addi %arg7, %c1 : index
            %3 = arith.addi %0, %c1 : index
            %4 = memref.load %arg2[%3, %1, %2] : memref<?x10x10xf64>
            %5 = memref.load %arg2[%0, %1, %2] : memref<?x10x10xf64>
            %6 = arith.mulf %5, %cst : f64
            %7 = arith.subf %4, %6 : f64
            %8 = arith.addi %0, %c-1 : index
            %9 = memref.load %arg2[%8, %1, %2] : memref<?x10x10xf64>
            %10 = arith.addf %7, %9 : f64
            %11 = arith.mulf %10, %cst_0 : f64
            %12 = arith.addi %1, %c1 : index
            %13 = memref.load %arg2[%0, %12, %2] : memref<?x10x10xf64>
            %14 = arith.subf %13, %6 : f64
            %15 = arith.addi %1, %c-1 : index
            %16 = memref.load %arg2[%0, %15, %2] : memref<?x10x10xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst_0 : f64
            %19 = arith.addf %11, %18 : f64
            %20 = arith.addi %2, %c1 : index
            %21 = memref.load %arg2[%0, %1, %20] : memref<?x10x10xf64>
            %22 = arith.subf %21, %6 : f64
            %23 = arith.addi %2, %c-1 : index
            %24 = memref.load %arg2[%0, %1, %23] : memref<?x10x10xf64>
            %25 = arith.addf %22, %24 : f64
            %26 = arith.mulf %25, %cst_0 : f64
            %27 = arith.addf %19, %26 : f64
            %28 = arith.addf %27, %5 : f64
            memref.store %28, %arg3[%0, %1, %2] : memref<?x10x10xf64>
          }
        }
      }
      scf.for %arg5 = %c0 to %c8 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        scf.for %arg6 = %c0 to %c8 step %c1 {
          %1 = arith.addi %arg6, %c1 : index
          scf.for %arg7 = %c0 to %c8 step %c1 {
            %2 = arith.addi %arg7, %c1 : index
            %3 = arith.addi %0, %c1 : index
            %4 = memref.load %arg3[%3, %1, %2] : memref<?x10x10xf64>
            %5 = memref.load %arg3[%0, %1, %2] : memref<?x10x10xf64>
            %6 = arith.mulf %5, %cst : f64
            %7 = arith.subf %4, %6 : f64
            %8 = arith.addi %0, %c-1 : index
            %9 = memref.load %arg3[%8, %1, %2] : memref<?x10x10xf64>
            %10 = arith.addf %7, %9 : f64
            %11 = arith.mulf %10, %cst_0 : f64
            %12 = arith.addi %1, %c1 : index
            %13 = memref.load %arg3[%0, %12, %2] : memref<?x10x10xf64>
            %14 = arith.subf %13, %6 : f64
            %15 = arith.addi %1, %c-1 : index
            %16 = memref.load %arg3[%0, %15, %2] : memref<?x10x10xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst_0 : f64
            %19 = arith.addf %11, %18 : f64
            %20 = arith.addi %2, %c1 : index
            %21 = memref.load %arg3[%0, %1, %20] : memref<?x10x10xf64>
            %22 = arith.subf %21, %6 : f64
            %23 = arith.addi %2, %c-1 : index
            %24 = memref.load %arg3[%0, %1, %23] : memref<?x10x10xf64>
            %25 = arith.addf %22, %24 : f64
            %26 = arith.mulf %25, %cst_0 : f64
            %27 = arith.addf %19, %26 : f64
            %28 = arith.addf %27, %5 : f64
            memref.store %28, %arg2[%0, %1, %2] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

