module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c9 = arith.constant 9 : index
    %c13 = arith.constant 13 : index
    %c41 = arith.constant 41 : index
    %c-1 = arith.constant -1 : index
    %c-19 = arith.constant -19 : index
    %c32 = arith.constant 32 : index
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c2 = arith.constant 2 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %c22 = arith.constant 22 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = async.create_group %c22 : !async.group
        %11 = scf.for %arg14 = %c0 to %c22 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            memref.store %cst, %arg11[%arg12, %arg14] : memref<?x22xf64>
            memref.store %cst, %arg8[%arg12, %arg14] : memref<?x22xf64>
            async.yield
          }
          %12 = async.add_to_group %token_0, %10 : !async.token
          %13 = arith.addi %arg15, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = async.create_group %c2 : !async.group
    %3 = scf.for %arg12 = %c16 to %c18 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = async.create_group %c22 : !async.group
        %11 = scf.for %arg14 = %c0 to %c22 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            memref.store %cst, %arg8[%arg12, %arg14] : memref<?x22xf64>
            async.yield
          }
          %12 = async.add_to_group %token_0, %10 : !async.token
          %13 = arith.addi %arg15, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
        async.yield
      }
      %8 = async.add_to_group %token, %2 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %2
    %4 = async.create_group %c18 : !async.group
    %5 = scf.for %arg12 = %c0 to %c18 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c24 step %c1 {
          %10 = async.create_group %c22 : !async.group
          %11 = scf.for %arg15 = %c0 to %c22 step %c1 iter_args(%arg16 = %c0) -> (index) {
            %token_0 = async.execute {
              %14 = memref.load %arg8[%arg12, %arg15] : memref<?x22xf64>
              %15 = memref.load %arg9[%arg12, %arg14] : memref<?x24xf64>
              %16 = memref.load %arg10[%arg14, %arg15] : memref<?x22xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg8[%arg12, %arg15] : memref<?x22xf64>
              async.yield
            }
            %12 = async.add_to_group %token_0, %10 : !async.token
            %13 = arith.addi %arg16, %c1 : index
            scf.yield %13 : index
          }
          async.await_all %10
        }
        async.yield
      }
      %8 = async.add_to_group %token, %4 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %4
    %6 = async.create_group %c16 : !async.group
    %7 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = async.create_group %c18 : !async.group
        %11 = scf.for %arg14 = %c0 to %c18 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            memref.store %cst, %arg5[%arg12, %arg14] : memref<?x18xf64>
            async.yield
          }
          %12 = async.add_to_group %token_0, %10 : !async.token
          %13 = arith.addi %arg15, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
        async.yield
      }
      %8 = async.add_to_group %token, %6 : !async.token
      %9 = arith.addi %arg13, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %6
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %8 = arith.cmpi eq, %arg12, %c0 : index
      scf.if %8 {
        %11 = async.create_group %c16 : !async.group
        %12 = scf.for %arg13 = %c0 to %c16 step %c1 iter_args(%arg14 = %c0) -> (index) {
          %token = async.execute {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              scf.for %arg16 = %c0 to %c20 step %c1 {
                %17 = memref.load %arg5[%arg13, %arg15] : memref<?x18xf64>
                %18 = memref.load %arg6[%arg13, %arg16] : memref<?x20xf64>
                %19 = memref.load %arg7[%arg16, %arg15] : memref<?x18xf64>
                %20 = arith.mulf %18, %19 : f64
                %21 = arith.addf %17, %20 : f64
                memref.store %21, %arg5[%arg13, %arg15] : memref<?x18xf64>
              }
              %15 = async.create_group %c13 : !async.group
              %16 = scf.for %arg16 = %c19 to %c32 step %c1 iter_args(%arg17 = %c0) -> (index) {
                %token_0 = async.execute {
                  %19 = arith.addi %arg16, %c-19 : index
                  %20 = memref.load %arg11[%arg13, %19] : memref<?x22xf64>
                  %21 = memref.load %arg5[%arg13, %arg15] : memref<?x18xf64>
                  %22 = arith.addi %arg16, %c-19 : index
                  %23 = memref.load %arg8[%arg15, %22] : memref<?x22xf64>
                  %24 = arith.mulf %21, %23 : f64
                  %25 = arith.addf %20, %24 : f64
                  %26 = arith.addi %arg16, %c-19 : index
                  memref.store %25, %arg11[%arg13, %26] : memref<?x22xf64>
                  async.yield
                }
                %17 = async.add_to_group %token_0, %15 : !async.token
                %18 = arith.addi %arg17, %c1 : index
                scf.yield %18 : index
              }
              async.await_all %15
            }
            async.yield
          }
          %13 = async.add_to_group %token, %11 : !async.token
          %14 = arith.addi %arg14, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
      }
      %9 = arith.addi %arg12, %c-1 : index
      %10 = arith.cmpi eq, %9, %c0 : index
      scf.if %10 {
        %11 = async.create_group %c16 : !async.group
        %12 = scf.for %arg13 = %c0 to %c16 step %c1 iter_args(%arg14 = %c0) -> (index) {
          %token = async.execute {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              %15 = async.create_group %c9 : !async.group
              %16 = scf.for %arg16 = %c32 to %c41 step %c1 iter_args(%arg17 = %c0) -> (index) {
                %token_0 = async.execute {
                  %19 = arith.addi %arg16, %c-19 : index
                  %20 = memref.load %arg11[%arg13, %19] : memref<?x22xf64>
                  %21 = memref.load %arg5[%arg13, %arg15] : memref<?x18xf64>
                  %22 = arith.addi %arg16, %c-19 : index
                  %23 = memref.load %arg8[%arg15, %22] : memref<?x22xf64>
                  %24 = arith.mulf %21, %23 : f64
                  %25 = arith.addf %20, %24 : f64
                  %26 = arith.addi %arg16, %c-19 : index
                  memref.store %25, %arg11[%arg13, %26] : memref<?x22xf64>
                  async.yield
                }
                %17 = async.add_to_group %token_0, %15 : !async.token
                %18 = arith.addi %arg17, %c1 : index
                scf.yield %18 : index
              }
              async.await_all %15
            }
            async.yield
          }
          %13 = async.add_to_group %token, %11 : !async.token
          %14 = arith.addi %arg14, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
      }
    }
    return
  }
}

