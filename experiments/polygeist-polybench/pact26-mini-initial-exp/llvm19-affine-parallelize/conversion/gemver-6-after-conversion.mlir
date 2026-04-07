module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c40 : !async.group
    %1 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c40 step %c1 {
          %10 = memref.load %arg3[%arg12, %arg14] : memref<?x40xf64>
          %11 = memref.load %arg4[%arg12] : memref<?xf64>
          %12 = memref.load %arg5[%arg14] : memref<?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.addf %10, %13 : f64
          %15 = memref.load %arg6[%arg12] : memref<?xf64>
          %16 = memref.load %arg7[%arg14] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          memref.store %18, %arg3[%arg12, %arg14] : memref<?x40xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = async.create_group %c40 : !async.group
    %3 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c40 step %c1 {
          %10 = memref.load %arg9[%arg12] : memref<?xf64>
          %11 = memref.load %arg3[%arg14, %arg12] : memref<?x40xf64>
          %12 = arith.mulf %arg2, %11 : f64
          %13 = memref.load %arg10[%arg14] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %10, %14 : f64
          memref.store %15, %arg9[%arg12] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %2 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %2
    %4 = async.create_group %c40 : !async.group
    %5 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = memref.load %arg9[%arg12] : memref<?xf64>
        %11 = memref.load %arg11[%arg12] : memref<?xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %arg9[%arg12] : memref<?xf64>
        async.yield
      }
      %8 = async.add_to_group %token, %4 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %4
    %6 = async.create_group %c40 : !async.group
    %7 = scf.for %arg12 = %c0 to %c40 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c40 step %c1 {
          %10 = memref.load %arg8[%arg12] : memref<?xf64>
          %11 = memref.load %arg3[%arg12, %arg14] : memref<?x40xf64>
          %12 = arith.mulf %arg1, %11 : f64
          %13 = memref.load %arg9[%arg14] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %10, %14 : f64
          memref.store %15, %arg8[%arg12] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %6 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %6
    return
  }
}

