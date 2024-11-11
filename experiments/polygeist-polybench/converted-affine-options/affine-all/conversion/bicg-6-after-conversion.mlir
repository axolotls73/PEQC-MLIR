module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c32 = arith.constant 32 : index
    %c42 = arith.constant 42 : index
    %c-32 = arith.constant -32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg7, %c-32 : index
        %11 = arith.addi %10, %c42 : index
        %12 = arith.minsi %11, %c32 : index
        scf.for %arg9 = %c0 to %12 step %c1 {
          %13 = arith.muli %arg7, %c32 : index
          %14 = arith.addi %13, %arg9 : index
          memref.store %cst, %arg4[%14] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg8, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %10 = arith.muli %arg7, %c-32 : index
          %11 = arith.addi %10, %c42 : index
          %12 = arith.minsi %11, %c32 : index
          scf.for %arg10 = %c0 to %12 step %c1 {
            %13 = arith.muli %arg7, %c32 : index
            %14 = arith.addi %13, %arg10 : index
            %15 = arith.muli %arg9, %c-32 : index
            %16 = arith.addi %15, %c38 : index
            %17 = arith.minsi %16, %c32 : index
            scf.for %arg11 = %c0 to %17 step %c1 {
              %18 = arith.muli %arg9, %c32 : index
              %19 = arith.addi %18, %arg11 : index
              %20 = memref.load %arg4[%14] : memref<?xf64>
              %21 = memref.load %arg2[%14, %19] : memref<?x38xf64>
              %22 = memref.load %arg5[%19] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg4[%14] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %2 : !async.token
      %9 = arith.addi %arg8, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %2
    %4 = async.create_group %c2 : !async.group
    %5 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg7, %c-32 : index
        %11 = arith.addi %10, %c38 : index
        %12 = arith.minsi %11, %c32 : index
        scf.for %arg9 = %c0 to %12 step %c1 {
          %13 = arith.muli %arg7, %c32 : index
          %14 = arith.addi %13, %arg9 : index
          memref.store %cst, %arg3[%14] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %4 : !async.token
      %9 = arith.addi %arg8, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %4
    %6 = async.create_group %c2 : !async.group
    %7 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %10 = arith.muli %arg9, %c-32 : index
          %11 = arith.addi %10, %c42 : index
          %12 = arith.minsi %11, %c32 : index
          scf.for %arg10 = %c0 to %12 step %c1 {
            %13 = arith.muli %arg9, %c32 : index
            %14 = arith.addi %13, %arg10 : index
            %15 = memref.load %arg6[%14] : memref<?xf64>
            %16 = arith.muli %arg7, %c-32 : index
            %17 = arith.addi %16, %c38 : index
            %18 = arith.minsi %17, %c32 : index
            scf.for %arg11 = %c0 to %18 step %c1 {
              %19 = arith.muli %arg7, %c32 : index
              %20 = arith.addi %19, %arg11 : index
              %21 = memref.load %arg3[%20] : memref<?xf64>
              %22 = memref.load %arg2[%14, %20] : memref<?x38xf64>
              %23 = arith.mulf %15, %22 : f64
              %24 = arith.addf %21, %23 : f64
              memref.store %24, %arg3[%20] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %6 : !async.token
      %9 = arith.addi %arg8, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %6
    return
  }
}

