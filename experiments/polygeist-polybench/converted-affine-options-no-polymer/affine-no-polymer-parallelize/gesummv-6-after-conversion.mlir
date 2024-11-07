module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst, %arg5[%arg8] : memref<?xf64>
        memref.store %cst, %arg7[%arg8] : memref<?xf64>
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %9 = memref.load %arg3[%arg8, %arg10] : memref<?x30xf64>
          %10 = memref.load %arg6[%arg10] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg5[%arg8] : memref<?xf64>
          %13 = arith.addf %11, %12 : f64
          memref.store %13, %arg5[%arg8] : memref<?xf64>
          %14 = memref.load %arg4[%arg8, %arg10] : memref<?x30xf64>
          %15 = memref.load %arg6[%arg10] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg7[%arg8] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          memref.store %18, %arg7[%arg8] : memref<?xf64>
        }
        %4 = memref.load %arg5[%arg8] : memref<?xf64>
        %5 = arith.mulf %arg1, %4 : f64
        %6 = memref.load %arg7[%arg8] : memref<?xf64>
        %7 = arith.mulf %arg2, %6 : f64
        %8 = arith.addf %5, %7 : f64
        memref.store %8, %arg7[%arg8] : memref<?xf64>
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg9, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

