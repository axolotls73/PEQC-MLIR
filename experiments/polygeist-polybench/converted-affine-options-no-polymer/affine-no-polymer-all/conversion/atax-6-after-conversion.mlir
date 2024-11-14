module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c-32 = arith.constant -32 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c10 = arith.constant 10 : index
    %c128 = arith.constant 128 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg6, %c128 : index
        scf.for %arg8 = %c0 to %c10 step %c1 {
          %7 = arith.muli %arg8, %c4 : index
          %8 = arith.addi %6, %7 : index
          memref.store %cst, %arg4[%8] : memref<?xf64>
          %9 = arith.addi %8, %c1 : index
          memref.store %cst, %arg4[%9] : memref<?xf64>
          %10 = arith.addi %8, %c2 : index
          memref.store %cst, %arg4[%10] : memref<?xf64>
          %11 = arith.addi %8, %c3 : index
          memref.store %cst, %arg4[%11] : memref<?xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg6, %c32 : index
        %7 = arith.addi %6, %c40 : index
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %8 = arith.addi %7, %arg8 : index
          memref.store %cst, %arg4[%8] : memref<?xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %4 = arith.muli %arg6, %c32 : index
      %5 = arith.muli %arg6, %c-32 : index
      %6 = arith.addi %5, %c38 : index
      %7 = arith.minsi %6, %c32 : index
      scf.for %arg7 = %c0 to %7 step %c1 {
        %8 = arith.addi %4, %arg7 : index
        memref.store %cst, %arg5[%8] : memref<?xf64>
        scf.for %arg8 = %c0 to %c10 step %c1 {
          %13 = arith.muli %arg8, %c4 : index
          %14 = memref.load %arg5[%8] : memref<?xf64>
          %15 = memref.load %arg2[%8, %13] : memref<?x42xf64>
          %16 = memref.load %arg3[%13] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          memref.store %18, %arg5[%8] : memref<?xf64>
          %19 = arith.addi %13, %c1 : index
          %20 = memref.load %arg5[%8] : memref<?xf64>
          %21 = memref.load %arg2[%8, %19] : memref<?x42xf64>
          %22 = memref.load %arg3[%19] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          memref.store %24, %arg5[%8] : memref<?xf64>
          %25 = arith.addi %13, %c2 : index
          %26 = memref.load %arg5[%8] : memref<?xf64>
          %27 = memref.load %arg2[%8, %25] : memref<?x42xf64>
          %28 = memref.load %arg3[%25] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          memref.store %30, %arg5[%8] : memref<?xf64>
          %31 = arith.addi %13, %c3 : index
          %32 = memref.load %arg5[%8] : memref<?xf64>
          %33 = memref.load %arg2[%8, %31] : memref<?x42xf64>
          %34 = memref.load %arg3[%31] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          memref.store %36, %arg5[%8] : memref<?xf64>
        }
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %13 = arith.addi %arg8, %c40 : index
          %14 = memref.load %arg5[%8] : memref<?xf64>
          %15 = memref.load %arg2[%8, %13] : memref<?x42xf64>
          %16 = memref.load %arg3[%13] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          memref.store %18, %arg5[%8] : memref<?xf64>
        }
        %9 = async.create_group %c10 : !async.group
        %10 = scf.for %arg8 = %c0 to %c10 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %15 = arith.muli %arg8, %c4 : index
            %16 = memref.load %arg4[%15] : memref<?xf64>
            %17 = memref.load %arg2[%8, %15] : memref<?x42xf64>
            %18 = memref.load %arg5[%8] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            memref.store %20, %arg4[%15] : memref<?xf64>
            %21 = arith.addi %15, %c1 : index
            %22 = memref.load %arg4[%21] : memref<?xf64>
            %23 = memref.load %arg2[%8, %21] : memref<?x42xf64>
            %24 = memref.load %arg5[%8] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = arith.addf %22, %25 : f64
            memref.store %26, %arg4[%21] : memref<?xf64>
            %27 = arith.addi %15, %c2 : index
            %28 = memref.load %arg4[%27] : memref<?xf64>
            %29 = memref.load %arg2[%8, %27] : memref<?x42xf64>
            %30 = memref.load %arg5[%8] : memref<?xf64>
            %31 = arith.mulf %29, %30 : f64
            %32 = arith.addf %28, %31 : f64
            memref.store %32, %arg4[%27] : memref<?xf64>
            %33 = arith.addi %15, %c3 : index
            %34 = memref.load %arg4[%33] : memref<?xf64>
            %35 = memref.load %arg2[%8, %33] : memref<?x42xf64>
            %36 = memref.load %arg5[%8] : memref<?xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = arith.addf %34, %37 : f64
            memref.store %38, %arg4[%33] : memref<?xf64>
            async.yield
          }
          %13 = async.add_to_group %token, %9 : !async.token
          %14 = arith.addi %arg9, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %9
        %11 = async.create_group %c2 : !async.group
        %12 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %15 = arith.addi %arg8, %c40 : index
            %16 = memref.load %arg4[%15] : memref<?xf64>
            %17 = memref.load %arg2[%8, %15] : memref<?x42xf64>
            %18 = memref.load %arg5[%8] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            memref.store %20, %arg4[%15] : memref<?xf64>
            async.yield
          }
          %13 = async.add_to_group %token, %11 : !async.token
          %14 = arith.addi %arg9, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
      }
    }
    return
  }
}

