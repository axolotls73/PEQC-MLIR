module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c39 = arith.constant 39 : index
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
    scf.for %arg3 = %c0 to %c39 step %c32 {
      %5 = arith.addi %arg3, %c32 : index
      %6 = arith.minsi %5, %c39 : index
      scf.for %arg4 = %arg3 to %6 step %c1 {
        %7 = memref.load %alloca_2[] : memref<f64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %cst_0, %8 : f64
        %10 = memref.load %alloca_1[] : memref<f64>
        %11 = arith.mulf %9, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        %12 = arith.addi %arg4, %c1 : index
        scf.for %arg5 = %c0 to %12 step %c1 {
          %22 = arith.muli %arg5, %c-1 : index
          %23 = arith.addi %22, %arg4 : index
          %24 = memref.load %arg1[%23] : memref<?xf64>
          %25 = memref.load %arg2[%arg5] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = memref.load %alloca[] : memref<f64>
          %28 = arith.addf %27, %26 : f64
          memref.store %28, %alloca[] : memref<f64>
        }
        %13 = arith.addi %arg4, %c1 : index
        %14 = memref.load %arg1[%13] : memref<?xf64>
        %15 = memref.load %alloca[] : memref<f64>
        %16 = arith.addf %14, %15 : f64
        %17 = arith.negf %16 : f64
        %18 = arith.divf %17, %11 : f64
        memref.store %18, %alloca_2[] : memref<f64>
        %19 = arith.addi %arg4, %c1 : index
        scf.for %arg5 = %c0 to %19 step %c1 {
          %22 = memref.load %arg2[%arg5] : memref<?xf64>
          %23 = arith.muli %arg5, %c-1 : index
          %24 = arith.addi %23, %arg4 : index
          %25 = memref.load %arg2[%24] : memref<?xf64>
          %26 = arith.mulf %18, %25 : f64
          %27 = arith.addf %22, %26 : f64
          memref.store %27, %alloca_3[%arg5] : memref<40xf64>
        }
        %20 = arith.addi %arg4, %c1 : index
        scf.for %arg5 = %c0 to %20 step %c1 {
          %22 = memref.load %alloca_3[%arg5] : memref<40xf64>
          memref.store %22, %arg2[%arg5] : memref<?xf64>
        }
        %21 = arith.addi %arg4, %c1 : index
        memref.store %18, %arg2[%21] : memref<?xf64>
      }
    }
    return
  }
}

