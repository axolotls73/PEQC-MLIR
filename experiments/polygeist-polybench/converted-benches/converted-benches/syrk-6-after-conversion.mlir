module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c42 = arith.constant 42 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg6, %c1 : index
        %7 = async.create_group %c42 : !async.group
        %8 = scf.for %arg8 = %c0 to %6 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            %11 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
            %12 = arith.mulf %11, %arg3 : f64
            memref.store %12, %arg4[%arg6, %arg8] : memref<?x30xf64>
            async.yield
          }
          %9 = async.add_to_group %token_0, %7 : !async.token
          %10 = arith.addi %arg9, %c1 : index
          scf.yield %10 : index
        }
        async.await_all %7
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg6, %c1 : index
        %7 = async.create_group %c42 : !async.group
        %8 = scf.for %arg8 = %c0 to %6 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_0 = async.execute {
            scf.for %arg10 = %c0 to %c20 step %c1 {
              %11 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
              %12 = memref.load %arg5[%arg6, %arg10] : memref<?x20xf64>
              %13 = arith.mulf %arg2, %12 : f64
              %14 = memref.load %arg5[%arg8, %arg10] : memref<?x20xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = arith.addf %11, %15 : f64
              memref.store %16, %arg4[%arg6, %arg8] : memref<?x30xf64>
            }
            async.yield
          }
          %9 = async.add_to_group %token_0, %7 : !async.token
          %10 = arith.addi %arg9, %c1 : index
          scf.yield %10 : index
        }
        async.await_all %7
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

