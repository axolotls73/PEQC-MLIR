module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %4 = arith.muli %arg6, %c32 : index
          %5 = arith.muli %arg6, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          scf.for %arg9 = %4 to %7 step %c1 {
            %8 = arith.muli %arg8, %c32 : index
            %9 = arith.muli %arg8, %c32 : index
            %10 = arith.addi %9, %c32 : index
            %11 = arith.minsi %10, %c40 : index
            scf.for %arg10 = %8 to %11 step %c1 {
              %12 = memref.load %arg1[%arg9] : memref<?xf64>
              %13 = memref.load %arg5[%arg9, %arg10] : memref<?x40xf64>
              %14 = memref.load %arg3[%arg10] : memref<?xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = arith.addf %12, %15 : f64
              memref.store %16, %arg1[%arg9] : memref<?xf64>
              %17 = memref.load %arg2[%arg9] : memref<?xf64>
              %18 = memref.load %arg5[%arg10, %arg9] : memref<?x40xf64>
              %19 = memref.load %arg4[%arg10] : memref<?xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              memref.store %21, %arg2[%arg9] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

