module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg7 = %c0 to %c30 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %c0 to %4 step %c1 {
          %5 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          memref.store %6, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
        scf.for %arg9 = %c0 to %c20 step %c1 {
          %5 = arith.addi %arg7, %c1 : index
          scf.for %arg10 = %c0 to %5 step %c1 {
            %6 = memref.load %arg5[%arg10, %arg9] : memref<?x20xf64>
            %7 = arith.mulf %6, %arg2 : f64
            %8 = memref.load %arg6[%arg7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %arg6[%arg10, %arg9] : memref<?x20xf64>
            %11 = arith.mulf %10, %arg2 : f64
            %12 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %9, %13 : f64
            %15 = memref.load %arg4[%arg7, %arg10] : memref<?x30xf64>
            %16 = arith.addf %15, %14 : f64
            memref.store %16, %arg4[%arg7, %arg10] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg8, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

