module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c20 = arith.constant 20 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c18 step %c1 {
          memref.store %cst, %arg5[%arg12, %arg14] : memref<?x18xf64>
          scf.for %arg15 = %c0 to %c20 step %c1 {
            %8 = memref.load %arg6[%arg12, %arg15] : memref<?x20xf64>
            %9 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = memref.load %arg5[%arg12, %arg14] : memref<?x18xf64>
            %12 = arith.addf %11, %10 : f64
            memref.store %12, %arg5[%arg12, %arg14] : memref<?x18xf64>
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %0 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %0
    %2 = async.create_group %c18 : !async.group
    %3 = scf.for %arg12 = %c0 to %c18 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          memref.store %cst, %arg8[%arg12, %arg14] : memref<?x22xf64>
          scf.for %arg15 = %c0 to %c24 step %c1 {
            %8 = memref.load %arg9[%arg12, %arg15] : memref<?x24xf64>
            %9 = memref.load %arg10[%arg15, %arg14] : memref<?x22xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
            %12 = arith.addf %11, %10 : f64
            memref.store %12, %arg8[%arg12, %arg14] : memref<?x22xf64>
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %2 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %2
    %4 = async.create_group %c16 : !async.group
    %5 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          memref.store %cst, %arg11[%arg12, %arg14] : memref<?x22xf64>
          scf.for %arg15 = %c0 to %c18 step %c1 {
            %8 = memref.load %arg5[%arg12, %arg15] : memref<?x18xf64>
            %9 = memref.load %arg8[%arg15, %arg14] : memref<?x22xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = memref.load %arg11[%arg12, %arg14] : memref<?x22xf64>
            %12 = arith.addf %11, %10 : f64
            memref.store %12, %arg11[%arg12, %arg14] : memref<?x22xf64>
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %4 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %4
    return
  }
}

