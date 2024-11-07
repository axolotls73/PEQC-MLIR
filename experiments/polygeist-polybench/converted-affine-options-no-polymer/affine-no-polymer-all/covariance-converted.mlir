module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-1 = arith.constant -1 : index
    %c7 = arith.constant 7 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %9 = async.create_group %c1 : !async.group
        %10 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_1 = async.execute {
            %13 = arith.addi %arg6, %arg8 : index
            memref.store %cst_0, %arg5[%13] : memref<?xf64>
            scf.for %arg10 = %c0 to %c8 step %c1 {
              %16 = arith.muli %arg10, %c4 : index
              %17 = memref.load %arg3[%16, %13] : memref<?x28xf64>
              %18 = memref.load %arg5[%13] : memref<?xf64>
              %19 = arith.addf %18, %17 : f64
              memref.store %19, %arg5[%13] : memref<?xf64>
              %20 = arith.addi %16, %c1 : index
              %21 = memref.load %arg3[%20, %13] : memref<?x28xf64>
              %22 = memref.load %arg5[%13] : memref<?xf64>
              %23 = arith.addf %22, %21 : f64
              memref.store %23, %arg5[%13] : memref<?xf64>
              %24 = arith.addi %16, %c2 : index
              %25 = memref.load %arg3[%24, %13] : memref<?x28xf64>
              %26 = memref.load %arg5[%13] : memref<?xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg5[%13] : memref<?xf64>
              %28 = arith.addi %16, %c3 : index
              %29 = memref.load %arg3[%28, %13] : memref<?x28xf64>
              %30 = memref.load %arg5[%13] : memref<?xf64>
              %31 = arith.addf %30, %29 : f64
              memref.store %31, %arg5[%13] : memref<?xf64>
            }
            %14 = memref.load %arg5[%13] : memref<?xf64>
            %15 = arith.divf %14, %arg2 : f64
            memref.store %15, %arg5[%13] : memref<?xf64>
            async.yield
          }
          %11 = async.add_to_group %token_1, %9 : !async.token
          %12 = arith.addi %arg9, %c1 : index
          scf.yield %12 : index
        }
        async.await_all %9
        async.yield
      }
      %7 = async.add_to_group %token, %0 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %0
    %2 = async.create_group %c32 : !async.group
    %3 = scf.for %arg6 = %c0 to %c32 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c7 step %c1 {
          %9 = arith.muli %arg8, %c4 : index
          %10 = async.create_group %c1 : !async.group
          %11 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_1 = async.execute {
              %14 = arith.addi %arg6, %arg9 : index
              scf.for %arg11 = %c0 to %c1 step %c1 {
                %15 = arith.muli %arg11, %c4 : index
                %16 = arith.addi %9, %15 : index
                %17 = memref.load %arg5[%16] : memref<?xf64>
                %18 = memref.load %arg3[%14, %16] : memref<?x28xf64>
                %19 = arith.subf %18, %17 : f64
                memref.store %19, %arg3[%14, %16] : memref<?x28xf64>
                %20 = arith.addi %16, %c1 : index
                %21 = memref.load %arg5[%20] : memref<?xf64>
                %22 = memref.load %arg3[%14, %20] : memref<?x28xf64>
                %23 = arith.subf %22, %21 : f64
                memref.store %23, %arg3[%14, %20] : memref<?x28xf64>
                %24 = arith.addi %16, %c2 : index
                %25 = memref.load %arg5[%24] : memref<?xf64>
                %26 = memref.load %arg3[%14, %24] : memref<?x28xf64>
                %27 = arith.subf %26, %25 : f64
                memref.store %27, %arg3[%14, %24] : memref<?x28xf64>
                %28 = arith.addi %16, %c3 : index
                %29 = memref.load %arg5[%28] : memref<?xf64>
                %30 = memref.load %arg3[%14, %28] : memref<?x28xf64>
                %31 = arith.subf %30, %29 : f64
                memref.store %31, %arg3[%14, %28] : memref<?x28xf64>
              }
              async.yield
            }
            %12 = async.add_to_group %token_1, %10 : !async.token
            %13 = arith.addi %arg10, %c1 : index
            scf.yield %13 : index
          }
          async.await_all %10
        }
        async.yield
      }
      %7 = async.add_to_group %token, %2 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %2
    %4 = arith.subf %arg2, %cst : f64
    %5 = async.create_group %c28 : !async.group
    %6 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %9 = arith.muli %arg6, %c-1 : index
        %10 = arith.addi %9, %c28 : index
        %11 = async.create_group %c42 : !async.group
        %12 = scf.for %arg8 = %c0 to %10 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_1 = async.execute {
            %15 = arith.addi %arg6, %arg8 : index
            memref.store %cst_0, %arg4[%arg6, %15] : memref<?x28xf64>
            scf.for %arg10 = %c0 to %c8 step %c1 {
              %18 = arith.muli %arg10, %c4 : index
              %19 = memref.load %arg3[%18, %arg6] : memref<?x28xf64>
              %20 = memref.load %arg3[%18, %15] : memref<?x28xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = memref.load %arg4[%arg6, %15] : memref<?x28xf64>
              %23 = arith.addf %22, %21 : f64
              memref.store %23, %arg4[%arg6, %15] : memref<?x28xf64>
              %24 = arith.addi %18, %c1 : index
              %25 = memref.load %arg3[%24, %arg6] : memref<?x28xf64>
              %26 = memref.load %arg3[%24, %15] : memref<?x28xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = memref.load %arg4[%arg6, %15] : memref<?x28xf64>
              %29 = arith.addf %28, %27 : f64
              memref.store %29, %arg4[%arg6, %15] : memref<?x28xf64>
              %30 = arith.addi %18, %c2 : index
              %31 = memref.load %arg3[%30, %arg6] : memref<?x28xf64>
              %32 = memref.load %arg3[%30, %15] : memref<?x28xf64>
              %33 = arith.mulf %31, %32 : f64
              %34 = memref.load %arg4[%arg6, %15] : memref<?x28xf64>
              %35 = arith.addf %34, %33 : f64
              memref.store %35, %arg4[%arg6, %15] : memref<?x28xf64>
              %36 = arith.addi %18, %c3 : index
              %37 = memref.load %arg3[%36, %arg6] : memref<?x28xf64>
              %38 = memref.load %arg3[%36, %15] : memref<?x28xf64>
              %39 = arith.mulf %37, %38 : f64
              %40 = memref.load %arg4[%arg6, %15] : memref<?x28xf64>
              %41 = arith.addf %40, %39 : f64
              memref.store %41, %arg4[%arg6, %15] : memref<?x28xf64>
            }
            %16 = memref.load %arg4[%arg6, %15] : memref<?x28xf64>
            %17 = arith.divf %16, %4 : f64
            memref.store %17, %arg4[%arg6, %15] : memref<?x28xf64>
            memref.store %17, %arg4[%15, %arg6] : memref<?x28xf64>
            async.yield
          }
          %13 = async.add_to_group %token_1, %11 : !async.token
          %14 = arith.addi %arg9, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
        async.yield
      }
      %7 = async.add_to_group %token, %5 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %5
    return
  }
}

