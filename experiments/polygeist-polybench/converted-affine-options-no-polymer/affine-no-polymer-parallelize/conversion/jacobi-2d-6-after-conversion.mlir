module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c28 = arith.constant 28 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c28 : !async.group
      %1 = scf.for %arg5 = %c1 to %c29 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg7 = %c1 to %c29 step %c1 {
            %6 = memref.load %arg2[%arg5, %arg7] : memref<?x30xf64>
            %7 = arith.addi %arg7, %c-1 : index
            %8 = memref.load %arg2[%arg5, %7] : memref<?x30xf64>
            %9 = arith.addf %6, %8 : f64
            %10 = arith.addi %arg7, %c1 : index
            %11 = memref.load %arg2[%arg5, %10] : memref<?x30xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %arg5, %c1 : index
            %14 = memref.load %arg2[%13, %arg7] : memref<?x30xf64>
            %15 = arith.addf %12, %14 : f64
            %16 = arith.addi %arg5, %c-1 : index
            %17 = memref.load %arg2[%16, %arg7] : memref<?x30xf64>
            %18 = arith.addf %15, %17 : f64
            %19 = arith.mulf %18, %cst : f64
            memref.store %19, %arg3[%arg5, %arg7] : memref<?x30xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %0 : !async.token
        %5 = arith.addi %arg6, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %0
      %2 = async.create_group %c28 : !async.group
      %3 = scf.for %arg5 = %c1 to %c29 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg7 = %c1 to %c29 step %c1 {
            %6 = memref.load %arg3[%arg5, %arg7] : memref<?x30xf64>
            %7 = arith.addi %arg7, %c-1 : index
            %8 = memref.load %arg3[%arg5, %7] : memref<?x30xf64>
            %9 = arith.addf %6, %8 : f64
            %10 = arith.addi %arg7, %c1 : index
            %11 = memref.load %arg3[%arg5, %10] : memref<?x30xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %arg5, %c1 : index
            %14 = memref.load %arg3[%13, %arg7] : memref<?x30xf64>
            %15 = arith.addf %12, %14 : f64
            %16 = arith.addi %arg5, %c-1 : index
            %17 = memref.load %arg3[%16, %arg7] : memref<?x30xf64>
            %18 = arith.addf %15, %17 : f64
            %19 = arith.mulf %18, %cst : f64
            memref.store %19, %arg2[%arg5, %arg7] : memref<?x30xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg6, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

