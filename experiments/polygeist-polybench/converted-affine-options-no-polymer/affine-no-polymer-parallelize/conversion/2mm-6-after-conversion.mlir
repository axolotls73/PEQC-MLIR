module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c18 step %c1 {
          memref.store %cst, %arg6[%arg11, %arg13] : memref<?x18xf64>
          scf.for %arg14 = %c0 to %c22 step %c1 {
            %6 = memref.load %arg7[%arg11, %arg14] : memref<?x22xf64>
            %7 = arith.mulf %arg4, %6 : f64
            %8 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %arg6[%arg11, %arg13] : memref<?x18xf64>
            %11 = arith.addf %10, %9 : f64
            memref.store %11, %arg6[%arg11, %arg13] : memref<?x18xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c16 : !async.group
    %3 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c24 step %c1 {
          %6 = memref.load %arg10[%arg11, %arg13] : memref<?x24xf64>
          %7 = arith.mulf %6, %arg5 : f64
          memref.store %7, %arg10[%arg11, %arg13] : memref<?x24xf64>
          scf.for %arg14 = %c0 to %c18 step %c1 {
            %8 = memref.load %arg6[%arg11, %arg14] : memref<?x18xf64>
            %9 = memref.load %arg9[%arg14, %arg13] : memref<?x24xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = memref.load %arg10[%arg11, %arg13] : memref<?x24xf64>
            %12 = arith.addf %11, %10 : f64
            memref.store %12, %arg10[%arg11, %arg13] : memref<?x24xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

