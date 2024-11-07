module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c6 = arith.constant 6 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c20 : !async.group
    %1 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %4 = async.create_group %c1 : !async.group
        %5 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
          %token_0 = async.execute {
            %8 = arith.addi %arg8, %arg10 : index
            %9 = async.create_group %c6 : !async.group
            %10 = scf.for %arg12 = %c0 to %c6 step %c1 iter_args(%arg13 = %c0) -> (index) {
              %token_1 = async.execute {
                %15 = arith.muli %arg12, %c4 : index
                %16 = memref.load %arg5[%8, %15] : memref<?x25xf64>
                %17 = arith.mulf %16, %arg4 : f64
                memref.store %17, %arg5[%8, %15] : memref<?x25xf64>
                %18 = arith.addi %15, %c1 : index
                %19 = memref.load %arg5[%8, %18] : memref<?x25xf64>
                %20 = arith.mulf %19, %arg4 : f64
                memref.store %20, %arg5[%8, %18] : memref<?x25xf64>
                %21 = arith.addi %15, %c2 : index
                %22 = memref.load %arg5[%8, %21] : memref<?x25xf64>
                %23 = arith.mulf %22, %arg4 : f64
                memref.store %23, %arg5[%8, %21] : memref<?x25xf64>
                %24 = arith.addi %15, %c3 : index
                %25 = memref.load %arg5[%8, %24] : memref<?x25xf64>
                %26 = arith.mulf %25, %arg4 : f64
                memref.store %26, %arg5[%8, %24] : memref<?x25xf64>
                async.yield
              }
              %13 = async.add_to_group %token_1, %9 : !async.token
              %14 = arith.addi %arg13, %c1 : index
              scf.yield %14 : index
            }
            async.await_all %9
            %11 = memref.load %arg5[%8, %c24] : memref<?x25xf64>
            %12 = arith.mulf %11, %arg4 : f64
            memref.store %12, %arg5[%8, %c24] : memref<?x25xf64>
            scf.for %arg12 = %c0 to %c30 step %c1 {
              %13 = async.create_group %c6 : !async.group
              %14 = scf.for %arg13 = %c0 to %c6 step %c1 iter_args(%arg14 = %c0) -> (index) {
                %token_1 = async.execute {
                  %23 = arith.muli %arg13, %c4 : index
                  %24 = memref.load %arg6[%8, %arg12] : memref<?x30xf64>
                  %25 = arith.mulf %arg3, %24 : f64
                  %26 = memref.load %arg7[%arg12, %23] : memref<?x25xf64>
                  %27 = arith.mulf %25, %26 : f64
                  %28 = memref.load %arg5[%8, %23] : memref<?x25xf64>
                  %29 = arith.addf %28, %27 : f64
                  memref.store %29, %arg5[%8, %23] : memref<?x25xf64>
                  %30 = arith.addi %23, %c1 : index
                  %31 = memref.load %arg6[%8, %arg12] : memref<?x30xf64>
                  %32 = arith.mulf %arg3, %31 : f64
                  %33 = memref.load %arg7[%arg12, %30] : memref<?x25xf64>
                  %34 = arith.mulf %32, %33 : f64
                  %35 = memref.load %arg5[%8, %30] : memref<?x25xf64>
                  %36 = arith.addf %35, %34 : f64
                  memref.store %36, %arg5[%8, %30] : memref<?x25xf64>
                  %37 = arith.addi %23, %c2 : index
                  %38 = memref.load %arg6[%8, %arg12] : memref<?x30xf64>
                  %39 = arith.mulf %arg3, %38 : f64
                  %40 = memref.load %arg7[%arg12, %37] : memref<?x25xf64>
                  %41 = arith.mulf %39, %40 : f64
                  %42 = memref.load %arg5[%8, %37] : memref<?x25xf64>
                  %43 = arith.addf %42, %41 : f64
                  memref.store %43, %arg5[%8, %37] : memref<?x25xf64>
                  %44 = arith.addi %23, %c3 : index
                  %45 = memref.load %arg6[%8, %arg12] : memref<?x30xf64>
                  %46 = arith.mulf %arg3, %45 : f64
                  %47 = memref.load %arg7[%arg12, %44] : memref<?x25xf64>
                  %48 = arith.mulf %46, %47 : f64
                  %49 = memref.load %arg5[%8, %44] : memref<?x25xf64>
                  %50 = arith.addf %49, %48 : f64
                  memref.store %50, %arg5[%8, %44] : memref<?x25xf64>
                  async.yield
                }
                %21 = async.add_to_group %token_1, %13 : !async.token
                %22 = arith.addi %arg14, %c1 : index
                scf.yield %22 : index
              }
              async.await_all %13
              %15 = memref.load %arg6[%8, %arg12] : memref<?x30xf64>
              %16 = arith.mulf %arg3, %15 : f64
              %17 = memref.load %arg7[%arg12, %c24] : memref<?x25xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = memref.load %arg5[%8, %c24] : memref<?x25xf64>
              %20 = arith.addf %19, %18 : f64
              memref.store %20, %arg5[%8, %c24] : memref<?x25xf64>
            }
            async.yield
          }
          %6 = async.add_to_group %token_0, %4 : !async.token
          %7 = arith.addi %arg11, %c1 : index
          scf.yield %7 : index
        }
        async.await_all %4
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg9, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

