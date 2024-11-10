module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c38 : !async.group
    %1 = scf.for %arg7 = %c0 to %c38 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst, %arg3[%arg7] : memref<?xf64>
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg8, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg7 = %c0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c38 step %c1 {
        %2 = memref.load %arg3[%arg8] : memref<?xf64>
        %3 = memref.load %arg6[%arg7] : memref<?xf64>
        %4 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        memref.store %6, %arg3[%arg8] : memref<?xf64>
        %7 = memref.load %arg4[%arg7] : memref<?xf64>
        %8 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %9 = memref.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        memref.store %11, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

