module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %c-21 = arith.constant -21 : index
    %c5 = arith.constant 5 : index
    %c22 = arith.constant 22 : index
    %c21 = arith.constant 21 : index
    %c20 = arith.constant 20 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %4 = async.create_group %c1 : !async.group
        %5 = scf.for %arg13 = %c0 to %c1 step %c1 iter_args(%arg14 = %c0) -> (index) {
          %token_0 = async.execute {
            %8 = arith.addi %arg11, %arg13 : index
            %9 = async.create_group %c4 : !async.group
            %10 = scf.for %arg15 = %c0 to %c4 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_1 = async.execute {
                %25 = arith.muli %arg15, %c4 : index
                %26 = memref.load %arg10[%8, %25] : memref<?x24xf64>
                %27 = arith.mulf %26, %arg5 : f64
                memref.store %27, %arg10[%8, %25] : memref<?x24xf64>
                memref.store %cst, %arg6[%8, %25] : memref<?x18xf64>
                %28 = arith.addi %25, %c1 : index
                %29 = memref.load %arg10[%8, %28] : memref<?x24xf64>
                %30 = arith.mulf %29, %arg5 : f64
                memref.store %30, %arg10[%8, %28] : memref<?x24xf64>
                memref.store %cst, %arg6[%8, %28] : memref<?x18xf64>
                %31 = arith.addi %25, %c2 : index
                %32 = memref.load %arg10[%8, %31] : memref<?x24xf64>
                %33 = arith.mulf %32, %arg5 : f64
                memref.store %33, %arg10[%8, %31] : memref<?x24xf64>
                memref.store %cst, %arg6[%8, %31] : memref<?x18xf64>
                %34 = arith.addi %25, %c3 : index
                %35 = memref.load %arg10[%8, %34] : memref<?x24xf64>
                %36 = arith.mulf %35, %arg5 : f64
                memref.store %36, %arg10[%8, %34] : memref<?x24xf64>
                memref.store %cst, %arg6[%8, %34] : memref<?x18xf64>
                async.yield
              }
              %23 = async.add_to_group %token_1, %9 : !async.token
              %24 = arith.addi %arg16, %c1 : index
              scf.yield %24 : index
            }
            async.await_all %9
            %11 = async.create_group %c2 : !async.group
            %12 = scf.for %arg15 = %c0 to %c2 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_1 = async.execute {
                %25 = arith.addi %arg15, %c16 : index
                %26 = memref.load %arg10[%8, %25] : memref<?x24xf64>
                %27 = arith.mulf %26, %arg5 : f64
                memref.store %27, %arg10[%8, %25] : memref<?x24xf64>
                memref.store %cst, %arg6[%8, %25] : memref<?x18xf64>
                async.yield
              }
              %23 = async.add_to_group %token_1, %11 : !async.token
              %24 = arith.addi %arg16, %c1 : index
              scf.yield %24 : index
            }
            async.await_all %11
            %13 = memref.load %arg10[%8, %c18] : memref<?x24xf64>
            %14 = arith.mulf %13, %arg5 : f64
            memref.store %14, %arg10[%8, %c18] : memref<?x24xf64>
            %15 = memref.load %arg10[%8, %c19] : memref<?x24xf64>
            %16 = arith.mulf %15, %arg5 : f64
            memref.store %16, %arg10[%8, %c19] : memref<?x24xf64>
            %17 = memref.load %arg10[%8, %c20] : memref<?x24xf64>
            %18 = arith.mulf %17, %arg5 : f64
            memref.store %18, %arg10[%8, %c20] : memref<?x24xf64>
            %19 = memref.load %arg10[%8, %c21] : memref<?x24xf64>
            %20 = arith.mulf %19, %arg5 : f64
            memref.store %20, %arg10[%8, %c21] : memref<?x24xf64>
            %21 = async.create_group %c2 : !async.group
            %22 = scf.for %arg15 = %c0 to %c2 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_1 = async.execute {
                %25 = arith.addi %arg15, %c22 : index
                %26 = memref.load %arg10[%8, %25] : memref<?x24xf64>
                %27 = arith.mulf %26, %arg5 : f64
                memref.store %27, %arg10[%8, %25] : memref<?x24xf64>
                async.yield
              }
              %23 = async.add_to_group %token_1, %21 : !async.token
              %24 = arith.addi %arg16, %c1 : index
              scf.yield %24 : index
            }
            async.await_all %21
            async.yield
          }
          %6 = async.add_to_group %token_0, %4 : !async.token
          %7 = arith.addi %arg14, %c1 : index
          scf.yield %7 : index
        }
        async.await_all %4
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg12, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg11 = %c0 to %c2 step %c1 {
      %2 = async.create_group %c1 : !async.group
      %3 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
        %token = async.execute {
          %6 = arith.addi %arg11, %arg12 : index
          %7 = arith.cmpi eq, %6, %c0 : index
          scf.if %7 {
            %11 = async.create_group %c16 : !async.group
            %12 = scf.for %arg14 = %c0 to %c16 step %c1 iter_args(%arg15 = %c0) -> (index) {
              %token_0 = async.execute {
                scf.for %arg16 = %c0 to %c18 step %c1 {
                  scf.for %arg17 = %c0 to %c5 step %c1 {
                    %19 = arith.muli %arg17, %c4 : index
                    %20 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %21 = memref.load %arg7[%arg14, %19] : memref<?x22xf64>
                    %22 = arith.mulf %arg4, %21 : f64
                    %23 = memref.load %arg8[%19, %arg16] : memref<?x18xf64>
                    %24 = arith.mulf %22, %23 : f64
                    %25 = arith.addf %20, %24 : f64
                    memref.store %25, %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %26 = arith.addi %19, %c1 : index
                    %27 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %28 = memref.load %arg7[%arg14, %26] : memref<?x22xf64>
                    %29 = arith.mulf %arg4, %28 : f64
                    %30 = memref.load %arg8[%26, %arg16] : memref<?x18xf64>
                    %31 = arith.mulf %29, %30 : f64
                    %32 = arith.addf %27, %31 : f64
                    memref.store %32, %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %33 = arith.addi %19, %c2 : index
                    %34 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %35 = memref.load %arg7[%arg14, %33] : memref<?x22xf64>
                    %36 = arith.mulf %arg4, %35 : f64
                    %37 = memref.load %arg8[%33, %arg16] : memref<?x18xf64>
                    %38 = arith.mulf %36, %37 : f64
                    %39 = arith.addf %34, %38 : f64
                    memref.store %39, %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %40 = arith.addi %19, %c3 : index
                    %41 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %42 = memref.load %arg7[%arg14, %40] : memref<?x22xf64>
                    %43 = arith.mulf %arg4, %42 : f64
                    %44 = memref.load %arg8[%40, %arg16] : memref<?x18xf64>
                    %45 = arith.mulf %43, %44 : f64
                    %46 = arith.addf %41, %45 : f64
                    memref.store %46, %arg6[%arg14, %arg16] : memref<?x18xf64>
                  }
                  scf.for %arg17 = %c0 to %c2 step %c1 {
                    %19 = arith.addi %arg17, %c20 : index
                    %20 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                    %21 = memref.load %arg7[%arg14, %19] : memref<?x22xf64>
                    %22 = arith.mulf %arg4, %21 : f64
                    %23 = memref.load %arg8[%19, %arg16] : memref<?x18xf64>
                    %24 = arith.mulf %22, %23 : f64
                    %25 = arith.addf %20, %24 : f64
                    memref.store %25, %arg6[%arg14, %arg16] : memref<?x18xf64>
                  }
                  %15 = async.create_group %c2 : !async.group
                  %16 = scf.for %arg17 = %c0 to %c2 step %c1 iter_args(%arg18 = %c0) -> (index) {
                    %token_1 = async.execute {
                      %21 = arith.muli %arg17, %c4 : index
                      %22 = arith.addi %21, %c21 : index
                      %23 = arith.addi %22, %c-21 : index
                      %24 = memref.load %arg10[%arg14, %23] : memref<?x24xf64>
                      %25 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %26 = arith.addi %22, %c-21 : index
                      %27 = memref.load %arg9[%arg16, %26] : memref<?x24xf64>
                      %28 = arith.mulf %25, %27 : f64
                      %29 = arith.addf %24, %28 : f64
                      %30 = arith.addi %22, %c-21 : index
                      memref.store %29, %arg10[%arg14, %30] : memref<?x24xf64>
                      %31 = arith.addi %22, %c1 : index
                      %32 = arith.addi %31, %c-21 : index
                      %33 = memref.load %arg10[%arg14, %32] : memref<?x24xf64>
                      %34 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %35 = arith.addi %31, %c-21 : index
                      %36 = memref.load %arg9[%arg16, %35] : memref<?x24xf64>
                      %37 = arith.mulf %34, %36 : f64
                      %38 = arith.addf %33, %37 : f64
                      %39 = arith.addi %31, %c-21 : index
                      memref.store %38, %arg10[%arg14, %39] : memref<?x24xf64>
                      %40 = arith.addi %22, %c2 : index
                      %41 = arith.addi %40, %c-21 : index
                      %42 = memref.load %arg10[%arg14, %41] : memref<?x24xf64>
                      %43 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %44 = arith.addi %40, %c-21 : index
                      %45 = memref.load %arg9[%arg16, %44] : memref<?x24xf64>
                      %46 = arith.mulf %43, %45 : f64
                      %47 = arith.addf %42, %46 : f64
                      %48 = arith.addi %40, %c-21 : index
                      memref.store %47, %arg10[%arg14, %48] : memref<?x24xf64>
                      %49 = arith.addi %22, %c3 : index
                      %50 = arith.addi %49, %c-21 : index
                      %51 = memref.load %arg10[%arg14, %50] : memref<?x24xf64>
                      %52 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %53 = arith.addi %49, %c-21 : index
                      %54 = memref.load %arg9[%arg16, %53] : memref<?x24xf64>
                      %55 = arith.mulf %52, %54 : f64
                      %56 = arith.addf %51, %55 : f64
                      %57 = arith.addi %49, %c-21 : index
                      memref.store %56, %arg10[%arg14, %57] : memref<?x24xf64>
                      async.yield
                    }
                    %19 = async.add_to_group %token_1, %15 : !async.token
                    %20 = arith.addi %arg18, %c1 : index
                    scf.yield %20 : index
                  }
                  async.await_all %15
                  %17 = async.create_group %c3 : !async.group
                  %18 = scf.for %arg17 = %c0 to %c3 step %c1 iter_args(%arg18 = %c0) -> (index) {
                    %token_1 = async.execute {
                      %21 = arith.addi %arg17, %c29 : index
                      %22 = arith.addi %21, %c-21 : index
                      %23 = memref.load %arg10[%arg14, %22] : memref<?x24xf64>
                      %24 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %25 = arith.addi %21, %c-21 : index
                      %26 = memref.load %arg9[%arg16, %25] : memref<?x24xf64>
                      %27 = arith.mulf %24, %26 : f64
                      %28 = arith.addf %23, %27 : f64
                      %29 = arith.addi %21, %c-21 : index
                      memref.store %28, %arg10[%arg14, %29] : memref<?x24xf64>
                      async.yield
                    }
                    %19 = async.add_to_group %token_1, %17 : !async.token
                    %20 = arith.addi %arg18, %c1 : index
                    scf.yield %20 : index
                  }
                  async.await_all %17
                }
                async.yield
              }
              %13 = async.add_to_group %token_0, %11 : !async.token
              %14 = arith.addi %arg15, %c1 : index
              scf.yield %14 : index
            }
            async.await_all %11
          }
          %8 = arith.addi %arg11, %arg12 : index
          %9 = arith.addi %8, %c-1 : index
          %10 = arith.cmpi eq, %9, %c0 : index
          scf.if %10 {
            %11 = async.create_group %c16 : !async.group
            %12 = scf.for %arg14 = %c0 to %c16 step %c1 iter_args(%arg15 = %c0) -> (index) {
              %token_0 = async.execute {
                scf.for %arg16 = %c0 to %c18 step %c1 {
                  %15 = async.create_group %c3 : !async.group
                  %16 = scf.for %arg17 = %c0 to %c3 step %c1 iter_args(%arg18 = %c0) -> (index) {
                    %token_1 = async.execute {
                      %24 = arith.muli %arg17, %c4 : index
                      %25 = arith.addi %24, %c32 : index
                      %26 = arith.addi %25, %c-21 : index
                      %27 = memref.load %arg10[%arg14, %26] : memref<?x24xf64>
                      %28 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %29 = arith.addi %25, %c-21 : index
                      %30 = memref.load %arg9[%arg16, %29] : memref<?x24xf64>
                      %31 = arith.mulf %28, %30 : f64
                      %32 = arith.addf %27, %31 : f64
                      %33 = arith.addi %25, %c-21 : index
                      memref.store %32, %arg10[%arg14, %33] : memref<?x24xf64>
                      %34 = arith.addi %25, %c1 : index
                      %35 = arith.addi %34, %c-21 : index
                      %36 = memref.load %arg10[%arg14, %35] : memref<?x24xf64>
                      %37 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %38 = arith.addi %34, %c-21 : index
                      %39 = memref.load %arg9[%arg16, %38] : memref<?x24xf64>
                      %40 = arith.mulf %37, %39 : f64
                      %41 = arith.addf %36, %40 : f64
                      %42 = arith.addi %34, %c-21 : index
                      memref.store %41, %arg10[%arg14, %42] : memref<?x24xf64>
                      %43 = arith.addi %25, %c2 : index
                      %44 = arith.addi %43, %c-21 : index
                      %45 = memref.load %arg10[%arg14, %44] : memref<?x24xf64>
                      %46 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %47 = arith.addi %43, %c-21 : index
                      %48 = memref.load %arg9[%arg16, %47] : memref<?x24xf64>
                      %49 = arith.mulf %46, %48 : f64
                      %50 = arith.addf %45, %49 : f64
                      %51 = arith.addi %43, %c-21 : index
                      memref.store %50, %arg10[%arg14, %51] : memref<?x24xf64>
                      %52 = arith.addi %25, %c3 : index
                      %53 = arith.addi %52, %c-21 : index
                      %54 = memref.load %arg10[%arg14, %53] : memref<?x24xf64>
                      %55 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                      %56 = arith.addi %52, %c-21 : index
                      %57 = memref.load %arg9[%arg16, %56] : memref<?x24xf64>
                      %58 = arith.mulf %55, %57 : f64
                      %59 = arith.addf %54, %58 : f64
                      %60 = arith.addi %52, %c-21 : index
                      memref.store %59, %arg10[%arg14, %60] : memref<?x24xf64>
                      async.yield
                    }
                    %22 = async.add_to_group %token_1, %15 : !async.token
                    %23 = arith.addi %arg18, %c1 : index
                    scf.yield %23 : index
                  }
                  async.await_all %15
                  %17 = memref.load %arg10[%arg14, %c23] : memref<?x24xf64>
                  %18 = memref.load %arg6[%arg14, %arg16] : memref<?x18xf64>
                  %19 = memref.load %arg9[%arg16, %c23] : memref<?x24xf64>
                  %20 = arith.mulf %18, %19 : f64
                  %21 = arith.addf %17, %20 : f64
                  memref.store %21, %arg10[%arg14, %c23] : memref<?x24xf64>
                }
                async.yield
              }
              %13 = async.add_to_group %token_0, %11 : !async.token
              %14 = arith.addi %arg15, %c1 : index
              scf.yield %14 : index
            }
            async.await_all %11
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg13, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

