module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg7 = %c0 to %c30 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %c0 to %6 step %c1 {
          %7 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %8 = arith.mulf %7, %arg3 : f64
          memref.store %8, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg8, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg7 = %c0 to %c30 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %c0 to %6 step %c1 {
          scf.for %arg10 = %c0 to %c20 step %c1 {
            %7 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
            %8 = memref.load %arg5[%arg9, %arg10] : memref<?x20xf64>
            %9 = arith.mulf %8, %arg2 : f64
            %10 = memref.load %arg6[%arg7, %arg10] : memref<?x20xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = memref.load %arg6[%arg9, %arg10] : memref<?x20xf64>
            %13 = arith.mulf %12, %arg2 : f64
            %14 = memref.load %arg5[%arg7, %arg10] : memref<?x20xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %11, %15 : f64
            %17 = arith.addf %7, %16 : f64
            memref.store %17, %arg4[%arg7, %arg9] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg8, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

