module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %11 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %12 = memref.load %arg5[%arg6] : memref<?xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg5[%arg6] : memref<?xf64>
        }
        %9 = memref.load %arg5[%arg6] : memref<?xf64>
        %10 = arith.divf %9, %arg2 : f64
        memref.store %10, %arg5[%arg6] : memref<?xf64>
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
        scf.for %arg8 = %c0 to %c28 step %c1 {
          %9 = memref.load %arg5[%arg8] : memref<?xf64>
          %10 = memref.load %arg3[%arg6, %arg8] : memref<?x28xf64>
          %11 = arith.subf %10, %9 : f64
          memref.store %11, %arg3[%arg6, %arg8] : memref<?x28xf64>
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
        scf.for %arg8 = %arg6 to %c28 step %c1 {
          memref.store %cst_0, %arg4[%arg6, %arg8] : memref<?x28xf64>
          scf.for %arg9 = %c0 to %c32 step %c1 {
            %11 = memref.load %arg3[%arg9, %arg6] : memref<?x28xf64>
            %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = memref.load %arg4[%arg6, %arg8] : memref<?x28xf64>
            %15 = arith.addf %14, %13 : f64
            memref.store %15, %arg4[%arg6, %arg8] : memref<?x28xf64>
          }
          %9 = memref.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %10 = arith.divf %9, %4 : f64
          memref.store %10, %arg4[%arg6, %arg8] : memref<?x28xf64>
          memref.store %10, %arg4[%arg8, %arg6] : memref<?x28xf64>
        }
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

