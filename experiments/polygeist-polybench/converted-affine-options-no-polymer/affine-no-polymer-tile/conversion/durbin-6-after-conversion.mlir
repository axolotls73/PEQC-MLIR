module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    scf.for %arg3 = %c1 to %c40 step %c32 {
      %5 = arith.addi %arg3, %c32 : index
      %6 = arith.minsi %5, %c40 : index
      scf.for %arg4 = %arg3 to %6 step %c1 {
        %7 = memref.load %alloca_2[] : memref<f64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %cst_0, %8 : f64
        %10 = memref.load %alloca_1[] : memref<f64>
        %11 = arith.mulf %9, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %17 = arith.muli %arg5, %c-1 : index
          %18 = arith.addi %arg4, %17 : index
          %19 = arith.addi %18, %c-1 : index
          %20 = memref.load %arg1[%19] : memref<?xf64>
          %21 = memref.load %arg2[%arg5] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = memref.load %alloca[] : memref<f64>
          %24 = arith.addf %23, %22 : f64
          memref.store %24, %alloca[] : memref<f64>
        }
        %12 = memref.load %arg1[%arg4] : memref<?xf64>
        %13 = memref.load %alloca[] : memref<f64>
        %14 = arith.addf %12, %13 : f64
        %15 = arith.negf %14 : f64
        %16 = arith.divf %15, %11 : f64
        memref.store %16, %alloca_2[] : memref<f64>
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %17 = memref.load %arg2[%arg5] : memref<?xf64>
          %18 = arith.muli %arg5, %c-1 : index
          %19 = arith.addi %arg4, %18 : index
          %20 = arith.addi %19, %c-1 : index
          %21 = memref.load %arg2[%20] : memref<?xf64>
          %22 = arith.mulf %16, %21 : f64
          %23 = arith.addf %17, %22 : f64
          memref.store %23, %alloca_3[%arg5] : memref<40xf64>
        }
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %17 = memref.load %alloca_3[%arg5] : memref<40xf64>
          memref.store %17, %arg2[%arg5] : memref<?xf64>
        }
        memref.store %16, %arg2[%arg4] : memref<?xf64>
      }
    }
    return
  }
}

