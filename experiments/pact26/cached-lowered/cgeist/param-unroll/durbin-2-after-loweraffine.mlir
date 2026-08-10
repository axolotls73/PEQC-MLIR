module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
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
    %5 = arith.index_cast %arg0 : i32 to index
    %c1 = arith.constant 1 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg3 = %c1 to %5 step %c1_6 {
      %6 = memref.load %alloca_2[] : memref<f64>
      %7 = arith.mulf %6, %6 : f64
      %8 = arith.subf %cst_0, %7 : f64
      %9 = memref.load %alloca_1[] : memref<f64>
      %10 = arith.mulf %8, %9 : f64
      memref.store %10, %alloca_1[] : memref<f64>
      memref.store %cst, %alloca[] : memref<f64>
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg4 = %c0_7 to %arg3 step %c1_8 {
        %c-1 = arith.constant -1 : index
        %16 = arith.muli %arg4, %c-1 overflow<nsw> : index
        %17 = arith.addi %arg3, %16 : index
        %c-1_13 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_13 : index
        %19 = memref.load %arg1[%18] : memref<?xf64>
        %20 = memref.load %arg2[%arg4] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = memref.load %alloca[] : memref<f64>
        %23 = arith.addf %22, %21 : f64
        memref.store %23, %alloca[] : memref<f64>
      }
      %11 = memref.load %arg1[%arg3] : memref<?xf64>
      %12 = memref.load %alloca[] : memref<f64>
      %13 = arith.addf %11, %12 : f64
      %14 = arith.negf %13 : f64
      %15 = arith.divf %14, %10 : f64
      memref.store %15, %alloca_2[] : memref<f64>
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg4 = %c0_9 to %arg3 step %c1_10 {
        %16 = memref.load %arg2[%arg4] : memref<?xf64>
        %c-1 = arith.constant -1 : index
        %17 = arith.muli %arg4, %c-1 overflow<nsw> : index
        %18 = arith.addi %arg3, %17 : index
        %c-1_13 = arith.constant -1 : index
        %19 = arith.addi %18, %c-1_13 : index
        %20 = memref.load %arg2[%19] : memref<?xf64>
        %21 = arith.mulf %15, %20 : f64
        %22 = arith.addf %16, %21 : f64
        memref.store %22, %alloca_3[%arg4] : memref<40xf64>
      }
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg4 = %c0_11 to %arg3 step %c1_12 {
        %16 = memref.load %alloca_3[%arg4] : memref<40xf64>
        memref.store %16, %arg2[%arg4] : memref<?xf64>
      }
      memref.store %15, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
}

