module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c6 = arith.constant 6 : index
    %c22 = arith.constant 22 : index
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
    %1 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = async.create_group %c18 : !async.group
        %9 = scf.for %arg14 = %c0 to %c18 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %12 = async.create_group %c1 : !async.group
            %13 = scf.for %arg16 = %c0 to %c1 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %16 = arith.addi %arg12, %arg16 : index
                %17 = async.create_group %c1 : !async.group
                %18 = scf.for %arg18 = %c0 to %c1 step %c1 iter_args(%arg19 = %c0) -> (index) {
                  %token_2 = async.execute {
                    %21 = arith.addi %arg14, %arg18 : index
                    memref.store %cst, %arg5[%16, %21] : memref<?x18xf64>
                    scf.for %arg20 = %c0 to %c5 step %c1 {
                      %22 = arith.muli %arg20, %c4 : index
                      %23 = memref.load %arg6[%16, %22] : memref<?x20xf64>
                      %24 = memref.load %arg7[%22, %21] : memref<?x18xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg5[%16, %21] : memref<?x18xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg5[%16, %21] : memref<?x18xf64>
                      %28 = arith.addi %22, %c1 : index
                      %29 = memref.load %arg6[%16, %28] : memref<?x20xf64>
                      %30 = memref.load %arg7[%28, %21] : memref<?x18xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg5[%16, %21] : memref<?x18xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg5[%16, %21] : memref<?x18xf64>
                      %34 = arith.addi %22, %c2 : index
                      %35 = memref.load %arg6[%16, %34] : memref<?x20xf64>
                      %36 = memref.load %arg7[%34, %21] : memref<?x18xf64>
                      %37 = arith.mulf %35, %36 : f64
                      %38 = memref.load %arg5[%16, %21] : memref<?x18xf64>
                      %39 = arith.addf %38, %37 : f64
                      memref.store %39, %arg5[%16, %21] : memref<?x18xf64>
                      %40 = arith.addi %22, %c3 : index
                      %41 = memref.load %arg6[%16, %40] : memref<?x20xf64>
                      %42 = memref.load %arg7[%40, %21] : memref<?x18xf64>
                      %43 = arith.mulf %41, %42 : f64
                      %44 = memref.load %arg5[%16, %21] : memref<?x18xf64>
                      %45 = arith.addf %44, %43 : f64
                      memref.store %45, %arg5[%16, %21] : memref<?x18xf64>
                    }
                    async.yield
                  }
                  %19 = async.add_to_group %token_2, %17 : !async.token
                  %20 = arith.addi %arg19, %c1 : index
                  scf.yield %20 : index
                }
                async.await_all %17
                async.yield
              }
              %14 = async.add_to_group %token_1, %12 : !async.token
              %15 = arith.addi %arg17, %c1 : index
              scf.yield %15 : index
            }
            async.await_all %12
            async.yield
          }
          %10 = async.add_to_group %token_0, %8 : !async.token
          %11 = arith.addi %arg15, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
        async.yield
      }
      %6 = async.add_to_group %token, %0 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %0
    %2 = async.create_group %c18 : !async.group
    %3 = scf.for %arg12 = %c0 to %c18 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = async.create_group %c22 : !async.group
        %9 = scf.for %arg14 = %c0 to %c22 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %12 = async.create_group %c1 : !async.group
            %13 = scf.for %arg16 = %c0 to %c1 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %16 = arith.addi %arg12, %arg16 : index
                %17 = async.create_group %c1 : !async.group
                %18 = scf.for %arg18 = %c0 to %c1 step %c1 iter_args(%arg19 = %c0) -> (index) {
                  %token_2 = async.execute {
                    %21 = arith.addi %arg14, %arg18 : index
                    memref.store %cst, %arg8[%16, %21] : memref<?x22xf64>
                    scf.for %arg20 = %c0 to %c6 step %c1 {
                      %22 = arith.muli %arg20, %c4 : index
                      %23 = memref.load %arg9[%16, %22] : memref<?x24xf64>
                      %24 = memref.load %arg10[%22, %21] : memref<?x22xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg8[%16, %21] : memref<?x22xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg8[%16, %21] : memref<?x22xf64>
                      %28 = arith.addi %22, %c1 : index
                      %29 = memref.load %arg9[%16, %28] : memref<?x24xf64>
                      %30 = memref.load %arg10[%28, %21] : memref<?x22xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg8[%16, %21] : memref<?x22xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg8[%16, %21] : memref<?x22xf64>
                      %34 = arith.addi %22, %c2 : index
                      %35 = memref.load %arg9[%16, %34] : memref<?x24xf64>
                      %36 = memref.load %arg10[%34, %21] : memref<?x22xf64>
                      %37 = arith.mulf %35, %36 : f64
                      %38 = memref.load %arg8[%16, %21] : memref<?x22xf64>
                      %39 = arith.addf %38, %37 : f64
                      memref.store %39, %arg8[%16, %21] : memref<?x22xf64>
                      %40 = arith.addi %22, %c3 : index
                      %41 = memref.load %arg9[%16, %40] : memref<?x24xf64>
                      %42 = memref.load %arg10[%40, %21] : memref<?x22xf64>
                      %43 = arith.mulf %41, %42 : f64
                      %44 = memref.load %arg8[%16, %21] : memref<?x22xf64>
                      %45 = arith.addf %44, %43 : f64
                      memref.store %45, %arg8[%16, %21] : memref<?x22xf64>
                    }
                    async.yield
                  }
                  %19 = async.add_to_group %token_2, %17 : !async.token
                  %20 = arith.addi %arg19, %c1 : index
                  scf.yield %20 : index
                }
                async.await_all %17
                async.yield
              }
              %14 = async.add_to_group %token_1, %12 : !async.token
              %15 = arith.addi %arg17, %c1 : index
              scf.yield %15 : index
            }
            async.await_all %12
            async.yield
          }
          %10 = async.add_to_group %token_0, %8 : !async.token
          %11 = arith.addi %arg15, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
        async.yield
      }
      %6 = async.add_to_group %token, %2 : !async.token
      %7 = arith.addi %arg13, %c1 : index
      scf.yield %7 : index
    }
    async.await_all %2
    %4 = async.create_group %c16 : !async.group
    %5 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %8 = async.create_group %c22 : !async.group
        %9 = scf.for %arg14 = %c0 to %c22 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %12 = async.create_group %c1 : !async.group
            %13 = scf.for %arg16 = %c0 to %c1 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %16 = arith.addi %arg12, %arg16 : index
                %17 = async.create_group %c1 : !async.group
                %18 = scf.for %arg18 = %c0 to %c1 step %c1 iter_args(%arg19 = %c0) -> (index) {
                  %token_2 = async.execute {
                    %21 = arith.addi %arg14, %arg18 : index
                    memref.store %cst, %arg11[%16, %21] : memref<?x22xf64>
                    scf.for %arg20 = %c0 to %c4 step %c1 {
                      %22 = arith.muli %arg20, %c4 : index
                      %23 = memref.load %arg5[%16, %22] : memref<?x18xf64>
                      %24 = memref.load %arg8[%22, %21] : memref<?x22xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg11[%16, %21] : memref<?x22xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg11[%16, %21] : memref<?x22xf64>
                      %28 = arith.addi %22, %c1 : index
                      %29 = memref.load %arg5[%16, %28] : memref<?x18xf64>
                      %30 = memref.load %arg8[%28, %21] : memref<?x22xf64>
                      %31 = arith.mulf %29, %30 : f64
                      %32 = memref.load %arg11[%16, %21] : memref<?x22xf64>
                      %33 = arith.addf %32, %31 : f64
                      memref.store %33, %arg11[%16, %21] : memref<?x22xf64>
                      %34 = arith.addi %22, %c2 : index
                      %35 = memref.load %arg5[%16, %34] : memref<?x18xf64>
                      %36 = memref.load %arg8[%34, %21] : memref<?x22xf64>
                      %37 = arith.mulf %35, %36 : f64
                      %38 = memref.load %arg11[%16, %21] : memref<?x22xf64>
                      %39 = arith.addf %38, %37 : f64
                      memref.store %39, %arg11[%16, %21] : memref<?x22xf64>
                      %40 = arith.addi %22, %c3 : index
                      %41 = memref.load %arg5[%16, %40] : memref<?x18xf64>
                      %42 = memref.load %arg8[%40, %21] : memref<?x22xf64>
                      %43 = arith.mulf %41, %42 : f64
                      %44 = memref.load %arg11[%16, %21] : memref<?x22xf64>
                      %45 = arith.addf %44, %43 : f64
                      memref.store %45, %arg11[%16, %21] : memref<?x22xf64>
                    }
                    scf.for %arg20 = %c0 to %c2 step %c1 {
                      %22 = arith.addi %arg20, %c16 : index
                      %23 = memref.load %arg5[%16, %22] : memref<?x18xf64>
                      %24 = memref.load %arg8[%22, %21] : memref<?x22xf64>
                      %25 = arith.mulf %23, %24 : f64
                      %26 = memref.load %arg11[%16, %21] : memref<?x22xf64>
                      %27 = arith.addf %26, %25 : f64
                      memref.store %27, %arg11[%16, %21] : memref<?x22xf64>
                    }
                    async.yield
                  }
                  %19 = async.add_to_group %token_2, %17 : !async.token
                  %20 = arith.addi %arg19, %c1 : index
                  scf.yield %20 : index
                }
                async.await_all %17
                async.yield
              }
              %14 = async.add_to_group %token_1, %12 : !async.token
              %15 = arith.addi %arg17, %c1 : index
              scf.yield %15 : index
            }
            async.await_all %12
            async.yield
          }
          %10 = async.add_to_group %token_0, %8 : !async.token
          %11 = arith.addi %arg15, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
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

