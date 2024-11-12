module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c42 = arith.constant 42 : index
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
        %33 = memref.load %alloca[] : memref<f64>
        %34 = arith.muli %arg4, %c-1 : index
        %35 = arith.addi %arg3, %34 : index
        %36 = arith.addi %35, %c-1 : index
        %37 = memref.load %arg1[%36] : memref<?xf64>
        %38 = memref.load %arg2[%arg4] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = arith.addf %33, %39 : f64
        memref.store %40, %alloca[] : memref<f64>
      }
      %19 = arith.addi %arg3, %c-1 : index
      %20 = arith.cmpi eq, %19, %c0 : index
      scf.if %20 {
        %33 = memref.load %arg1[%c1] : memref<?xf64>
        %34 = memref.load %alloca[] : memref<f64>
        %35 = arith.addf %33, %34 : f64
        %36 = arith.negf %35 : f64
        %37 = memref.load %alloca_3[] : memref<f64>
        %38 = arith.divf %36, %37 : f64
        memref.store %38, %alloca_1[%c0] : memref<1xf64>
        %39 = memref.load %arg2[%c0] : memref<?xf64>
        %40 = memref.load %alloca_1[%c0] : memref<1xf64>
        %41 = memref.load %arg2[%c0] : memref<?xf64>
        %42 = arith.mulf %40, %41 : f64
        %43 = arith.addf %39, %42 : f64
        memref.store %43, %alloca_2[%c0] : memref<40xf64>
        %44 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %44, %arg2[%c0] : memref<?xf64>
        %45 = memref.load %alloca_1[%c0] : memref<1xf64>
        memref.store %45, %alloca_5[%c0] : memref<1xf64>
        memref.store %45, %alloca_4[] : memref<f64>
        %46 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %46, %arg2[%c1] : memref<?xf64>
      }
      %21 = arith.addi %arg3, %c-2 : index
      %22 = arith.cmpi sge, %21, %c0 : index
      scf.if %22 {
        %33 = memref.load %arg1[%arg3] : memref<?xf64>
        %34 = memref.load %alloca[] : memref<f64>
        %35 = arith.addf %33, %34 : f64
        %36 = arith.negf %35 : f64
        %37 = memref.load %alloca_3[] : memref<f64>
        %38 = arith.divf %36, %37 : f64
        memref.store %38, %alloca_1[%c0] : memref<1xf64>
        %39 = memref.load %arg2[%c0] : memref<?xf64>
        %40 = memref.load %alloca_1[%c0] : memref<1xf64>
        %41 = arith.addi %arg3, %c-1 : index
        %42 = memref.load %arg2[%41] : memref<?xf64>
        %43 = arith.mulf %40, %42 : f64
        %44 = arith.addf %39, %43 : f64
        memref.store %44, %alloca_2[%c0] : memref<40xf64>
        %45 = memref.load %alloca_1[%c0] : memref<1xf64>
        memref.store %45, %alloca_5[%c0] : memref<1xf64>
        memref.store %45, %alloca_4[] : memref<f64>
        %46 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %46, %arg2[%arg3] : memref<?xf64>
      }
      %23 = arith.addi %arg3, %c37 : index
      %24 = async.create_group %c42 : !async.group
      %25 = scf.for %arg4 = %c39 to %23 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %35 = arith.addi %arg4, %c-38 : index
          %36 = memref.load %arg2[%35] : memref<?xf64>
          %37 = memref.load %alloca_1[%c0] : memref<1xf64>
          %38 = arith.muli %arg4, %c-1 : index
          %39 = arith.addi %38, %arg3 : index
          %40 = arith.addi %39, %c37 : index
          %41 = memref.load %arg2[%40] : memref<?xf64>
          %42 = arith.mulf %37, %41 : f64
          %43 = arith.addf %36, %42 : f64
          %44 = arith.addi %arg4, %c-38 : index
          memref.store %43, %alloca_2[%44] : memref<40xf64>
          async.yield
        }
        %33 = async.add_to_group %token, %24 : !async.token
        %34 = arith.addi %arg5, %c1 : index
        scf.yield %34 : index
      }
      async.await_all %24
      %26 = arith.addi %arg3, %c-2 : index
      %27 = arith.cmpi sge, %26, %c0 : index
      scf.if %27 {
        %33 = arith.addi %arg3, %c-1 : index
        %34 = memref.load %arg2[%33] : memref<?xf64>
        %35 = memref.load %alloca_1[%c0] : memref<1xf64>
        %36 = memref.load %arg2[%c0] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = arith.addf %34, %37 : f64
        %39 = arith.addi %arg3, %c-1 : index
        memref.store %38, %alloca_2[%39] : memref<40xf64>
        %40 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %40, %arg2[%c0] : memref<?xf64>
      }
      %28 = arith.addi %arg3, %c38 : index
      %29 = arith.muli %arg3, %c2 : index
      %30 = arith.addi %29, %c37 : index
      %31 = async.create_group %c42 : !async.group
      %32 = scf.for %arg4 = %28 to %30 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %35 = arith.muli %arg3, %c-1 : index
          %36 = arith.addi %35, %arg4 : index
          %37 = arith.addi %36, %c-37 : index
          %38 = memref.load %alloca_2[%37] : memref<40xf64>
          %39 = arith.muli %arg3, %c-1 : index
          %40 = arith.addi %39, %arg4 : index
          %41 = arith.addi %40, %c-37 : index
          memref.store %38, %arg2[%41] : memref<?xf64>
          async.yield
        }
        %33 = async.add_to_group %token, %31 : !async.token
        %34 = arith.addi %arg5, %c1 : index
        scf.yield %34 : index
      }
      async.await_all %31
    }
    return
  }
}

