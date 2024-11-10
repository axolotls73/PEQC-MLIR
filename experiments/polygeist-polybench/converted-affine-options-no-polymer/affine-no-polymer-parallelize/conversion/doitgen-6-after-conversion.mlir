module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        %0 = async.create_group %c12 : !async.group
        %1 = scf.for %arg8 = %c0 to %c12 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            memref.store %cst, %arg5[%arg8] : memref<?xf64>
            scf.for %arg10 = %c0 to %c12 step %c1 {
              %6 = memref.load %arg3[%arg6, %arg7, %arg10] : memref<?x8x12xf64>
              %7 = memref.load %arg4[%arg10, %arg8] : memref<?x12xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = memref.load %arg5[%arg8] : memref<?xf64>
              %10 = arith.addf %9, %8 : f64
              memref.store %10, %arg5[%arg8] : memref<?xf64>
            }
            async.yield
          }
          %4 = async.add_to_group %token, %0 : !async.token
          %5 = arith.addi %arg9, %c1 : index
          scf.yield %5 : index
        }
        async.await_all %0
        %2 = async.create_group %c12 : !async.group
        %3 = scf.for %arg8 = %c0 to %c12 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %6 = memref.load %arg5[%arg8] : memref<?xf64>
            memref.store %6, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
            async.yield
          }
          %4 = async.add_to_group %token, %2 : !async.token
          %5 = arith.addi %arg9, %c1 : index
          scf.yield %5 : index
        }
        async.await_all %2
      }
    }
    return
  }
}

