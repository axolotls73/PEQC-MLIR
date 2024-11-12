module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c42 = arith.constant 42 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c1 {
      memref.store %cst, %alloca[] : memref<f64>
      scf.for %arg6 = %c0 to %c20 step %c1 {
        %8 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %9 = arith.mulf %8, %8 : f64
        %10 = memref.load %alloca[] : memref<f64>
        %11 = arith.addf %10, %9 : f64
        memref.store %11, %alloca[] : memref<f64>
      }
      %1 = memref.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      %3 = async.create_group %c20 : !async.group
      %4 = scf.for %arg6 = %c0 to %c20 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %10 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
          %11 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
          %12 = arith.divf %10, %11 : f64
          memref.store %12, %arg4[%arg6, %arg5] : memref<?x30xf64>
          async.yield
        }
        %8 = async.add_to_group %token, %3 : !async.token
        %9 = arith.addi %arg7, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %3
      %5 = arith.addi %arg5, %c1 : index
      %6 = async.create_group %c42 : !async.group
      %7 = scf.for %arg6 = %5 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
          scf.for %arg8 = %c0 to %c20 step %c1 {
            %10 = memref.load %arg4[%arg8, %arg5] : memref<?x30xf64>
            %11 = memref.load %arg2[%arg8, %arg6] : memref<?x30xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
            %14 = arith.addf %13, %12 : f64
            memref.store %14, %arg3[%arg5, %arg6] : memref<?x30xf64>
          }
          scf.for %arg8 = %c0 to %c20 step %c1 {
            %10 = memref.load %arg2[%arg8, %arg6] : memref<?x30xf64>
            %11 = memref.load %arg4[%arg8, %arg5] : memref<?x30xf64>
            %12 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.subf %10, %13 : f64
            memref.store %14, %arg2[%arg8, %arg6] : memref<?x30xf64>
          }
          async.yield
        }
        %8 = async.add_to_group %token, %6 : !async.token
        %9 = arith.addi %arg7, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %6
    }
    return
  }
}

