module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-37 = arith.constant -37 : index
    %c38 = arith.constant 38 : index
    %c37 = arith.constant 37 : index
    %c-38 = arith.constant -38 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c39 = arith.constant 39 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %0 = memref.load %arg1[%c0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    memref.store %1, %arg2[%c0] : memref<?xf64>
    %2 = llvm.mlir.undef : f64
    memref.store %2, %alloca_4[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    %5 = llvm.mlir.undef : f64
    memref.store %5, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    %6 = llvm.mlir.undef : f64
    memref.store %6, %alloca_1[] : memref<f64>
    scf.for %arg3 = %c0 to %c39 step %c1 {
      %7 = arith.addi %arg3, %c1 : index
      memref.store %cst, %alloca_1[] : memref<f64>
      %8 = memref.load %alloca_1[] : memref<f64>
      %9 = arith.addi %7, %c-1 : index
      %10 = memref.load %arg1[%9] : memref<?xf64>
      %11 = memref.load %arg2[%c0] : memref<?xf64>
      %12 = arith.mulf %10, %11 : f64
      %13 = arith.addf %8, %12 : f64
      memref.store %13, %alloca_1[] : memref<f64>
      %14 = memref.load %alloca_3[] : memref<f64>
      %15 = memref.load %alloca_4[] : memref<f64>
      %16 = arith.mulf %15, %15 : f64
      %17 = arith.subf %14, %16 : f64
      %18 = memref.load %alloca_3[] : memref<f64>
      %19 = arith.mulf %17, %18 : f64
      memref.store %19, %alloca_3[] : memref<f64>
      scf.for %arg4 = %c0 to %arg3 step %c1 {
        %26 = arith.addi %arg4, %c1 : index
        %27 = memref.load %alloca_1[] : memref<f64>
        %28 = arith.muli %26, %c-1 : index
        %29 = arith.addi %7, %28 : index
        %30 = arith.addi %29, %c-1 : index
        %31 = memref.load %arg1[%30] : memref<?xf64>
        %32 = memref.load %arg2[%26] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %27, %33 : f64
        memref.store %34, %alloca_1[] : memref<f64>
      }
      %20 = arith.cmpi eq, %arg3, %c0 : index
      scf.if %20 {
        %26 = memref.load %arg1[%c1] : memref<?xf64>
        %27 = memref.load %alloca_1[] : memref<f64>
        %28 = arith.addf %26, %27 : f64
        %29 = arith.negf %28 : f64
        %30 = memref.load %alloca_3[] : memref<f64>
        %31 = arith.divf %29, %30 : f64
        memref.store %31, %alloca[%c0] : memref<1xf64>
        %32 = memref.load %arg2[%c0] : memref<?xf64>
        %33 = memref.load %alloca[%c0] : memref<1xf64>
        %34 = memref.load %arg2[%c0] : memref<?xf64>
        %35 = arith.mulf %33, %34 : f64
        %36 = arith.addf %32, %35 : f64
        memref.store %36, %alloca_2[%c0] : memref<40xf64>
        %37 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %37, %arg2[%c0] : memref<?xf64>
        %38 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %38, %alloca_5[%c0] : memref<1xf64>
        memref.store %38, %alloca_4[] : memref<f64>
        %39 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %39, %arg2[%c1] : memref<?xf64>
      }
      %21 = arith.addi %arg3, %c-1 : index
      %22 = arith.cmpi sge, %21, %c0 : index
      scf.if %22 {
        %26 = memref.load %arg1[%7] : memref<?xf64>
        %27 = memref.load %alloca_1[] : memref<f64>
        %28 = arith.addf %26, %27 : f64
        %29 = arith.negf %28 : f64
        %30 = memref.load %alloca_3[] : memref<f64>
        %31 = arith.divf %29, %30 : f64
        memref.store %31, %alloca[%c0] : memref<1xf64>
        %32 = memref.load %arg2[%c0] : memref<?xf64>
        %33 = memref.load %alloca[%c0] : memref<1xf64>
        %34 = arith.addi %7, %c-1 : index
        %35 = memref.load %arg2[%34] : memref<?xf64>
        %36 = arith.mulf %33, %35 : f64
        %37 = arith.addf %32, %36 : f64
        memref.store %37, %alloca_2[%c0] : memref<40xf64>
        %38 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %38, %alloca_5[%c0] : memref<1xf64>
        memref.store %38, %alloca_4[] : memref<f64>
        %39 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %39, %arg2[%7] : memref<?xf64>
      }
      %23 = arith.addi %arg3, %c-1 : index
      scf.for %arg4 = %c0 to %23 step %c1 {
        %26 = arith.addi %arg4, %c39 : index
        %27 = arith.addi %26, %c-38 : index
        %28 = memref.load %arg2[%27] : memref<?xf64>
        %29 = memref.load %alloca[%c0] : memref<1xf64>
        %30 = arith.muli %26, %c-1 : index
        %31 = arith.addi %30, %7 : index
        %32 = arith.addi %31, %c37 : index
        %33 = memref.load %arg2[%32] : memref<?xf64>
        %34 = arith.mulf %29, %33 : f64
        %35 = arith.addf %28, %34 : f64
        %36 = arith.addi %26, %c-38 : index
        memref.store %35, %alloca_2[%36] : memref<40xf64>
      }
      %24 = arith.addi %arg3, %c-1 : index
      %25 = arith.cmpi sge, %24, %c0 : index
      scf.if %25 {
        %26 = arith.addi %7, %c-1 : index
        %27 = memref.load %arg2[%26] : memref<?xf64>
        %28 = memref.load %alloca[%c0] : memref<1xf64>
        %29 = memref.load %arg2[%c0] : memref<?xf64>
        %30 = arith.mulf %28, %29 : f64
        %31 = arith.addf %27, %30 : f64
        %32 = arith.addi %7, %c-1 : index
        memref.store %31, %alloca_2[%32] : memref<40xf64>
        %33 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %33, %arg2[%c0] : memref<?xf64>
      }
      scf.for %arg4 = %c0 to %arg3 step %c1 {
        %26 = arith.addi %7, %arg4 : index
        %27 = arith.addi %26, %c38 : index
        %28 = arith.muli %7, %c-1 : index
        %29 = arith.addi %28, %27 : index
        %30 = arith.addi %29, %c-37 : index
        %31 = memref.load %alloca_2[%30] : memref<40xf64>
        %32 = arith.muli %7, %c-1 : index
        %33 = arith.addi %32, %27 : index
        %34 = arith.addi %33, %c-37 : index
        memref.store %31, %arg2[%34] : memref<?xf64>
      }
    }
    return
  }
}

