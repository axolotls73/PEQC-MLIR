module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c45 = arith.constant 45 : index
    %c-1 = arith.constant -1 : index
    %c-21 = arith.constant -21 : index
    %c32 = arith.constant 32 : index
    %c21 = arith.constant 21 : index
    %c22 = arith.constant 22 : index
    %c2 = arith.constant 2 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c18 step %c1 {
          %4 = memref.load %arg10[%arg11, %arg13] : memref<?x24xf64>
          %5 = arith.mulf %4, %arg5 : f64
          memref.store %5, %arg10[%arg11, %arg13] : memref<?x24xf64>
          memref.store %cst, %arg6[%arg11, %arg13] : memref<?x18xf64>
        }
        scf.for %arg13 = %c18 to %c24 step %c1 {
          %4 = memref.load %arg10[%arg11, %arg13] : memref<?x24xf64>
          %5 = arith.mulf %4, %arg5 : f64
          memref.store %5, %arg10[%arg11, %arg13] : memref<?x24xf64>
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg12, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg11 = %c0 to %c2 step %c1 {
      %2 = arith.cmpi eq, %arg11, %c0 : index
      scf.if %2 {
        %5 = async.create_group %c16 : !async.group
        %6 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
          %token = async.execute {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c0 to %c22 step %c1 {
                %9 = memref.load %arg6[%arg12, %arg14] : memref<?x18xf64>
                %10 = memref.load %arg7[%arg12, %arg15] : memref<?x22xf64>
                %11 = arith.mulf %arg4, %10 : f64
                %12 = memref.load %arg8[%arg15, %arg14] : memref<?x18xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = arith.addf %9, %13 : f64
                memref.store %14, %arg6[%arg12, %arg14] : memref<?x18xf64>
              }
              scf.for %arg15 = %c21 to %c32 step %c1 {
                %9 = arith.addi %arg15, %c-21 : index
                %10 = memref.load %arg10[%arg12, %9] : memref<?x24xf64>
                %11 = memref.load %arg6[%arg12, %arg14] : memref<?x18xf64>
                %12 = arith.addi %arg15, %c-21 : index
                %13 = memref.load %arg9[%arg14, %12] : memref<?x24xf64>
                %14 = arith.mulf %11, %13 : f64
                %15 = arith.addf %10, %14 : f64
                %16 = arith.addi %arg15, %c-21 : index
                memref.store %15, %arg10[%arg12, %16] : memref<?x24xf64>
              }
            }
            async.yield
          }
          %7 = async.add_to_group %token, %5 : !async.token
          %8 = arith.addi %arg13, %c1 : index
          scf.yield %8 : index
        }
        async.await_all %5
      }
      %3 = arith.addi %arg11, %c-1 : index
      %4 = arith.cmpi eq, %3, %c0 : index
      scf.if %4 {
        %5 = async.create_group %c16 : !async.group
        %6 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
          %token = async.execute {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c32 to %c45 step %c1 {
                %9 = arith.addi %arg15, %c-21 : index
                %10 = memref.load %arg10[%arg12, %9] : memref<?x24xf64>
                %11 = memref.load %arg6[%arg12, %arg14] : memref<?x18xf64>
                %12 = arith.addi %arg15, %c-21 : index
                %13 = memref.load %arg9[%arg14, %12] : memref<?x24xf64>
                %14 = arith.mulf %11, %13 : f64
                %15 = arith.addf %10, %14 : f64
                %16 = arith.addi %arg15, %c-21 : index
                memref.store %15, %arg10[%arg12, %16] : memref<?x24xf64>
              }
            }
            async.yield
          }
          %7 = async.add_to_group %token, %5 : !async.token
          %8 = arith.addi %arg13, %c1 : index
          scf.yield %8 : index
        }
        async.await_all %5
      }
    }
    return
  }
}

