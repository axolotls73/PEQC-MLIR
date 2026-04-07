module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c42 : !async.group
    %1 = scf.for %arg6 = %c0 to %c42 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst, %arg4[%arg6] : memref<?xf64>
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg6 = %c0 to %c38 step %c1 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      scf.for %arg7 = %c0 to %c42 step %c1 {
        %4 = memref.load %arg5[%arg6] : memref<?xf64>
        %5 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %6 = memref.load %arg3[%arg7] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %4, %7 : f64
        memref.store %8, %arg5[%arg6] : memref<?xf64>
      }
      %2 = async.create_group %c42 : !async.group
      %3 = scf.for %arg7 = %c0 to %c42 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          %6 = memref.load %arg4[%arg7] : memref<?xf64>
          %7 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
          %8 = memref.load %arg5[%arg6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg4[%arg7] : memref<?xf64>
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

