module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      scf.for %arg3 = %c0 to %arg2 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          %5 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %2 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %3 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.divf %3, %2 : f64
        memref.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %0 = async.create_group %c42 : !async.group
      %1 = scf.for %arg3 = %arg2 to %c40 step %c1 iter_args(%arg4 = %c0) -> (index) {
        %token = async.execute {
          scf.for %arg5 = %c0 to %arg2 step %c1 {
            %4 = memref.load %arg1[%arg2, %arg5] : memref<?x40xf64>
            %5 = memref.load %arg1[%arg5, %arg3] : memref<?x40xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
            %8 = arith.subf %7, %6 : f64
            memref.store %8, %arg1[%arg2, %arg3] : memref<?x40xf64>
          }
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg4, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

