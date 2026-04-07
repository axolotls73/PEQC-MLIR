module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c30 : !async.group
      %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %4 = arith.addi %arg5, %c1 : index
          scf.for %arg8 = %4 to %c20 step %c1 {
            %7 = memref.load %arg3[%arg8, %arg5] : memref<?x20xf64>
            %8 = memref.load %arg4[%arg8, %arg6] : memref<?x30xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
            %11 = arith.addf %10, %9 : f64
            memref.store %11, %arg4[%arg5, %arg6] : memref<?x30xf64>
          }
          %5 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %arg2, %5 : f64
          memref.store %6, %arg4[%arg5, %arg6] : memref<?x30xf64>
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg7, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

