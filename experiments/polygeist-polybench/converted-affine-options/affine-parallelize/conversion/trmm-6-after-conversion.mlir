module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c30 = arith.constant 30 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %2 = arith.addi %arg5, %c1 : index
      scf.for %arg6 = %2 to %c20 step %c1 {
        %3 = async.create_group %c30 : !async.group
        %4 = scf.for %arg7 = %c0 to %c30 step %c1 iter_args(%arg8 = %c0) -> (index) {
          %token = async.execute {
            %7 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
            %8 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
            %9 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = arith.addf %7, %10 : f64
            memref.store %11, %arg4[%arg5, %arg7] : memref<?x30xf64>
            async.yield
          }
          %5 = async.add_to_group %token, %3 : !async.token
          %6 = arith.addi %arg8, %c1 : index
          scf.yield %6 : index
        }
        async.await_all %3
      }
    }
    %0 = async.create_group %c20 : !async.group
    %1 = scf.for %arg5 = %c0 to %c20 step %c1 iter_args(%arg6 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg7 = %c0 to %c30 step %c1 {
          %4 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %5 = arith.mulf %arg2, %4 : f64
          memref.store %5, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg6, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

