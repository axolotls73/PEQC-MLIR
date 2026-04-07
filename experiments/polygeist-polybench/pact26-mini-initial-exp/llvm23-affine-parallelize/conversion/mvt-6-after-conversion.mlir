module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c40 : !async.group
    %1 = scf.for %arg6 = %c0 to %c40 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c40 step %c1 {
          %6 = memref.load %arg1[%arg6] : memref<?xf64>
          %7 = memref.load %arg5[%arg6, %arg8] : memref<?x40xf64>
          %8 = memref.load %arg3[%arg8] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg1[%arg6] : memref<?xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c40 : !async.group
    %3 = scf.for %arg6 = %c0 to %c40 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c40 step %c1 {
          %6 = memref.load %arg2[%arg6] : memref<?xf64>
          %7 = memref.load %arg5[%arg8, %arg6] : memref<?x40xf64>
          %8 = memref.load %arg4[%arg8] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg2[%arg6] : memref<?xf64>
        }
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

