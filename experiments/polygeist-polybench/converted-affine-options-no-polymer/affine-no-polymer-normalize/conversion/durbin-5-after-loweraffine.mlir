module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %c0 = arith.constant 0 : index
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    %c0_4 = arith.constant 0 : index
    memref.store %2, %arg2[%c0_4] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %c0_5 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_5] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    %c0_6 = arith.constant 0 : index
    %c39 = arith.constant 39 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_6 to %c39 step %c1 {
      %c1_7 = arith.constant 1 : index
      %5 = arith.addi %arg3, %c1_7 : index
      %6 = memref.load %alloca_2[] : memref<f64>
      %7 = arith.mulf %6, %6 : f64
      %8 = arith.subf %cst_0, %7 : f64
      %9 = memref.load %alloca_1[] : memref<f64>
      %10 = arith.mulf %8, %9 : f64
      memref.store %10, %alloca_1[] : memref<f64>
      memref.store %cst, %alloca[] : memref<f64>
      %c0_8 = arith.constant 0 : index
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %arg3, %c1_9 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg4 = %c0_8 to %11 step %c1_10 {
        %c-1 = arith.constant -1 : index
        %19 = arith.muli %arg4, %c-1 : index
        %20 = arith.addi %5, %19 : index
        %c-1_17 = arith.constant -1 : index
        %21 = arith.addi %20, %c-1_17 : index
        %22 = memref.load %arg1[%21] : memref<?xf64>
        %23 = memref.load %arg2[%arg4] : memref<?xf64>
        %24 = arith.mulf %22, %23 : f64
        %25 = memref.load %alloca[] : memref<f64>
        %26 = arith.addf %25, %24 : f64
        memref.store %26, %alloca[] : memref<f64>
      }
      %12 = memref.load %arg1[%5] : memref<?xf64>
      %13 = memref.load %alloca[] : memref<f64>
      %14 = arith.addf %12, %13 : f64
      %15 = arith.negf %14 : f64
      %16 = arith.divf %15, %10 : f64
      memref.store %16, %alloca_2[] : memref<f64>
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %17 = arith.addi %arg3, %c1_12 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg4 = %c0_11 to %17 step %c1_13 {
        %19 = memref.load %arg2[%arg4] : memref<?xf64>
        %c-1 = arith.constant -1 : index
        %20 = arith.muli %arg4, %c-1 : index
        %21 = arith.addi %5, %20 : index
        %c-1_17 = arith.constant -1 : index
        %22 = arith.addi %21, %c-1_17 : index
        %23 = memref.load %arg2[%22] : memref<?xf64>
        %24 = arith.mulf %16, %23 : f64
        %25 = arith.addf %19, %24 : f64
        memref.store %25, %alloca_3[%arg4] : memref<40xf64>
      }
      %c0_14 = arith.constant 0 : index
      %c1_15 = arith.constant 1 : index
      %18 = arith.addi %arg3, %c1_15 : index
      %c1_16 = arith.constant 1 : index
      scf.for %arg4 = %c0_14 to %18 step %c1_16 {
        %19 = memref.load %alloca_3[%arg4] : memref<40xf64>
        memref.store %19, %arg2[%arg4] : memref<?xf64>
      }
      memref.store %16, %arg2[%5] : memref<?xf64>
    }
    return
  }
}

