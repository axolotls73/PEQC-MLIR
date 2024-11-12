module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_1 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = arith.mulf %arg2, %cst_1 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %1 : f32
    %22 = arith.negf %19 : f32
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      memref.store %cst, %alloca_11[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %27 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %28 = arith.mulf %11, %27 : f32
        %29 = memref.load %alloca_11[] : memref<f32>
        %30 = arith.mulf %14, %29 : f32
        %31 = arith.addf %28, %30 : f32
        %32 = memref.load %alloca_9[] : memref<f32>
        %33 = arith.mulf %21, %32 : f32
        %34 = arith.addf %31, %33 : f32
        %35 = memref.load %alloca_8[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        memref.store %37, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %38 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %38, %alloca_11[] : memref<f32>
        memref.store %32, %alloca_8[] : memref<f32>
        %39 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %39, %alloca_9[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_7[] : memref<f32>
      memref.store %cst, %alloca_6[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %27 = memref.load %alloca_7[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = memref.load %alloca_6[] : memref<f32>
        %30 = arith.mulf %20, %29 : f32
        %31 = arith.addf %28, %30 : f32
        %32 = memref.load %alloca_3[] : memref<f32>
        %33 = arith.mulf %21, %32 : f32
        %34 = arith.addf %31, %33 : f32
        %35 = memref.load %alloca[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = arith.muli %arg8, %c-1 : index
        %39 = arith.addi %38, %c63 : index
        memref.store %37, %arg6[%arg7, %39] : memref<?x64xf32>
        memref.store %27, %alloca_6[] : memref<f32>
        %40 = arith.muli %arg8, %c-1 : index
        %41 = arith.addi %40, %c63 : index
        %42 = memref.load %arg3[%arg7, %41] : memref<?x64xf32>
        memref.store %42, %alloca_7[] : memref<f32>
        memref.store %32, %alloca[] : memref<f32>
        %43 = arith.muli %arg8, %c-1 : index
        %44 = arith.addi %43, %c63 : index
        %45 = memref.load %arg6[%arg7, %44] : memref<?x64xf32>
        memref.store %45, %alloca_3[] : memref<f32>
      }
    }
    %23 = async.create_group %c64 : !async.group
    %24 = scf.for %arg7 = %c0 to %c64 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %29 = memref.load %arg5[%arg7, %arg9] : memref<?x64xf32>
          %30 = memref.load %arg6[%arg7, %arg9] : memref<?x64xf32>
          %31 = arith.addf %29, %30 : f32
          memref.store %31, %arg4[%arg7, %arg9] : memref<?x64xf32>
        }
        async.yield
      }
      %27 = async.add_to_group %token, %23 : !async.token
      %28 = arith.addi %arg8, %c1 : index
      scf.yield %28 : index
    }
    async.await_all %23
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_10[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %27 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %28 = arith.mulf %11, %27 : f32
        %29 = memref.load %alloca_10[] : memref<f32>
        %30 = arith.mulf %14, %29 : f32
        %31 = arith.addf %28, %30 : f32
        %32 = memref.load %alloca_9[] : memref<f32>
        %33 = arith.mulf %21, %32 : f32
        %34 = arith.addf %31, %33 : f32
        %35 = memref.load %alloca_8[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        memref.store %37, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %38 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %38, %alloca_10[] : memref<f32>
        memref.store %32, %alloca_8[] : memref<f32>
        %39 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %39, %alloca_9[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_5[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %27 = memref.load %alloca_5[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = memref.load %alloca_4[] : memref<f32>
        %30 = arith.mulf %20, %29 : f32
        %31 = arith.addf %28, %30 : f32
        %32 = memref.load %alloca_3[] : memref<f32>
        %33 = arith.mulf %21, %32 : f32
        %34 = arith.addf %31, %33 : f32
        %35 = memref.load %alloca[] : memref<f32>
        %36 = arith.mulf %22, %35 : f32
        %37 = arith.addf %34, %36 : f32
        %38 = arith.muli %arg8, %c-1 : index
        %39 = arith.addi %38, %c63 : index
        memref.store %37, %arg6[%39, %arg7] : memref<?x64xf32>
        memref.store %27, %alloca_4[] : memref<f32>
        %40 = arith.muli %arg8, %c-1 : index
        %41 = arith.addi %40, %c63 : index
        %42 = memref.load %arg4[%41, %arg7] : memref<?x64xf32>
        memref.store %42, %alloca_5[] : memref<f32>
        memref.store %32, %alloca[] : memref<f32>
        %43 = arith.muli %arg8, %c-1 : index
        %44 = arith.addi %43, %c63 : index
        %45 = memref.load %arg6[%44, %arg7] : memref<?x64xf32>
        memref.store %45, %alloca_3[] : memref<f32>
      }
    }
    %25 = async.create_group %c64 : !async.group
    %26 = scf.for %arg7 = %c0 to %c64 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %29 = memref.load %arg5[%arg7, %arg9] : memref<?x64xf32>
          %30 = memref.load %arg6[%arg7, %arg9] : memref<?x64xf32>
          %31 = arith.addf %29, %30 : f32
          memref.store %31, %arg4[%arg7, %arg9] : memref<?x64xf32>
        }
        async.yield
      }
      %27 = async.add_to_group %token, %25 : !async.token
      %28 = arith.addi %arg8, %c1 : index
      scf.yield %28 : index
    }
    async.await_all %25
    return
  }
}

