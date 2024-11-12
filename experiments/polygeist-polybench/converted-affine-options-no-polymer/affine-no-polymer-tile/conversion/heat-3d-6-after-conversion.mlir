module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c-1 = arith.constant -1 : index
    %c9 = arith.constant 9 : index
    %c20 = arith.constant 20 : index
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c1 to %c21 step %c32 {
      %0 = arith.addi %arg4, %c20 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        scf.for %arg6 = %c1 to %c9 step %c1 {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            scf.for %arg8 = %c1 to %c9 step %c1 {
              %1 = arith.addi %arg6, %c1 : index
              %2 = memref.load %arg2[%1, %arg7, %arg8] : memref<?x10x10xf64>
              %3 = memref.load %arg2[%arg6, %arg7, %arg8] : memref<?x10x10xf64>
              %4 = arith.mulf %3, %cst_0 : f64
              %5 = arith.subf %2, %4 : f64
              %6 = arith.addi %arg6, %c-1 : index
              %7 = memref.load %arg2[%6, %arg7, %arg8] : memref<?x10x10xf64>
              %8 = arith.addf %5, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.addi %arg7, %c1 : index
              %11 = memref.load %arg2[%arg6, %10, %arg8] : memref<?x10x10xf64>
              %12 = arith.subf %11, %4 : f64
              %13 = arith.addi %arg7, %c-1 : index
              %14 = memref.load %arg2[%arg6, %13, %arg8] : memref<?x10x10xf64>
              %15 = arith.addf %12, %14 : f64
              %16 = arith.mulf %15, %cst : f64
              %17 = arith.addf %9, %16 : f64
              %18 = arith.addi %arg8, %c1 : index
              %19 = memref.load %arg2[%arg6, %arg7, %18] : memref<?x10x10xf64>
              %20 = arith.subf %19, %4 : f64
              %21 = arith.addi %arg8, %c-1 : index
              %22 = memref.load %arg2[%arg6, %arg7, %21] : memref<?x10x10xf64>
              %23 = arith.addf %20, %22 : f64
              %24 = arith.mulf %23, %cst : f64
              %25 = arith.addf %17, %24 : f64
              %26 = arith.addf %25, %3 : f64
              memref.store %26, %arg3[%arg6, %arg7, %arg8] : memref<?x10x10xf64>
            }
          }
        }
        scf.for %arg6 = %c1 to %c9 step %c1 {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            scf.for %arg8 = %c1 to %c9 step %c1 {
              %1 = arith.addi %arg6, %c1 : index
              %2 = memref.load %arg3[%1, %arg7, %arg8] : memref<?x10x10xf64>
              %3 = memref.load %arg3[%arg6, %arg7, %arg8] : memref<?x10x10xf64>
              %4 = arith.mulf %3, %cst_0 : f64
              %5 = arith.subf %2, %4 : f64
              %6 = arith.addi %arg6, %c-1 : index
              %7 = memref.load %arg3[%6, %arg7, %arg8] : memref<?x10x10xf64>
              %8 = arith.addf %5, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.addi %arg7, %c1 : index
              %11 = memref.load %arg3[%arg6, %10, %arg8] : memref<?x10x10xf64>
              %12 = arith.subf %11, %4 : f64
              %13 = arith.addi %arg7, %c-1 : index
              %14 = memref.load %arg3[%arg6, %13, %arg8] : memref<?x10x10xf64>
              %15 = arith.addf %12, %14 : f64
              %16 = arith.mulf %15, %cst : f64
              %17 = arith.addf %9, %16 : f64
              %18 = arith.addi %arg8, %c1 : index
              %19 = memref.load %arg3[%arg6, %arg7, %18] : memref<?x10x10xf64>
              %20 = arith.subf %19, %4 : f64
              %21 = arith.addi %arg8, %c-1 : index
              %22 = memref.load %arg3[%arg6, %arg7, %21] : memref<?x10x10xf64>
              %23 = arith.addf %20, %22 : f64
              %24 = arith.mulf %23, %cst : f64
              %25 = arith.addf %17, %24 : f64
              %26 = arith.addf %25, %3 : f64
              memref.store %26, %arg2[%arg6, %arg7, %arg8] : memref<?x10x10xf64>
            }
          }
        }
      }
    }
    return
  }
}

