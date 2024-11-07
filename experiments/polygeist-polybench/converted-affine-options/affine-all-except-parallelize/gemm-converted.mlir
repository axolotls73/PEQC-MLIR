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
        %6 = async.create_group %c1 : !async.group
        %7 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
          %token_0 = async.execute {
            %10 = arith.addi %arg8, %arg10 : index
            %11 = async.create_group %c6 : !async.group
            %12 = scf.for %arg12 = %c0 to %c6 step %c1 iter_args(%arg13 = %c0) -> (index) {
              %token_1 = async.execute {
                %17 = arith.muli %arg12, %c4 : index
                %18 = memref.load %arg5[%10, %17] : memref<?x25xf64>
                %19 = arith.mulf %18, %arg4 : f64
                memref.store %19, %arg5[%10, %17] : memref<?x25xf64>
                %20 = arith.addi %17, %c1 : index
                %21 = memref.load %arg5[%10, %20] : memref<?x25xf64>
                %22 = arith.mulf %21, %arg4 : f64
                memref.store %22, %arg5[%10, %20] : memref<?x25xf64>
                %23 = arith.addi %17, %c2 : index
                %24 = memref.load %arg5[%10, %23] : memref<?x25xf64>
                %25 = arith.mulf %24, %arg4 : f64
                memref.store %25, %arg5[%10, %23] : memref<?x25xf64>
                %26 = arith.addi %17, %c3 : index
                %27 = memref.load %arg5[%10, %26] : memref<?x25xf64>
                %28 = arith.mulf %27, %arg4 : f64
                memref.store %28, %arg5[%10, %26] : memref<?x25xf64>
                async.yield
              }
              %15 = async.add_to_group %token_1, %11 : !async.token
              %16 = arith.addi %arg13, %c1 : index
              scf.yield %16 : index
            }
            async.await_all %11
            %13 = memref.load %arg5[%10, %c24] : memref<?x25xf64>
            %14 = arith.mulf %13, %arg4 : f64
            memref.store %14, %arg5[%10, %c24] : memref<?x25xf64>
            async.yield
          }
          %8 = async.add_to_group %token_0, %6 : !async.token
          %9 = arith.addi %arg11, %c1 : index
          scf.yield %9 : index
        }
        async.await_all %6
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg9, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c20 : !async.group
    %3 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %6 = async.create_group %c1 : !async.group
          %7 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = arith.addi %arg8, %arg11 : index
              %11 = async.create_group %c1 : !async.group
              %12 = scf.for %arg13 = %c0 to %c1 step %c1 iter_args(%arg14 = %c0) -> (index) {
                %token_1 = async.execute {
                  %15 = arith.addi %arg10, %arg13 : index
                  %16 = async.create_group %c6 : !async.group
                  %17 = scf.for %arg15 = %c0 to %c6 step %c1 iter_args(%arg16 = %c0) -> (index) {
                    %token_2 = async.execute {
                      %26 = arith.muli %arg15, %c4 : index
                      %27 = memref.load %arg5[%10, %26] : memref<?x25xf64>
                      %28 = memref.load %arg6[%10, %15] : memref<?x30xf64>
                      %29 = arith.mulf %arg3, %28 : f64
                      %30 = memref.load %arg7[%15, %26] : memref<?x25xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = arith.addf %27, %31 : f64
                      memref.store %32, %arg5[%10, %26] : memref<?x25xf64>
                      %33 = arith.addi %26, %c1 : index
                      %34 = memref.load %arg5[%10, %33] : memref<?x25xf64>
                      %35 = memref.load %arg6[%10, %15] : memref<?x30xf64>
                      %36 = arith.mulf %arg3, %35 : f64
                      %37 = memref.load %arg7[%15, %33] : memref<?x25xf64>
                      %38 = arith.mulf %36, %37 : f64
                      %39 = arith.addf %34, %38 : f64
                      memref.store %39, %arg5[%10, %33] : memref<?x25xf64>
                      %40 = arith.addi %26, %c2 : index
                      %41 = memref.load %arg5[%10, %40] : memref<?x25xf64>
                      %42 = memref.load %arg6[%10, %15] : memref<?x30xf64>
                      %43 = arith.mulf %arg3, %42 : f64
                      %44 = memref.load %arg7[%15, %40] : memref<?x25xf64>
                      %45 = arith.mulf %43, %44 : f64
                      %46 = arith.addf %41, %45 : f64
                      memref.store %46, %arg5[%10, %40] : memref<?x25xf64>
                      %47 = arith.addi %26, %c3 : index
                      %48 = memref.load %arg5[%10, %47] : memref<?x25xf64>
                      %49 = memref.load %arg6[%10, %15] : memref<?x30xf64>
                      %50 = arith.mulf %arg3, %49 : f64
                      %51 = memref.load %arg7[%15, %47] : memref<?x25xf64>
                      %52 = arith.mulf %50, %51 : f64
                      %53 = arith.addf %48, %52 : f64
                      memref.store %53, %arg5[%10, %47] : memref<?x25xf64>
                      async.yield
                    }
                    %24 = async.add_to_group %token_2, %16 : !async.token
                    %25 = arith.addi %arg16, %c1 : index
                    scf.yield %25 : index
                  }
                  async.await_all %16
                  %18 = memref.load %arg5[%10, %c24] : memref<?x25xf64>
                  %19 = memref.load %arg6[%10, %15] : memref<?x30xf64>
                  %20 = arith.mulf %arg3, %19 : f64
                  %21 = memref.load %arg7[%15, %c24] : memref<?x25xf64>
                  %22 = arith.mulf %20, %21 : f64
                  %23 = arith.addf %18, %22 : f64
                  memref.store %23, %arg5[%10, %c24] : memref<?x25xf64>
                  async.yield
                }
                %13 = async.add_to_group %token_1, %11 : !async.token
                %14 = arith.addi %arg14, %c1 : index
                scf.yield %14 : index
              }
              async.await_all %11
              async.yield
            }
            %8 = async.add_to_group %token_0, %6 : !async.token
            %9 = arith.addi %arg12, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %6
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg9, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

