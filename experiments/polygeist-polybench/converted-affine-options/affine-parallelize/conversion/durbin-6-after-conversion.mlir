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
        %31 = memref.load %alloca_1[] : memref<f64>
        %32 = arith.muli %arg4, %c-1 : index
        %33 = arith.addi %arg3, %32 : index
        %34 = arith.addi %33, %c-1 : index
        %35 = memref.load %arg1[%34] : memref<?xf64>
        %36 = memref.load %arg2[%arg4] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = arith.addf %31, %37 : f64
        memref.store %38, %alloca_1[] : memref<f64>
      }
      %17 = arith.addi %arg3, %c-1 : index
      %18 = arith.cmpi eq, %17, %c0 : index
      scf.if %18 {
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
      %19 = arith.addi %arg3, %c-2 : index
      %20 = arith.cmpi sge, %19, %c0 : index
      scf.if %20 {
        %31 = memref.load %arg1[%arg3] : memref<?xf64>
        %32 = memref.load %alloca_1[] : memref<f64>
        %33 = arith.addf %31, %32 : f64
        %34 = arith.negf %33 : f64
        %35 = memref.load %alloca_3[] : memref<f64>
        %36 = arith.divf %34, %35 : f64
        memref.store %36, %alloca[%c0] : memref<1xf64>
        %37 = memref.load %arg2[%c0] : memref<?xf64>
        %38 = memref.load %alloca[%c0] : memref<1xf64>
        %39 = arith.addi %arg3, %c-1 : index
        %40 = memref.load %arg2[%39] : memref<?xf64>
        %41 = arith.mulf %38, %40 : f64
        %42 = arith.addf %37, %41 : f64
        memref.store %42, %alloca_2[%c0] : memref<40xf64>
        %43 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %43, %alloca_5[%c0] : memref<1xf64>
        memref.store %43, %alloca_4[] : memref<f64>
        %44 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %44, %arg2[%arg3] : memref<?xf64>
      }
      %21 = arith.addi %arg3, %c37 : index
      %22 = async.create_group %c42 : !async.group
      %23 = scf.for %arg4 = %c39 to %21 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %33 = arith.addi %arg4, %c-38 : index
          %34 = memref.load %arg2[%33] : memref<?xf64>
          %35 = memref.load %alloca[%c0] : memref<1xf64>
          %36 = arith.muli %arg4, %c-1 : index
          %37 = arith.addi %36, %arg3 : index
          %38 = arith.addi %37, %c37 : index
          %39 = memref.load %arg2[%38] : memref<?xf64>
          %40 = arith.mulf %35, %39 : f64
          %41 = arith.addf %34, %40 : f64
          %42 = arith.addi %arg4, %c-38 : index
          memref.store %41, %alloca_2[%42] : memref<40xf64>
          async.yield
        }
        %31 = async.add_to_group %token, %22 : !async.token
        %32 = arith.addi %arg5, %c1 : index
        scf.yield %32 : index
      }
      async.await_all %22
      %24 = arith.addi %arg3, %c-2 : index
      %25 = arith.cmpi sge, %24, %c0 : index
      scf.if %25 {
        %31 = arith.addi %arg3, %c-1 : index
        %32 = memref.load %arg2[%31] : memref<?xf64>
        %33 = memref.load %alloca[%c0] : memref<1xf64>
        %34 = memref.load %arg2[%c0] : memref<?xf64>
        %35 = arith.mulf %33, %34 : f64
        %36 = arith.addf %32, %35 : f64
        %37 = arith.addi %arg3, %c-1 : index
        memref.store %36, %alloca_2[%37] : memref<40xf64>
        %38 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %38, %arg2[%c0] : memref<?xf64>
      }
      %26 = arith.addi %arg3, %c38 : index
      %27 = arith.muli %arg3, %c2 : index
      %28 = arith.addi %27, %c37 : index
      %29 = async.create_group %c42 : !async.group
      %30 = scf.for %arg4 = %26 to %28 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %33 = arith.muli %arg3, %c-1 : index
          %34 = arith.addi %33, %arg4 : index
          %35 = arith.addi %34, %c-37 : index
          %36 = memref.load %alloca_2[%35] : memref<40xf64>
          %37 = arith.muli %arg3, %c-1 : index
          %38 = arith.addi %37, %arg4 : index
          %39 = arith.addi %38, %c-37 : index
          memref.store %36, %arg2[%39] : memref<?xf64>
          async.yield
        }
        %31 = async.add_to_group %token, %29 : !async.token
        %32 = arith.addi %arg5, %c1 : index
        scf.yield %32 : index
      }
      async.await_all %29
    }
    return
  }
}

