module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-37 = arith.constant -37 : index
    %c2 = arith.constant 2 : index
    %c38 = arith.constant 38 : index
    %c-38 = arith.constant -38 : index
    %c37 = arith.constant 37 : index
    %c39 = arith.constant 39 : index
    %c-2 = arith.constant -2 : index
    %c-1 = arith.constant -1 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %0, %alloca_4[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    memref.store %0, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    scf.for %arg3 = %c1 to %c40 step %c1 {
      memref.store %cst, %alloca_1[] : memref<f64>
      %5 = memref.load %alloca_1[] : memref<f64>
      %6 = arith.addi %arg3, %c-1 : index
      %7 = memref.load %arg1[%6] : memref<?xf64>
      %8 = memref.load %arg2[%c0] : memref<?xf64>
      %9 = arith.mulf %7, %8 : f64
      %10 = arith.addf %5, %9 : f64
      memref.store %10, %alloca_1[] : memref<f64>
      %11 = memref.load %alloca_3[] : memref<f64>
      %12 = memref.load %alloca_4[] : memref<f64>
      %13 = arith.mulf %12, %12 : f64
      %14 = arith.subf %11, %13 : f64
      %15 = memref.load %alloca_3[] : memref<f64>
      %16 = arith.mulf %14, %15 : f64
      memref.store %16, %alloca_3[] : memref<f64>
      scf.for %arg4 = %c1 to %arg3 step %c1 {
        %28 = memref.load %alloca_1[] : memref<f64>
        %29 = arith.muli %arg4, %c-1 : index
        %30 = arith.addi %arg3, %29 : index
        %31 = arith.addi %30, %c-1 : index
        %32 = memref.load %arg1[%31] : memref<?xf64>
        %33 = memref.load %arg2[%arg4] : memref<?xf64>
        %34 = arith.mulf %32, %33 : f64
        %35 = arith.addf %28, %34 : f64
        memref.store %35, %alloca_1[] : memref<f64>
      }
      %17 = arith.addi %arg3, %c-1 : index
      %18 = arith.cmpi eq, %17, %c0 : index
      scf.if %18 {
        %28 = memref.load %arg1[%c1] : memref<?xf64>
        %29 = memref.load %alloca_1[] : memref<f64>
        %30 = arith.addf %28, %29 : f64
        %31 = arith.negf %30 : f64
        %32 = memref.load %alloca_3[] : memref<f64>
        %33 = arith.divf %31, %32 : f64
        memref.store %33, %alloca[%c0] : memref<1xf64>
        %34 = memref.load %arg2[%c0] : memref<?xf64>
        %35 = memref.load %alloca[%c0] : memref<1xf64>
        %36 = memref.load %arg2[%c0] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = arith.addf %34, %37 : f64
        memref.store %38, %alloca_2[%c0] : memref<40xf64>
        %39 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %39, %arg2[%c0] : memref<?xf64>
        %40 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %40, %alloca_5[%c0] : memref<1xf64>
        memref.store %40, %alloca_4[] : memref<f64>
        %41 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %41, %arg2[%c1] : memref<?xf64>
      }
      %19 = arith.addi %arg3, %c-2 : index
      %20 = arith.cmpi sge, %19, %c0 : index
      scf.if %20 {
        %28 = memref.load %arg1[%arg3] : memref<?xf64>
        %29 = memref.load %alloca_1[] : memref<f64>
        %30 = arith.addf %28, %29 : f64
        %31 = arith.negf %30 : f64
        %32 = memref.load %alloca_3[] : memref<f64>
        %33 = arith.divf %31, %32 : f64
        memref.store %33, %alloca[%c0] : memref<1xf64>
        %34 = memref.load %arg2[%c0] : memref<?xf64>
        %35 = memref.load %alloca[%c0] : memref<1xf64>
        %36 = arith.addi %arg3, %c-1 : index
        %37 = memref.load %arg2[%36] : memref<?xf64>
        %38 = arith.mulf %35, %37 : f64
        %39 = arith.addf %34, %38 : f64
        memref.store %39, %alloca_2[%c0] : memref<40xf64>
        %40 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %40, %alloca_5[%c0] : memref<1xf64>
        memref.store %40, %alloca_4[] : memref<f64>
        %41 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %41, %arg2[%arg3] : memref<?xf64>
      }
      %21 = memref.load %alloca[%c0] : memref<1xf64>
      %22 = arith.addi %arg3, %c37 : index
      scf.for %arg4 = %c39 to %22 step %c1 {
        %28 = arith.addi %arg4, %c-38 : index
        %29 = memref.load %arg2[%28] : memref<?xf64>
        %30 = arith.muli %arg4, %c-1 : index
        %31 = arith.addi %30, %arg3 : index
        %32 = arith.addi %31, %c37 : index
        %33 = memref.load %arg2[%32] : memref<?xf64>
        %34 = arith.mulf %21, %33 : f64
        %35 = arith.addf %29, %34 : f64
        %36 = arith.addi %arg4, %c-38 : index
        memref.store %35, %alloca_2[%36] : memref<40xf64>
      }
      %23 = arith.addi %arg3, %c-2 : index
      %24 = arith.cmpi sge, %23, %c0 : index
      scf.if %24 {
        %28 = arith.addi %arg3, %c-1 : index
        %29 = memref.load %arg2[%28] : memref<?xf64>
        %30 = memref.load %alloca[%c0] : memref<1xf64>
        %31 = memref.load %arg2[%c0] : memref<?xf64>
        %32 = arith.mulf %30, %31 : f64
        %33 = arith.addf %29, %32 : f64
        %34 = arith.addi %arg3, %c-1 : index
        memref.store %33, %alloca_2[%34] : memref<40xf64>
        %35 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %35, %arg2[%c0] : memref<?xf64>
      }
      %25 = arith.addi %arg3, %c38 : index
      %26 = arith.muli %arg3, %c2 : index
      %27 = arith.addi %26, %c37 : index
      scf.for %arg4 = %25 to %27 step %c1 {
        %28 = arith.muli %arg3, %c-1 : index
        %29 = arith.addi %28, %arg4 : index
        %30 = arith.addi %29, %c-37 : index
        %31 = memref.load %alloca_2[%30] : memref<40xf64>
        %32 = arith.muli %arg3, %c-1 : index
        %33 = arith.addi %32, %arg4 : index
        %34 = arith.addi %33, %c-37 : index
        memref.store %31, %arg2[%34] : memref<?xf64>
      }
    }
    return
  }
}

