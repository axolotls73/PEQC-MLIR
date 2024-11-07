module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c8 = arith.constant 8 : index
    %c0 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %c9 = arith.constant 9 : index
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    scf.for %arg4 = %c1 to %c21 step %c1 {
      %0 = async.create_group %c8 : !async.group
      %1 = scf.for %arg5 = %c1 to %c9 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            scf.for %arg8 = %c1 to %c9 step %c1 {
              %6 = arith.addi %arg5, %c1 : index
              %7 = memref.load %arg2[%6, %arg7, %arg8] : memref<?x10x10xf64>
              %8 = memref.load %arg2[%arg5, %arg7, %arg8] : memref<?x10x10xf64>
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.subf %7, %9 : f64
              %11 = arith.addi %arg5, %c-1 : index
              %12 = memref.load %arg2[%11, %arg7, %arg8] : memref<?x10x10xf64>
              %13 = arith.addf %10, %12 : f64
              %14 = arith.mulf %13, %cst_0 : f64
              %15 = arith.addi %arg7, %c1 : index
              %16 = memref.load %arg2[%arg5, %15, %arg8] : memref<?x10x10xf64>
              %17 = arith.subf %16, %9 : f64
              %18 = arith.addi %arg7, %c-1 : index
              %19 = memref.load %arg2[%arg5, %18, %arg8] : memref<?x10x10xf64>
              %20 = arith.addf %17, %19 : f64
              %21 = arith.mulf %20, %cst_0 : f64
              %22 = arith.addf %14, %21 : f64
              %23 = arith.addi %arg8, %c1 : index
              %24 = memref.load %arg2[%arg5, %arg7, %23] : memref<?x10x10xf64>
              %25 = arith.subf %24, %9 : f64
              %26 = arith.addi %arg8, %c-1 : index
              %27 = memref.load %arg2[%arg5, %arg7, %26] : memref<?x10x10xf64>
              %28 = arith.addf %25, %27 : f64
              %29 = arith.mulf %28, %cst_0 : f64
              %30 = arith.addf %22, %29 : f64
              %31 = arith.addf %30, %8 : f64
              memref.store %31, %arg3[%arg5, %arg7, %arg8] : memref<?x10x10xf64>
            }
          }
          async.yield
        }
        %4 = async.add_to_group %token, %0 : !async.token
        %5 = arith.addi %arg6, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %0
      %2 = async.create_group %c8 : !async.group
      %3 = scf.for %arg5 = %c1 to %c9 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg7 = %c1 to %c9 step %c1 {
            scf.for %arg8 = %c1 to %c9 step %c1 {
              %6 = arith.addi %arg5, %c1 : index
              %7 = memref.load %arg3[%6, %arg7, %arg8] : memref<?x10x10xf64>
              %8 = memref.load %arg3[%arg5, %arg7, %arg8] : memref<?x10x10xf64>
              %9 = arith.mulf %8, %cst : f64
              %10 = arith.subf %7, %9 : f64
              %11 = arith.addi %arg5, %c-1 : index
              %12 = memref.load %arg3[%11, %arg7, %arg8] : memref<?x10x10xf64>
              %13 = arith.addf %10, %12 : f64
              %14 = arith.mulf %13, %cst_0 : f64
              %15 = arith.addi %arg7, %c1 : index
              %16 = memref.load %arg3[%arg5, %15, %arg8] : memref<?x10x10xf64>
              %17 = arith.subf %16, %9 : f64
              %18 = arith.addi %arg7, %c-1 : index
              %19 = memref.load %arg3[%arg5, %18, %arg8] : memref<?x10x10xf64>
              %20 = arith.addf %17, %19 : f64
              %21 = arith.mulf %20, %cst_0 : f64
              %22 = arith.addf %14, %21 : f64
              %23 = arith.addi %arg8, %c1 : index
              %24 = memref.load %arg3[%arg5, %arg7, %23] : memref<?x10x10xf64>
              %25 = arith.subf %24, %9 : f64
              %26 = arith.addi %arg8, %c-1 : index
              %27 = memref.load %arg3[%arg5, %arg7, %26] : memref<?x10x10xf64>
              %28 = arith.addf %25, %27 : f64
              %29 = arith.mulf %28, %cst_0 : f64
              %30 = arith.addf %22, %29 : f64
              %31 = arith.addf %30, %8 : f64
              memref.store %31, %arg2[%arg5, %arg7, %arg8] : memref<?x10x10xf64>
            }
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg6, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

