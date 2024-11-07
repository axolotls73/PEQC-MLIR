module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c38 = arith.constant 38 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg6, %c32 : index
        %11 = arith.muli %arg6, %c32 : index
        %12 = arith.addi %11, %c32 : index
        %13 = arith.minsi %12, %c38 : index
        scf.for %arg8 = %10 to %13 step %c1 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %10 = arith.muli %arg6, %c32 : index
          %11 = arith.muli %arg6, %c32 : index
          %12 = arith.addi %11, %c32 : index
          %13 = arith.minsi %12, %c38 : index
          scf.for %arg9 = %10 to %13 step %c1 {
            %14 = arith.muli %arg8, %c32 : index
            %15 = arith.muli %arg8, %c32 : index
            %16 = arith.addi %15, %c32 : index
            %17 = arith.minsi %16, %c42 : index
            scf.for %arg10 = %14 to %17 step %c1 {
              %18 = memref.load %arg5[%arg9] : memref<?xf64>
              %19 = memref.load %arg2[%arg9, %arg10] : memref<?x42xf64>
              %20 = memref.load %arg3[%arg10] : memref<?xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %18, %21 : f64
              memref.store %22, %arg5[%arg9] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %2 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %2
    %4 = async.create_group %c2 : !async.group
    %5 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg6, %c32 : index
        %11 = arith.muli %arg6, %c32 : index
        %12 = arith.addi %11, %c32 : index
        %13 = arith.minsi %12, %c42 : index
        scf.for %arg8 = %10 to %13 step %c1 {
          memref.store %cst, %arg4[%arg8] : memref<?xf64>
        }
        async.yield
      }
      %8 = async.add_to_group %token, %4 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %4
    %6 = async.create_group %c2 : !async.group
    %7 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c2 step %c1 {
          %10 = arith.muli %arg8, %c32 : index
          %11 = arith.muli %arg8, %c32 : index
          %12 = arith.addi %11, %c32 : index
          %13 = arith.minsi %12, %c38 : index
          scf.for %arg9 = %10 to %13 step %c1 {
            %14 = arith.muli %arg6, %c32 : index
            %15 = arith.muli %arg6, %c32 : index
            %16 = arith.addi %15, %c32 : index
            %17 = arith.minsi %16, %c42 : index
            scf.for %arg10 = %14 to %17 step %c1 {
              %18 = memref.load %arg4[%arg10] : memref<?xf64>
              %19 = memref.load %arg2[%arg9, %arg10] : memref<?x42xf64>
              %20 = memref.load %arg5[%arg9] : memref<?xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %18, %21 : f64
              memref.store %22, %arg4[%arg10] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %8 = async.add_to_group %token, %6 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %6
    return
  }
}

