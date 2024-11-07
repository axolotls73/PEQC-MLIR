module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst, %arg7[%arg8] : memref<?xf64>
        async.yield
      }
      %10 = async.add_to_group %token, %0 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %12 = memref.load %arg4[%arg8, %arg10] : memref<?x30xf64>
          %13 = memref.load %arg6[%arg10] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg7[%arg8] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          memref.store %16, %arg7[%arg8] : memref<?xf64>
        }
        async.yield
      }
      %10 = async.add_to_group %token, %2 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %2
    %4 = async.create_group %c30 : !async.group
    %5 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst, %arg5[%arg8] : memref<?xf64>
        async.yield
      }
      %10 = async.add_to_group %token, %4 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %4
    %6 = async.create_group %c30 : !async.group
    %7 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %12 = memref.load %arg3[%arg8, %arg10] : memref<?x30xf64>
          %13 = memref.load %arg6[%arg10] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg5[%arg8] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          memref.store %16, %arg5[%arg8] : memref<?xf64>
        }
        async.yield
      }
      %10 = async.add_to_group %token, %6 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %6
    %8 = async.create_group %c30 : !async.group
    %9 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %12 = memref.load %arg5[%arg8] : memref<?xf64>
        %13 = arith.mulf %arg1, %12 : f64
        %14 = memref.load %arg7[%arg8] : memref<?xf64>
        %15 = arith.mulf %arg2, %14 : f64
        %16 = arith.addf %13, %15 : f64
        memref.store %16, %arg7[%arg8] : memref<?xf64>
        async.yield
      }
      %10 = async.add_to_group %token, %8 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %8
    return
  }
}

