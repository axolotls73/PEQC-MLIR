module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        %0 = async.create_group %c1 : !async.group
        %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %4 = arith.addi %arg6, %arg8 : index
            %5 = async.create_group %c1 : !async.group
            %6 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_0 = async.execute {
                %9 = arith.addi %arg7, %arg10 : index
                %10 = async.create_group %c12 : !async.group
                %11 = scf.for %arg12 = %c0 to %c12 step %c1 iter_args(%arg13 = %c0) -> (index) {
                  %token_1 = async.execute {
                    memref.store %cst, %arg5[%arg12] : memref<?xf64>
                    scf.for %arg14 = %c0 to %c3 step %c1 {
                      %16 = arith.muli %arg14, %c4 : index
                      %17 = memref.load %arg3[%4, %9, %16] : memref<?x8x12xf64>
                      %18 = memref.load %arg4[%16, %arg12] : memref<?x12xf64>
                      %19 = arith.mulf %17, %18 : f64
                      %20 = memref.load %arg5[%arg12] : memref<?xf64>
                      %21 = arith.addf %20, %19 : f64
                      memref.store %21, %arg5[%arg12] : memref<?xf64>
                      %22 = arith.addi %16, %c1 : index
                      %23 = memref.load %arg3[%4, %9, %22] : memref<?x8x12xf64>
                      %24 = memref.load %arg4[%22, %arg12] : memref<?x12xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg5[%arg12] : memref<?xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg5[%arg12] : memref<?xf64>
                      %28 = arith.addi %16, %c2 : index
                      %29 = memref.load %arg3[%4, %9, %28] : memref<?x8x12xf64>
                      %30 = memref.load %arg4[%28, %arg12] : memref<?x12xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg5[%arg12] : memref<?xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg5[%arg12] : memref<?xf64>
                      %34 = arith.addi %16, %c3 : index
                      %35 = memref.load %arg3[%4, %9, %34] : memref<?x8x12xf64>
                      %36 = memref.load %arg4[%34, %arg12] : memref<?x12xf64>
                      %37 = arith.mulf %35, %36 : f64
                      %38 = memref.load %arg5[%arg12] : memref<?xf64>
                      %39 = arith.addf %38, %37 : f64
                      memref.store %39, %arg5[%arg12] : memref<?xf64>
                    }
                    async.yield
                  }
                  %14 = async.add_to_group %token_1, %10 : !async.token
                  %15 = arith.addi %arg13, %c1 : index
                  scf.yield %15 : index
                }
                async.await_all %10
                %12 = async.create_group %c3 : !async.group
                %13 = scf.for %arg12 = %c0 to %c3 step %c1 iter_args(%arg13 = %c0) -> (index) {
                  %token_1 = async.execute {
                    %16 = arith.muli %arg12, %c4 : index
                    %17 = memref.load %arg5[%16] : memref<?xf64>
                    memref.store %17, %arg3[%4, %9, %16] : memref<?x8x12xf64>
                    %18 = arith.addi %16, %c1 : index
                    %19 = memref.load %arg5[%18] : memref<?xf64>
                    memref.store %19, %arg3[%4, %9, %18] : memref<?x8x12xf64>
                    %20 = arith.addi %16, %c2 : index
                    %21 = memref.load %arg5[%20] : memref<?xf64>
                    memref.store %21, %arg3[%4, %9, %20] : memref<?x8x12xf64>
                    %22 = arith.addi %16, %c3 : index
                    %23 = memref.load %arg5[%22] : memref<?xf64>
                    memref.store %23, %arg3[%4, %9, %22] : memref<?x8x12xf64>
                    async.yield
                  }
                  %14 = async.add_to_group %token_1, %12 : !async.token
                  %15 = arith.addi %arg13, %c1 : index
                  scf.yield %15 : index
                }
                async.await_all %12
                async.yield
              }
              %7 = async.add_to_group %token_0, %5 : !async.token
              %8 = arith.addi %arg11, %c1 : index
              scf.yield %8 : index
            }
            async.await_all %5
            async.yield
          }
          %2 = async.add_to_group %token, %0 : !async.token
          %3 = arith.addi %arg9, %c1 : index
          scf.yield %3 : index
        }
        async.await_all %0
      }
    }
    return
  }
}

