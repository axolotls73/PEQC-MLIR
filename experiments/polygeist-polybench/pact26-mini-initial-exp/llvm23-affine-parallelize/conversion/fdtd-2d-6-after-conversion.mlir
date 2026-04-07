module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c29 = arith.constant 29 : index
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c30 : !async.group
      %1 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %10 = memref.load %arg6[%arg7] : memref<?xf64>
          memref.store %10, %arg4[%c0, %arg8] : memref<?x30xf64>
          async.yield
        }
        %8 = async.add_to_group %token, %0 : !async.token
        %9 = arith.addi %arg9, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %0
      %2 = async.create_group %c19 : !async.group
      %3 = scf.for %arg8 = %c1 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg10 = %c0 to %c30 step %c1 {
            %10 = memref.load %arg4[%arg8, %arg10] : memref<?x30xf64>
            %11 = memref.load %arg5[%arg8, %arg10] : memref<?x30xf64>
            %12 = arith.addi %arg8, %c-1 : index
            %13 = memref.load %arg5[%12, %arg10] : memref<?x30xf64>
            %14 = arith.subf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.subf %10, %15 : f64
            memref.store %16, %arg4[%arg8, %arg10] : memref<?x30xf64>
          }
          async.yield
        }
        %8 = async.add_to_group %token, %2 : !async.token
        %9 = arith.addi %arg9, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %2
      %4 = async.create_group %c20 : !async.group
      %5 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg10 = %c1 to %c30 step %c1 {
            %10 = memref.load %arg3[%arg8, %arg10] : memref<?x30xf64>
            %11 = memref.load %arg5[%arg8, %arg10] : memref<?x30xf64>
            %12 = arith.addi %arg10, %c-1 : index
            %13 = memref.load %arg5[%arg8, %12] : memref<?x30xf64>
            %14 = arith.subf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.subf %10, %15 : f64
            memref.store %16, %arg3[%arg8, %arg10] : memref<?x30xf64>
          }
          async.yield
        }
        %8 = async.add_to_group %token, %4 : !async.token
        %9 = arith.addi %arg9, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %4
      %6 = async.create_group %c19 : !async.group
      %7 = scf.for %arg8 = %c0 to %c19 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg10 = %c0 to %c29 step %c1 {
            %10 = memref.load %arg5[%arg8, %arg10] : memref<?x30xf64>
            %11 = arith.addi %arg10, %c1 : index
            %12 = memref.load %arg3[%arg8, %11] : memref<?x30xf64>
            %13 = memref.load %arg3[%arg8, %arg10] : memref<?x30xf64>
            %14 = arith.subf %12, %13 : f64
            %15 = arith.addi %arg8, %c1 : index
            %16 = memref.load %arg4[%15, %arg10] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = memref.load %arg4[%arg8, %arg10] : memref<?x30xf64>
            %19 = arith.subf %17, %18 : f64
            %20 = arith.mulf %19, %cst : f64
            %21 = arith.subf %10, %20 : f64
            memref.store %21, %arg5[%arg8, %arg10] : memref<?x30xf64>
          }
          async.yield
        }
        %8 = async.add_to_group %token, %6 : !async.token
        %9 = arith.addi %arg9, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %6
    }
    return
  }
}

