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
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
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
    memref.store %6, %alloca[] : memref<f64>
    scf.for %arg3 = %c1 to %c40 step %c1 {
      memref.store %cst, %alloca[] : memref<f64>
      %7 = memref.load %alloca[] : memref<f64>
      %8 = arith.addi %arg3, %c-1 : index
      %9 = memref.load %arg1[%8] : memref<?xf64>
      %10 = memref.load %arg2[%c0] : memref<?xf64>
      %11 = arith.mulf %9, %10 : f64
      %12 = arith.addf %7, %11 : f64
      memref.store %12, %alloca[] : memref<f64>
      %13 = memref.load %alloca_3[] : memref<f64>
      %14 = memref.load %alloca_4[] : memref<f64>
      %15 = arith.mulf %14, %14 : f64
      %16 = arith.subf %13, %15 : f64
      %17 = memref.load %alloca_3[] : memref<f64>
      %18 = arith.mulf %16, %17 : f64
      memref.store %18, %alloca_3[] : memref<f64>
      scf.for %arg4 = %c1 to %arg3 step %c1 {
        %29 = memref.load %alloca[] : memref<f64>
        %30 = arith.muli %arg4, %c-1 : index
        %31 = arith.addi %arg3, %30 : index
        %32 = arith.addi %31, %c-1 : index
        %33 = memref.load %arg1[%32] : memref<?xf64>
        %34 = memref.load %arg2[%arg4] : memref<?xf64>
        %35 = arith.mulf %33, %34 : f64
        %36 = arith.addf %29, %35 : f64
        memref.store %36, %alloca[] : memref<f64>
      }
      %19 = arith.addi %arg3, %c-1 : index
      %20 = arith.cmpi eq, %19, %c0 : index
      scf.if %20 {
        %29 = memref.load %arg1[%c1] : memref<?xf64>
        %30 = memref.load %alloca[] : memref<f64>
        %31 = arith.addf %29, %30 : f64
        %32 = arith.negf %31 : f64
        %33 = memref.load %alloca_3[] : memref<f64>
        %34 = arith.divf %32, %33 : f64
        memref.store %34, %alloca_1[%c0] : memref<1xf64>
        %35 = memref.load %arg2[%c0] : memref<?xf64>
        %36 = memref.load %alloca_1[%c0] : memref<1xf64>
        %37 = memref.load %arg2[%c0] : memref<?xf64>
        %38 = arith.mulf %36, %37 : f64
        %39 = arith.addf %35, %38 : f64
        memref.store %39, %alloca_2[%c0] : memref<40xf64>
        %40 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %40, %arg2[%c0] : memref<?xf64>
        %41 = memref.load %alloca_1[%c0] : memref<1xf64>
        memref.store %41, %alloca_5[%c0] : memref<1xf64>
        memref.store %41, %alloca_4[] : memref<f64>
        %42 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %42, %arg2[%c1] : memref<?xf64>
      }
      %21 = arith.addi %arg3, %c-2 : index
      %22 = arith.cmpi sge, %21, %c0 : index
      scf.if %22 {
        %29 = memref.load %arg1[%arg3] : memref<?xf64>
        %30 = memref.load %alloca[] : memref<f64>
        %31 = arith.addf %29, %30 : f64
        %32 = arith.negf %31 : f64
        %33 = memref.load %alloca_3[] : memref<f64>
        %34 = arith.divf %32, %33 : f64
        memref.store %34, %alloca_1[%c0] : memref<1xf64>
        %35 = memref.load %arg2[%c0] : memref<?xf64>
        %36 = memref.load %alloca_1[%c0] : memref<1xf64>
        %37 = arith.addi %arg3, %c-1 : index
        %38 = memref.load %arg2[%37] : memref<?xf64>
        %39 = arith.mulf %36, %38 : f64
        %40 = arith.addf %35, %39 : f64
        memref.store %40, %alloca_2[%c0] : memref<40xf64>
        %41 = memref.load %alloca_1[%c0] : memref<1xf64>
        memref.store %41, %alloca_5[%c0] : memref<1xf64>
        memref.store %41, %alloca_4[] : memref<f64>
        %42 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %42, %arg2[%arg3] : memref<?xf64>
      }
      %23 = arith.addi %arg3, %c37 : index
      scf.for %arg4 = %c39 to %23 step %c1 {
        %29 = arith.addi %arg4, %c-38 : index
        %30 = memref.load %arg2[%29] : memref<?xf64>
        %31 = memref.load %alloca_1[%c0] : memref<1xf64>
        %32 = arith.muli %arg4, %c-1 : index
        %33 = arith.addi %32, %arg3 : index
        %34 = arith.addi %33, %c37 : index
        %35 = memref.load %arg2[%34] : memref<?xf64>
        %36 = arith.mulf %31, %35 : f64
        %37 = arith.addf %30, %36 : f64
        %38 = arith.addi %arg4, %c-38 : index
        memref.store %37, %alloca_2[%38] : memref<40xf64>
      }
      %24 = arith.addi %arg3, %c-2 : index
      %25 = arith.cmpi sge, %24, %c0 : index
      scf.if %25 {
        %29 = arith.addi %arg3, %c-1 : index
        %30 = memref.load %arg2[%29] : memref<?xf64>
        %31 = memref.load %alloca_1[%c0] : memref<1xf64>
        %32 = memref.load %arg2[%c0] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        %35 = arith.addi %arg3, %c-1 : index
        memref.store %34, %alloca_2[%35] : memref<40xf64>
        %36 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %36, %arg2[%c0] : memref<?xf64>
      }
      %26 = arith.addi %arg3, %c38 : index
      %27 = arith.muli %arg3, %c2 : index
      %28 = arith.addi %27, %c37 : index
      scf.for %arg4 = %26 to %28 step %c1 {
        %29 = arith.muli %arg3, %c-1 : index
        %30 = arith.addi %29, %arg4 : index
        %31 = arith.addi %30, %c-37 : index
        %32 = memref.load %alloca_2[%31] : memref<40xf64>
        %33 = arith.muli %arg3, %c-1 : index
        %34 = arith.addi %33, %arg4 : index
        %35 = arith.addi %34, %c-37 : index
        memref.store %32, %arg2[%35] : memref<?xf64>
      }
    }
    return
  }
}

