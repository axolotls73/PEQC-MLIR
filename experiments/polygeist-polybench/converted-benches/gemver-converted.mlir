module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %8 = arith.muli %arg14, %c32 : index
          %9 = arith.muli %arg14, %c32 : index
          %10 = arith.addi %9, %c32 : index
          %11 = arith.minsi %10, %c40 : index
          scf.for %arg15 = %8 to %11 step %c1 {
            %12 = arith.muli %arg12, %c32 : index
            %13 = arith.muli %arg12, %c32 : index
            %14 = arith.addi %13, %c32 : index
            %15 = arith.minsi %14, %c40 : index
            %16 = async.create_group %c42 : !async.group
            %17 = scf.for %arg16 = %12 to %15 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_0 = async.execute {
                %20 = memref.load %arg3[%arg15, %arg16] : memref<?x40xf64>
                %21 = memref.load %arg4[%arg15] : memref<?xf64>
                %22 = memref.load %arg5[%arg16] : memref<?xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = arith.addf %20, %23 : f64
                %25 = memref.load %arg6[%arg15] : memref<?xf64>
                %26 = memref.load %arg7[%arg16] : memref<?xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = arith.addf %24, %27 : f64
                memref.store %28, %arg3[%arg15, %arg16] : memref<?x40xf64>
                %29 = memref.load %arg9[%arg16] : memref<?xf64>
                %30 = memref.load %arg3[%arg15, %arg16] : memref<?x40xf64>
                %31 = arith.mulf %arg2, %30 : f64
                %32 = memref.load %arg10[%arg15] : memref<?xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = arith.addf %29, %33 : f64
                memref.store %34, %arg9[%arg16] : memref<?xf64>
                async.yield
              }
              %18 = async.add_to_group %token_0, %16 : !async.token
              %19 = arith.addi %arg17, %c1 : index
              scf.yield %19 : index
            }
            async.await_all %16
          }
        }
        async.yield
      }
      %6 = async.add_to_group %token, %0 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = arith.muli %arg12, %c32 : index
        %9 = arith.muli %arg12, %c32 : index
        %10 = arith.addi %9, %c32 : index
        %11 = arith.minsi %10, %c40 : index
        %12 = async.create_group %c42 : !async.group
        %13 = scf.for %arg14 = %8 to %11 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %16 = memref.load %arg9[%arg14] : memref<?xf64>
            %17 = memref.load %arg11[%arg14] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            memref.store %18, %arg9[%arg14] : memref<?xf64>
            async.yield
          }
          %14 = async.add_to_group %token_0, %12 : !async.token
          %15 = arith.addi %arg15, %c1 : index
          scf.yield %15 : index
        }
        async.await_all %12
        async.yield
      }
      %6 = async.add_to_group %token, %2 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %2
    %4 = async.create_group %c2 : !async.group
    %5 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %8 = arith.muli %arg12, %c32 : index
          %9 = arith.muli %arg12, %c32 : index
          %10 = arith.addi %9, %c32 : index
          %11 = arith.minsi %10, %c40 : index
          %12 = async.create_group %c42 : !async.group
          %13 = scf.for %arg15 = %8 to %11 step %c1 iter_args(%arg16 = %c0) -> (index) {
            %token_0 = async.execute {
              %16 = arith.muli %arg14, %c32 : index
              %17 = arith.muli %arg14, %c32 : index
              %18 = arith.addi %17, %c32 : index
              %19 = arith.minsi %18, %c40 : index
              scf.for %arg17 = %16 to %19 step %c1 {
                %20 = memref.load %arg8[%arg15] : memref<?xf64>
                %21 = memref.load %arg3[%arg15, %arg17] : memref<?x40xf64>
                %22 = arith.mulf %arg1, %21 : f64
                %23 = memref.load %arg9[%arg17] : memref<?xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %20, %24 : f64
                memref.store %25, %arg8[%arg15] : memref<?xf64>
              }
              async.yield
            }
            %14 = async.add_to_group %token_0, %12 : !async.token
            %15 = arith.addi %arg16, %c1 : index
            scf.yield %15 : index
          }
          async.await_all %12
        }
        async.yield
      }
      %6 = async.add_to_group %token, %4 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %4
    return
  }
}

