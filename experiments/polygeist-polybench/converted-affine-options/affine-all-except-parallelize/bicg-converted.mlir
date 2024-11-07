module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c-32 = arith.constant -32 : index
    %c42 = arith.constant 42 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.muli %arg7, %c32 : index
        %11 = arith.muli %arg7, %c32 : index
        %12 = arith.addi %11, %c32 : index
        %13 = arith.minsi %12, %c42 : index
        %14 = async.create_group %c42 : !async.group
        %15 = scf.for %arg9 = %10 to %13 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_0 = async.execute {
            memref.store %cst, %arg4[%arg9] : memref<?xf64>
            async.yield
          }
          %16 = async.add_to_group %token_0, %14 : !async.token
          %17 = arith.addi %arg10, %c1 : index
          scf.yield %17 : index
        }
        async.await_all %14
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
          %10 = arith.muli %arg7, %c32 : index
          %11 = arith.muli %arg7, %c32 : index
          %12 = arith.addi %11, %c32 : index
          %13 = arith.minsi %12, %c42 : index
          %14 = async.create_group %c42 : !async.group
          %15 = scf.for %arg10 = %10 to %13 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_0 = async.execute {
              %18 = arith.muli %arg9, %c-32 : index
              %19 = arith.addi %18, %c38 : index
              %20 = arith.minsi %19, %c32 : index
              scf.for %arg12 = %c0 to %20 step %c1 {
                %21 = arith.muli %arg9, %c32 : index
                %22 = arith.addi %21, %arg12 : index
                %23 = memref.load %arg4[%arg10] : memref<?xf64>
                %24 = memref.load %arg2[%arg10, %22] : memref<?x38xf64>
                %25 = memref.load %arg5[%22] : memref<?xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg4[%arg10] : memref<?xf64>
              }
              async.yield
            }
            %16 = async.add_to_group %token_0, %14 : !async.token
            %17 = arith.addi %arg11, %c1 : index
            scf.yield %17 : index
          }
          async.await_all %14
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
        %10 = arith.muli %arg7, %c32 : index
        %11 = arith.muli %arg7, %c32 : index
        %12 = arith.addi %11, %c32 : index
        %13 = arith.minsi %12, %c38 : index
        %14 = async.create_group %c42 : !async.group
        %15 = scf.for %arg9 = %10 to %13 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_0 = async.execute {
            memref.store %cst, %arg3[%arg9] : memref<?xf64>
            async.yield
          }
          %16 = async.add_to_group %token_0, %14 : !async.token
          %17 = arith.addi %arg10, %c1 : index
          scf.yield %17 : index
        }
        async.await_all %14
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
            %15 = arith.muli %arg7, %c32 : index
            %16 = arith.muli %arg7, %c32 : index
            %17 = arith.addi %16, %c32 : index
            %18 = arith.minsi %17, %c38 : index
            %19 = async.create_group %c42 : !async.group
            %20 = scf.for %arg11 = %15 to %18 step %c1 iter_args(%arg12 = %c0) -> (index) {
              %token_0 = async.execute {
                %23 = memref.load %arg3[%arg11] : memref<?xf64>
                %24 = memref.load %arg6[%14] : memref<?xf64>
                %25 = memref.load %arg2[%14, %arg11] : memref<?x38xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg3[%arg11] : memref<?xf64>
                async.yield
              }
              %21 = async.add_to_group %token_0, %19 : !async.token
              %22 = arith.addi %arg12, %c1 : index
              scf.yield %22 : index
            }
            async.await_all %19
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

