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
    %c1 = arith.constant 1 : index
    %c40 = arith.constant 40 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg3 = %c1 to %c40 step %c1_6 {
      %5 = memref.load %alloca_2[] : memref<f64>
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.subf %cst_0, %6 : f64
      %8 = memref.load %alloca_1[] : memref<f64>
      %9 = arith.mulf %7, %8 : f64
      memref.store %9, %alloca_1[] : memref<f64>
      memref.store %cst, %alloca[] : memref<f64>
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg4 = %c0_7 to %arg3 step %c1_8 {
        %c-1 = arith.constant -1 : index
        %15 = arith.muli %arg4, %c-1 : index
        %16 = arith.addi %arg3, %15 : index
        %c-1_13 = arith.constant -1 : index
        %17 = arith.addi %16, %c-1_13 : index
        %18 = memref.load %arg1[%17] : memref<?xf64>
        %19 = memref.load %arg2[%arg4] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloca[] : memref<f64>
      }
      %10 = memref.load %arg1[%arg3] : memref<?xf64>
      %11 = memref.load %alloca[] : memref<f64>
      %12 = arith.addf %10, %11 : f64
      %13 = arith.negf %12 : f64
      %14 = arith.divf %13, %9 : f64
      memref.store %14, %alloca_2[] : memref<f64>
      %c0_9 = arith.constant 0 : index
      %c1_10 = arith.constant 1 : index
      scf.parallel (%arg4) = (%c0_9) to (%arg3) step (%c1_10) {
        %15 = memref.load %arg2[%arg4] : memref<?xf64>
        %c-1 = arith.constant -1 : index
        %16 = arith.muli %arg4, %c-1 : index
        %17 = arith.addi %arg3, %16 : index
        %c-1_13 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_13 : index
        %19 = memref.load %arg2[%18] : memref<?xf64>
        %20 = arith.mulf %14, %19 : f64
        %21 = arith.addf %15, %20 : f64
        memref.store %21, %alloca_3[%arg4] : memref<40xf64>
        scf.reduce 
      }
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      scf.parallel (%arg4) = (%c0_11) to (%arg3) step (%c1_12) {
        %15 = memref.load %alloca_3[%arg4] : memref<40xf64>
        memref.store %15, %arg2[%arg4] : memref<?xf64>
        scf.reduce 
      }
      memref.store %14, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
}

