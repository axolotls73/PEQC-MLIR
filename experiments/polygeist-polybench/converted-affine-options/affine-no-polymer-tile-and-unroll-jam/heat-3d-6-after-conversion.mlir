module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c2 = arith.constant 2 : index
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c20 step %c32 {
      %0 = arith.addi %arg4, %c20 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        scf.for %arg6 = %c0 to %c8 step %c1 {
          scf.for %arg7 = %c0 to %c8 step %c1 {
            scf.for %arg8 = %c0 to %c8 step %c1 {
              %1 = arith.addi %arg6, %c2 : index
              %2 = arith.addi %arg7, %c1 : index
              %3 = arith.addi %arg8, %c1 : index
              %4 = memref.load %arg2[%1, %2, %3] : memref<?x10x10xf64>
              %5 = arith.addi %arg6, %c1 : index
              %6 = arith.addi %arg7, %c1 : index
              %7 = arith.addi %arg8, %c1 : index
              %8 = memref.load %arg2[%5, %6, %7] : memref<?x10x10xf64>
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.subf %4, %9 : f64
              %11 = arith.addi %arg7, %c1 : index
              %12 = arith.addi %arg8, %c1 : index
              %13 = memref.load %arg2[%arg6, %11, %12] : memref<?x10x10xf64>
              %14 = arith.addf %10, %13 : f64
              %15 = arith.mulf %14, %cst_0 : f64
              %16 = arith.addi %arg6, %c1 : index
              %17 = arith.addi %arg7, %c2 : index
              %18 = arith.addi %arg8, %c1 : index
              %19 = memref.load %arg2[%16, %17, %18] : memref<?x10x10xf64>
              %20 = arith.subf %19, %9 : f64
              %21 = arith.addi %arg6, %c1 : index
              %22 = arith.addi %arg8, %c1 : index
              %23 = memref.load %arg2[%21, %arg7, %22] : memref<?x10x10xf64>
              %24 = arith.addf %20, %23 : f64
              %25 = arith.mulf %24, %cst_0 : f64
              %26 = arith.addf %15, %25 : f64
              %27 = arith.addi %arg6, %c1 : index
              %28 = arith.addi %arg7, %c1 : index
              %29 = arith.addi %arg8, %c2 : index
              %30 = memref.load %arg2[%27, %28, %29] : memref<?x10x10xf64>
              %31 = arith.subf %30, %9 : f64
              %32 = arith.addi %arg6, %c1 : index
              %33 = arith.addi %arg7, %c1 : index
              %34 = memref.load %arg2[%32, %33, %arg8] : memref<?x10x10xf64>
              %35 = arith.addf %31, %34 : f64
              %36 = arith.mulf %35, %cst_0 : f64
              %37 = arith.addf %26, %36 : f64
              %38 = arith.addf %37, %8 : f64
              %39 = arith.addi %arg6, %c1 : index
              %40 = arith.addi %arg7, %c1 : index
              %41 = arith.addi %arg8, %c1 : index
              memref.store %38, %arg3[%39, %40, %41] : memref<?x10x10xf64>
            }
          }
        }
        scf.for %arg6 = %c0 to %c8 step %c1 {
          scf.for %arg7 = %c0 to %c8 step %c1 {
            scf.for %arg8 = %c0 to %c8 step %c1 {
              %1 = arith.addi %arg6, %c2 : index
              %2 = arith.addi %arg7, %c1 : index
              %3 = arith.addi %arg8, %c1 : index
              %4 = memref.load %arg3[%1, %2, %3] : memref<?x10x10xf64>
              %5 = arith.addi %arg6, %c1 : index
              %6 = arith.addi %arg7, %c1 : index
              %7 = arith.addi %arg8, %c1 : index
              %8 = memref.load %arg3[%5, %6, %7] : memref<?x10x10xf64>
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.subf %4, %9 : f64
              %11 = arith.addi %arg7, %c1 : index
              %12 = arith.addi %arg8, %c1 : index
              %13 = memref.load %arg3[%arg6, %11, %12] : memref<?x10x10xf64>
              %14 = arith.addf %10, %13 : f64
              %15 = arith.mulf %14, %cst_0 : f64
              %16 = arith.addi %arg6, %c1 : index
              %17 = arith.addi %arg7, %c2 : index
              %18 = arith.addi %arg8, %c1 : index
              %19 = memref.load %arg3[%16, %17, %18] : memref<?x10x10xf64>
              %20 = arith.subf %19, %9 : f64
              %21 = arith.addi %arg6, %c1 : index
              %22 = arith.addi %arg8, %c1 : index
              %23 = memref.load %arg3[%21, %arg7, %22] : memref<?x10x10xf64>
              %24 = arith.addf %20, %23 : f64
              %25 = arith.mulf %24, %cst_0 : f64
              %26 = arith.addf %15, %25 : f64
              %27 = arith.addi %arg6, %c1 : index
              %28 = arith.addi %arg7, %c1 : index
              %29 = arith.addi %arg8, %c2 : index
              %30 = memref.load %arg3[%27, %28, %29] : memref<?x10x10xf64>
              %31 = arith.subf %30, %9 : f64
              %32 = arith.addi %arg6, %c1 : index
              %33 = arith.addi %arg7, %c1 : index
              %34 = memref.load %arg3[%32, %33, %arg8] : memref<?x10x10xf64>
              %35 = arith.addf %31, %34 : f64
              %36 = arith.mulf %35, %cst_0 : f64
              %37 = arith.addf %26, %36 : f64
              %38 = arith.addf %37, %8 : f64
              %39 = arith.addi %arg6, %c1 : index
              %40 = arith.addi %arg7, %c1 : index
              %41 = arith.addi %arg8, %c1 : index
              memref.store %38, %arg2[%39, %40, %41] : memref<?x10x10xf64>
            }
          }
        }
      }
    }
    return
  }
}

