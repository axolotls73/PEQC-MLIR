module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %6 = async.create_group %c18 : !async.group
        %7 = scf.for %arg13 = %c0 to %c18 step %c1 iter_args(%arg14 = %c0) -> (index) {
          %token_0 = async.execute {
            %10 = async.create_group %c1 : !async.group
            %11 = scf.for %arg15 = %c0 to %c1 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_1 = async.execute {
                %14 = arith.addi %arg11, %arg15 : index
                %15 = async.create_group %c1 : !async.group
                %16 = scf.for %arg17 = %c0 to %c1 step %c1 iter_args(%arg18 = %c0) -> (index) {
                  %token_2 = async.execute {
                    %19 = arith.addi %arg13, %arg17 : index
                    memref.store %cst, %arg6[%14, %19] : memref<?x18xf64>
                    scf.for %arg19 = %c0 to %c5 step %c1 {
                      %20 = arith.muli %arg19, %c4 : index
                      %21 = memref.load %arg7[%14, %20] : memref<?x22xf64>
                      %22 = arith.mulf %arg4, %21 : f64
                      %23 = memref.load %arg8[%20, %19] : memref<?x18xf64>
                      %24 = arith.mulf %22, %23 : f64
                      %25 = memref.load %arg6[%14, %19] : memref<?x18xf64>
                      %26 = arith.addf %25, %24 : f64
                      memref.store %26, %arg6[%14, %19] : memref<?x18xf64>
                      %27 = arith.addi %20, %c1 : index
                      %28 = memref.load %arg7[%14, %27] : memref<?x22xf64>
                      %29 = arith.mulf %arg4, %28 : f64
                      %30 = memref.load %arg8[%27, %19] : memref<?x18xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg6[%14, %19] : memref<?x18xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg6[%14, %19] : memref<?x18xf64>
                      %34 = arith.addi %20, %c2 : index
                      %35 = memref.load %arg7[%14, %34] : memref<?x22xf64>
                      %36 = arith.mulf %arg4, %35 : f64
                      %37 = memref.load %arg8[%34, %19] : memref<?x18xf64>
                      %38 = arith.mulf %36, %37 : f64
                      %39 = memref.load %arg6[%14, %19] : memref<?x18xf64>
                      %40 = arith.addf %39, %38 : f64
                      memref.store %40, %arg6[%14, %19] : memref<?x18xf64>
                      %41 = arith.addi %20, %c3 : index
                      %42 = memref.load %arg7[%14, %41] : memref<?x22xf64>
                      %43 = arith.mulf %arg4, %42 : f64
                      %44 = memref.load %arg8[%41, %19] : memref<?x18xf64>
                      %45 = arith.mulf %43, %44 : f64
                      %46 = memref.load %arg6[%14, %19] : memref<?x18xf64>
                      %47 = arith.addf %46, %45 : f64
                      memref.store %47, %arg6[%14, %19] : memref<?x18xf64>
                    }
                    scf.for %arg19 = %c0 to %c2 step %c1 {
                      %20 = arith.addi %arg19, %c20 : index
                      %21 = memref.load %arg7[%14, %20] : memref<?x22xf64>
                      %22 = arith.mulf %arg4, %21 : f64
                      %23 = memref.load %arg8[%20, %19] : memref<?x18xf64>
                      %24 = arith.mulf %22, %23 : f64
                      %25 = memref.load %arg6[%14, %19] : memref<?x18xf64>
                      %26 = arith.addf %25, %24 : f64
                      memref.store %26, %arg6[%14, %19] : memref<?x18xf64>
                    }
                    async.yield
                  }
                  %17 = async.add_to_group %token_2, %15 : !async.token
                  %18 = arith.addi %arg18, %c1 : index
                  scf.yield %18 : index
                }
                async.await_all %15
                async.yield
              }
              %12 = async.add_to_group %token_1, %10 : !async.token
              %13 = arith.addi %arg16, %c1 : index
              scf.yield %13 : index
            }
            async.await_all %10
            async.yield
          }
          %8 = async.add_to_group %token_0, %6 : !async.token
          %9 = arith.addi %arg14, %c1 : index
          scf.yield %9 : index
        }
        async.await_all %6
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c16 : !async.group
    %3 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %6 = async.create_group %c24 : !async.group
        %7 = scf.for %arg13 = %c0 to %c24 step %c1 iter_args(%arg14 = %c0) -> (index) {
          %token_0 = async.execute {
            %10 = async.create_group %c1 : !async.group
            %11 = scf.for %arg15 = %c0 to %c1 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_1 = async.execute {
                %14 = arith.addi %arg11, %arg15 : index
                %15 = async.create_group %c1 : !async.group
                %16 = scf.for %arg17 = %c0 to %c1 step %c1 iter_args(%arg18 = %c0) -> (index) {
                  %token_2 = async.execute {
                    %19 = arith.addi %arg13, %arg17 : index
                    %20 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                    %21 = arith.mulf %20, %arg5 : f64
                    memref.store %21, %arg10[%14, %19] : memref<?x24xf64>
                    scf.for %arg19 = %c0 to %c4 step %c1 {
                      %22 = arith.muli %arg19, %c4 : index
                      %23 = memref.load %arg6[%14, %22] : memref<?x18xf64>
                      %24 = memref.load %arg9[%22, %19] : memref<?x24xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg10[%14, %19] : memref<?x24xf64>
                      %28 = arith.addi %22, %c1 : index
                      %29 = memref.load %arg6[%14, %28] : memref<?x18xf64>
                      %30 = memref.load %arg9[%28, %19] : memref<?x24xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg10[%14, %19] : memref<?x24xf64>
                      %34 = arith.addi %22, %c2 : index
                      %35 = memref.load %arg6[%14, %34] : memref<?x18xf64>
                      %36 = memref.load %arg9[%34, %19] : memref<?x24xf64>
                      %37 = arith.mulf %35, %36 : f64
                      %38 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                      %39 = arith.addf %38, %37 : f64
                      memref.store %39, %arg10[%14, %19] : memref<?x24xf64>
                      %40 = arith.addi %22, %c3 : index
                      %41 = memref.load %arg6[%14, %40] : memref<?x18xf64>
                      %42 = memref.load %arg9[%40, %19] : memref<?x24xf64>
                      %43 = arith.mulf %41, %42 : f64
                      %44 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                      %45 = arith.addf %44, %43 : f64
                      memref.store %45, %arg10[%14, %19] : memref<?x24xf64>
                    }
                    scf.for %arg19 = %c0 to %c2 step %c1 {
                      %22 = arith.addi %arg19, %c16 : index
                      %23 = memref.load %arg6[%14, %22] : memref<?x18xf64>
                      %24 = memref.load %arg9[%22, %19] : memref<?x24xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg10[%14, %19] : memref<?x24xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg10[%14, %19] : memref<?x24xf64>
                    }
                    async.yield
                  }
                  %17 = async.add_to_group %token_2, %15 : !async.token
                  %18 = arith.addi %arg18, %c1 : index
                  scf.yield %18 : index
                }
                async.await_all %15
                async.yield
              }
              %12 = async.add_to_group %token_1, %10 : !async.token
              %13 = arith.addi %arg16, %c1 : index
              scf.yield %13 : index
            }
            async.await_all %10
            async.yield
          }
          %8 = async.add_to_group %token_0, %6 : !async.token
          %9 = arith.addi %arg14, %c1 : index
          scf.yield %9 : index
        }
        async.await_all %6
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

