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
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
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
    scf.for %arg3 = %c1 to %c40 step %c32 {
      %7 = arith.addi %arg3, %c32 : index
      %8 = arith.minsi %7, %c40 : index
      scf.for %arg4 = %arg3 to %8 step %c1 {
        memref.store %cst, %alloca_1[] : memref<f64>
        %9 = memref.load %alloca_1[] : memref<f64>
        %10 = arith.addi %arg4, %c-1 : index
        %11 = memref.load %arg1[%10] : memref<?xf64>
        %12 = memref.load %arg2[%c0] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.addf %9, %13 : f64
        memref.store %14, %alloca_1[] : memref<f64>
        %15 = memref.load %alloca_3[] : memref<f64>
        %16 = memref.load %alloca_4[] : memref<f64>
        %17 = arith.mulf %16, %16 : f64
        %18 = arith.subf %15, %17 : f64
        %19 = memref.load %alloca_3[] : memref<f64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloca_3[] : memref<f64>
        scf.for %arg5 = %c1 to %arg4 step %c1 {
          %31 = memref.load %alloca_1[] : memref<f64>
          %32 = arith.muli %arg5, %c-1 : index
          %33 = arith.addi %arg4, %32 : index
          %34 = arith.addi %33, %c-1 : index
          %35 = memref.load %arg1[%34] : memref<?xf64>
          %36 = memref.load %arg2[%arg5] : memref<?xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = arith.addf %31, %37 : f64
          memref.store %38, %alloca_1[] : memref<f64>
        }
        %21 = arith.addi %arg4, %c-1 : index
        %22 = arith.cmpi eq, %21, %c0 : index
        scf.if %22 {
          %31 = memref.load %arg1[%c1] : memref<?xf64>
          %32 = memref.load %alloca_1[] : memref<f64>
          %33 = arith.addf %31, %32 : f64
          %34 = arith.negf %33 : f64
          %35 = memref.load %alloca_3[] : memref<f64>
          %36 = arith.divf %34, %35 : f64
          memref.store %36, %alloca[%c0] : memref<1xf64>
          %37 = memref.load %arg2[%c0] : memref<?xf64>
          %38 = memref.load %alloca[%c0] : memref<1xf64>
          %39 = memref.load %arg2[%c0] : memref<?xf64>
          %40 = arith.mulf %38, %39 : f64
          %41 = arith.addf %37, %40 : f64
          memref.store %41, %alloca_2[%c0] : memref<40xf64>
          %42 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %42, %arg2[%c0] : memref<?xf64>
          %43 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %43, %alloca_5[%c0] : memref<1xf64>
          memref.store %43, %alloca_4[] : memref<f64>
          %44 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %44, %arg2[%c1] : memref<?xf64>
        }
        %23 = arith.addi %arg4, %c-2 : index
        %24 = arith.cmpi sge, %23, %c0 : index
        scf.if %24 {
          %31 = memref.load %arg1[%arg4] : memref<?xf64>
          %32 = memref.load %alloca_1[] : memref<f64>
          %33 = arith.addf %31, %32 : f64
          %34 = arith.negf %33 : f64
          %35 = memref.load %alloca_3[] : memref<f64>
          %36 = arith.divf %34, %35 : f64
          memref.store %36, %alloca[%c0] : memref<1xf64>
          %37 = memref.load %arg2[%c0] : memref<?xf64>
          %38 = memref.load %alloca[%c0] : memref<1xf64>
          %39 = arith.addi %arg4, %c-1 : index
          %40 = memref.load %arg2[%39] : memref<?xf64>
          %41 = arith.mulf %38, %40 : f64
          %42 = arith.addf %37, %41 : f64
          memref.store %42, %alloca_2[%c0] : memref<40xf64>
          %43 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %43, %alloca_5[%c0] : memref<1xf64>
          memref.store %43, %alloca_4[] : memref<f64>
          %44 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %44, %arg2[%arg4] : memref<?xf64>
        }
        %25 = arith.addi %arg4, %c37 : index
        scf.for %arg5 = %c39 to %25 step %c1 {
          %31 = arith.addi %arg5, %c-38 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %33 = memref.load %alloca[%c0] : memref<1xf64>
          %34 = arith.muli %arg5, %c-1 : index
          %35 = arith.addi %34, %arg4 : index
          %36 = arith.addi %35, %c37 : index
          %37 = memref.load %arg2[%36] : memref<?xf64>
          %38 = arith.mulf %33, %37 : f64
          %39 = arith.addf %32, %38 : f64
          %40 = arith.addi %arg5, %c-38 : index
          memref.store %39, %alloca_2[%40] : memref<40xf64>
        }
        %26 = arith.addi %arg4, %c-2 : index
        %27 = arith.cmpi sge, %26, %c0 : index
        scf.if %27 {
          %31 = arith.addi %arg4, %c-1 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %33 = memref.load %alloca[%c0] : memref<1xf64>
          %34 = memref.load %arg2[%c0] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          %37 = arith.addi %arg4, %c-1 : index
          memref.store %36, %alloca_2[%37] : memref<40xf64>
          %38 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %38, %arg2[%c0] : memref<?xf64>
        }
        %28 = arith.addi %arg4, %c38 : index
        %29 = arith.muli %arg4, %c2 : index
        %30 = arith.addi %29, %c37 : index
        scf.for %arg5 = %28 to %30 step %c1 {
          %31 = arith.muli %arg4, %c-1 : index
          %32 = arith.addi %31, %arg5 : index
          %33 = arith.addi %32, %c-37 : index
          %34 = memref.load %alloca_2[%33] : memref<40xf64>
          %35 = arith.muli %arg4, %c-1 : index
          %36 = arith.addi %35, %arg5 : index
          %37 = arith.addi %36, %c-37 : index
          memref.store %34, %arg2[%37] : memref<?xf64>
        }
      }
    }
    return
  }
}

