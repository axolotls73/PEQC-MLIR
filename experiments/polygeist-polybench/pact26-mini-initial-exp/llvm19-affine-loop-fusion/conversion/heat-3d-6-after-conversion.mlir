module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c-1 = arith.constant -1 : index
    %c9 = arith.constant 9 : index
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    scf.for %arg4 = %c1 to %c21 step %c1 {
      scf.for %arg5 = %c1 to %c9 step %c1 {
        scf.for %arg6 = %c1 to %c9 step %c1 {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            %0 = arith.addi %arg6, %c1 : index
            %1 = memref.load %arg2[%0, %arg7, %arg5] : memref<?x10x10xf64>
            %2 = memref.load %arg2[%arg6, %arg7, %arg5] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst_0 : f64
            %4 = arith.subf %1, %3 : f64
            %5 = arith.addi %arg6, %c-1 : index
            %6 = memref.load %arg2[%5, %arg7, %arg5] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst : f64
            %9 = arith.addi %arg7, %c1 : index
            %10 = memref.load %arg2[%arg6, %9, %arg5] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %12 = arith.addi %arg7, %c-1 : index
            %13 = memref.load %arg2[%arg6, %12, %arg5] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst : f64
            %16 = arith.addf %8, %15 : f64
            %17 = arith.addi %arg5, %c1 : index
            %18 = memref.load %arg2[%arg6, %arg7, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %20 = arith.addi %arg5, %c-1 : index
            %21 = memref.load %arg2[%arg6, %arg7, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg3[%arg6, %arg7, %arg5] : memref<?x10x10xf64>
          }
        }
      }
      scf.for %arg5 = %c1 to %c9 step %c1 {
        scf.for %arg6 = %c1 to %c9 step %c1 {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            %0 = arith.addi %arg6, %c1 : index
            %1 = memref.load %arg3[%0, %arg7, %arg5] : memref<?x10x10xf64>
            %2 = memref.load %arg3[%arg6, %arg7, %arg5] : memref<?x10x10xf64>
            %3 = arith.mulf %2, %cst_0 : f64
            %4 = arith.subf %1, %3 : f64
            %5 = arith.addi %arg6, %c-1 : index
            %6 = memref.load %arg3[%5, %arg7, %arg5] : memref<?x10x10xf64>
            %7 = arith.addf %4, %6 : f64
            %8 = arith.mulf %7, %cst : f64
            %9 = arith.addi %arg7, %c1 : index
            %10 = memref.load %arg3[%arg6, %9, %arg5] : memref<?x10x10xf64>
            %11 = arith.subf %10, %3 : f64
            %12 = arith.addi %arg7, %c-1 : index
            %13 = memref.load %arg3[%arg6, %12, %arg5] : memref<?x10x10xf64>
            %14 = arith.addf %11, %13 : f64
            %15 = arith.mulf %14, %cst : f64
            %16 = arith.addf %8, %15 : f64
            %17 = arith.addi %arg5, %c1 : index
            %18 = memref.load %arg3[%arg6, %arg7, %17] : memref<?x10x10xf64>
            %19 = arith.subf %18, %3 : f64
            %20 = arith.addi %arg5, %c-1 : index
            %21 = memref.load %arg3[%arg6, %arg7, %20] : memref<?x10x10xf64>
            %22 = arith.addf %19, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.addf %16, %23 : f64
            %25 = arith.addf %24, %2 : f64
            memref.store %25, %arg2[%arg6, %arg7, %arg5] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

