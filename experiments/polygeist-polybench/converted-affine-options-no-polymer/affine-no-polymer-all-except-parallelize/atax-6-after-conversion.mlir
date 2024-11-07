module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c40 = arith.constant 40 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %2 = arith.muli %arg6, %c4 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
        %5 = arith.addi %4, %c1 : index
        memref.store %cst, %arg4[%5] : memref<?xf64>
        %6 = arith.addi %4, %c2 : index
        memref.store %cst, %arg4[%6] : memref<?xf64>
        %7 = arith.addi %4, %c3 : index
        memref.store %cst, %arg4[%7] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.addi %arg6, %c40 : index
        %5 = async.create_group %c1 : !async.group
        %6 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            %9 = arith.addi %4, %arg8 : index
            memref.store %cst, %arg4[%9] : memref<?xf64>
            async.yield
          }
          %7 = async.add_to_group %token_0, %5 : !async.token
          %8 = arith.addi %arg9, %c1 : index
          scf.yield %8 : index
        }
        async.await_all %5
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg6 = %c0 to %c38 step %c1 {
      %2 = async.create_group %c1 : !async.group
      %3 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          %6 = arith.addi %arg6, %arg7 : index
          memref.store %cst, %arg5[%6] : memref<?xf64>
          scf.for %arg9 = %c0 to %c10 step %c1 {
            %11 = arith.muli %arg9, %c4 : index
            %12 = memref.load %arg5[%6] : memref<?xf64>
            %13 = memref.load %arg2[%6, %11] : memref<?x42xf64>
            %14 = memref.load %arg3[%11] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %12, %15 : f64
            memref.store %16, %arg5[%6] : memref<?xf64>
            %17 = arith.addi %11, %c1 : index
            %18 = memref.load %arg5[%6] : memref<?xf64>
            %19 = memref.load %arg2[%6, %17] : memref<?x42xf64>
            %20 = memref.load %arg3[%17] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %18, %21 : f64
            memref.store %22, %arg5[%6] : memref<?xf64>
            %23 = arith.addi %11, %c2 : index
            %24 = memref.load %arg5[%6] : memref<?xf64>
            %25 = memref.load %arg2[%6, %23] : memref<?x42xf64>
            %26 = memref.load %arg3[%23] : memref<?xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = arith.addf %24, %27 : f64
            memref.store %28, %arg5[%6] : memref<?xf64>
            %29 = arith.addi %11, %c3 : index
            %30 = memref.load %arg5[%6] : memref<?xf64>
            %31 = memref.load %arg2[%6, %29] : memref<?x42xf64>
            %32 = memref.load %arg3[%29] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %30, %33 : f64
            memref.store %34, %arg5[%6] : memref<?xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %11 = arith.addi %arg9, %c40 : index
            %12 = memref.load %arg5[%6] : memref<?xf64>
            %13 = memref.load %arg2[%6, %11] : memref<?x42xf64>
            %14 = memref.load %arg3[%11] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %12, %15 : f64
            memref.store %16, %arg5[%6] : memref<?xf64>
          }
          %7 = async.create_group %c10 : !async.group
          %8 = scf.for %arg9 = %c0 to %c10 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_0 = async.execute {
              %13 = arith.muli %arg9, %c4 : index
              %14 = memref.load %arg4[%13] : memref<?xf64>
              %15 = memref.load %arg2[%6, %13] : memref<?x42xf64>
              %16 = memref.load %arg5[%6] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg4[%13] : memref<?xf64>
              %19 = arith.addi %13, %c1 : index
              %20 = memref.load %arg4[%19] : memref<?xf64>
              %21 = memref.load %arg2[%6, %19] : memref<?x42xf64>
              %22 = memref.load %arg5[%6] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg4[%19] : memref<?xf64>
              %25 = arith.addi %13, %c2 : index
              %26 = memref.load %arg4[%25] : memref<?xf64>
              %27 = memref.load %arg2[%6, %25] : memref<?x42xf64>
              %28 = memref.load %arg5[%6] : memref<?xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %26, %29 : f64
              memref.store %30, %arg4[%25] : memref<?xf64>
              %31 = arith.addi %13, %c3 : index
              %32 = memref.load %arg4[%31] : memref<?xf64>
              %33 = memref.load %arg2[%6, %31] : memref<?x42xf64>
              %34 = memref.load %arg5[%6] : memref<?xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = arith.addf %32, %35 : f64
              memref.store %36, %arg4[%31] : memref<?xf64>
              async.yield
            }
            %11 = async.add_to_group %token_0, %7 : !async.token
            %12 = arith.addi %arg10, %c1 : index
            scf.yield %12 : index
          }
          async.await_all %7
          %9 = async.create_group %c2 : !async.group
          %10 = scf.for %arg9 = %c0 to %c2 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_0 = async.execute {
              %13 = arith.addi %arg9, %c40 : index
              %14 = memref.load %arg4[%13] : memref<?xf64>
              %15 = memref.load %arg2[%6, %13] : memref<?x42xf64>
              %16 = memref.load %arg5[%6] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg4[%13] : memref<?xf64>
              async.yield
            }
            %11 = async.add_to_group %token_0, %9 : !async.token
            %12 = arith.addi %arg10, %c1 : index
            scf.yield %12 : index
          }
          async.await_all %9
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg8, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

