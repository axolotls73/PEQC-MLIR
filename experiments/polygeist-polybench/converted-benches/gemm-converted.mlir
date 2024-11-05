module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c25 = arith.constant 25 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c20 : !async.group
    %1 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %6 = async.create_group %c25 : !async.group
        %7 = scf.for %arg10 = %c0 to %c25 step %c1 iter_args(%arg11 = %c0) -> (index) {
          %token_0 = async.execute {
            %10 = memref.load %arg5[%arg8, %arg10] : memref<?x25xf64>
            %11 = arith.mulf %10, %arg4 : f64
            memref.store %11, %arg5[%arg8, %arg10] : memref<?x25xf64>
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
          %6 = async.create_group %c25 : !async.group
          %7 = scf.for %arg11 = %c0 to %c25 step %c1 iter_args(%arg12 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = memref.load %arg5[%arg8, %arg11] : memref<?x25xf64>
              %11 = memref.load %arg6[%arg8, %arg10] : memref<?x30xf64>
              %12 = arith.mulf %arg3, %11 : f64
              %13 = memref.load %arg7[%arg10, %arg11] : memref<?x25xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %10, %14 : f64
              memref.store %15, %arg5[%arg8, %arg11] : memref<?x25xf64>
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

