module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c42 = arith.constant 42 : index
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
          %8 = async.create_group %c42 : !async.group
          %9 = scf.for %arg9 = %4 to %7 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_0 = async.execute {
              %12 = arith.muli %arg8, %c32 : index
              %13 = arith.muli %arg8, %c32 : index
              %14 = arith.addi %13, %c32 : index
              %15 = arith.minsi %14, %c40 : index
              scf.for %arg11 = %12 to %15 step %c1 {
                %16 = memref.load %arg1[%arg9] : memref<?xf64>
                %17 = memref.load %arg5[%arg9, %arg11] : memref<?x40xf64>
                %18 = memref.load %arg3[%arg11] : memref<?xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = arith.addf %16, %19 : f64
                memref.store %20, %arg1[%arg9] : memref<?xf64>
                %21 = memref.load %arg2[%arg9] : memref<?xf64>
                %22 = memref.load %arg5[%arg11, %arg9] : memref<?x40xf64>
                %23 = memref.load %arg4[%arg11] : memref<?xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %21, %24 : f64
                memref.store %25, %arg2[%arg9] : memref<?xf64>
              }
              async.yield
            }
            %10 = async.add_to_group %token_0, %8 : !async.token
            %11 = arith.addi %arg10, %c1 : index
            scf.yield %11 : index
          }
          async.await_all %8
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

