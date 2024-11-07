module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c21 = arith.constant 21 : index
    %c12 = arith.constant 12 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c-19 = arith.constant -19 : index
    %c19 = arith.constant 19 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg12 = %c0 to %c16 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = async.create_group %c1 : !async.group
        %11 = scf.for %arg14 = %c0 to %c1 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %14 = arith.addi %arg12, %arg14 : index
            %15 = async.create_group %c5 : !async.group
            %16 = scf.for %arg16 = %c0 to %c5 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %21 = arith.muli %arg16, %c4 : index
                memref.store %cst, %arg11[%14, %21] : memref<?x22xf64>
                memref.store %cst, %arg8[%14, %21] : memref<?x22xf64>
                %22 = arith.addi %21, %c1 : index
                memref.store %cst, %arg11[%14, %22] : memref<?x22xf64>
                memref.store %cst, %arg8[%14, %22] : memref<?x22xf64>
                %23 = arith.addi %21, %c2 : index
                memref.store %cst, %arg11[%14, %23] : memref<?x22xf64>
                memref.store %cst, %arg8[%14, %23] : memref<?x22xf64>
                %24 = arith.addi %21, %c3 : index
                memref.store %cst, %arg11[%14, %24] : memref<?x22xf64>
                memref.store %cst, %arg8[%14, %24] : memref<?x22xf64>
                async.yield
              }
              %19 = async.add_to_group %token_1, %15 : !async.token
              %20 = arith.addi %arg17, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %15
            %17 = async.create_group %c2 : !async.group
            %18 = scf.for %arg16 = %c0 to %c2 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %21 = arith.addi %arg16, %c20 : index
                memref.store %cst, %arg11[%14, %21] : memref<?x22xf64>
                memref.store %cst, %arg8[%14, %21] : memref<?x22xf64>
                async.yield
              }
              %19 = async.add_to_group %token_1, %17 : !async.token
              %20 = arith.addi %arg17, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %17
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
    %3 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %10 = arith.addi %arg12, %c16 : index
        %11 = async.create_group %c1 : !async.group
        %12 = scf.for %arg14 = %c0 to %c1 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %15 = arith.addi %10, %arg14 : index
            %16 = async.create_group %c5 : !async.group
            %17 = scf.for %arg16 = %c0 to %c5 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %22 = arith.muli %arg16, %c4 : index
                memref.store %cst, %arg8[%15, %22] : memref<?x22xf64>
                %23 = arith.addi %22, %c1 : index
                memref.store %cst, %arg8[%15, %23] : memref<?x22xf64>
                %24 = arith.addi %22, %c2 : index
                memref.store %cst, %arg8[%15, %24] : memref<?x22xf64>
                %25 = arith.addi %22, %c3 : index
                memref.store %cst, %arg8[%15, %25] : memref<?x22xf64>
                async.yield
              }
              %20 = async.add_to_group %token_1, %16 : !async.token
              %21 = arith.addi %arg17, %c1 : index
              scf.yield %21 : index
            }
            async.await_all %16
            %18 = async.create_group %c2 : !async.group
            %19 = scf.for %arg16 = %c0 to %c2 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %22 = arith.addi %arg16, %c20 : index
                memref.store %cst, %arg8[%15, %22] : memref<?x22xf64>
                async.yield
              }
              %20 = async.add_to_group %token_1, %18 : !async.token
              %21 = arith.addi %arg17, %c1 : index
              scf.yield %21 : index
            }
            async.await_all %18
            async.yield
          }
          %13 = async.add_to_group %token_0, %11 : !async.token
          %14 = arith.addi %arg15, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
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
          %10 = async.create_group %c1 : !async.group
          %11 = scf.for %arg15 = %c0 to %c1 step %c1 iter_args(%arg16 = %c0) -> (index) {
            %token_0 = async.execute {
              %14 = arith.addi %arg12, %arg15 : index
              %15 = async.create_group %c1 : !async.group
              %16 = scf.for %arg17 = %c0 to %c1 step %c1 iter_args(%arg18 = %c0) -> (index) {
                %token_1 = async.execute {
                  %19 = arith.addi %arg14, %arg17 : index
                  %20 = async.create_group %c5 : !async.group
                  %21 = scf.for %arg19 = %c0 to %c5 step %c1 iter_args(%arg20 = %c0) -> (index) {
                    %token_2 = async.execute {
                      %26 = arith.muli %arg19, %c4 : index
                      %27 = memref.load %arg8[%14, %26] : memref<?x22xf64>
                      %28 = memref.load %arg9[%14, %19] : memref<?x24xf64>
                      %29 = memref.load %arg10[%19, %26] : memref<?x22xf64>
                      %30 = arith.mulf %28, %29 : f64
                      %31 = arith.addf %27, %30 : f64
                      memref.store %31, %arg8[%14, %26] : memref<?x22xf64>
                      %32 = arith.addi %26, %c1 : index
                      %33 = memref.load %arg8[%14, %32] : memref<?x22xf64>
                      %34 = memref.load %arg9[%14, %19] : memref<?x24xf64>
                      %35 = memref.load %arg10[%19, %32] : memref<?x22xf64>
                      %36 = arith.mulf %34, %35 : f64
                      %37 = arith.addf %33, %36 : f64
                      memref.store %37, %arg8[%14, %32] : memref<?x22xf64>
                      %38 = arith.addi %26, %c2 : index
                      %39 = memref.load %arg8[%14, %38] : memref<?x22xf64>
                      %40 = memref.load %arg9[%14, %19] : memref<?x24xf64>
                      %41 = memref.load %arg10[%19, %38] : memref<?x22xf64>
                      %42 = arith.mulf %40, %41 : f64
                      %43 = arith.addf %39, %42 : f64
                      memref.store %43, %arg8[%14, %38] : memref<?x22xf64>
                      %44 = arith.addi %26, %c3 : index
                      %45 = memref.load %arg8[%14, %44] : memref<?x22xf64>
                      %46 = memref.load %arg9[%14, %19] : memref<?x24xf64>
                      %47 = memref.load %arg10[%19, %44] : memref<?x22xf64>
                      %48 = arith.mulf %46, %47 : f64
                      %49 = arith.addf %45, %48 : f64
                      memref.store %49, %arg8[%14, %44] : memref<?x22xf64>
                      async.yield
                    }
                    %24 = async.add_to_group %token_2, %20 : !async.token
                    %25 = arith.addi %arg20, %c1 : index
                    scf.yield %25 : index
                  }
                  async.await_all %20
                  %22 = async.create_group %c2 : !async.group
                  %23 = scf.for %arg19 = %c0 to %c2 step %c1 iter_args(%arg20 = %c0) -> (index) {
                    %token_2 = async.execute {
                      %26 = arith.addi %arg19, %c20 : index
                      %27 = memref.load %arg8[%14, %26] : memref<?x22xf64>
                      %28 = memref.load %arg9[%14, %19] : memref<?x24xf64>
                      %29 = memref.load %arg10[%19, %26] : memref<?x22xf64>
                      %30 = arith.mulf %28, %29 : f64
                      %31 = arith.addf %27, %30 : f64
                      memref.store %31, %arg8[%14, %26] : memref<?x22xf64>
                      async.yield
                    }
                    %24 = async.add_to_group %token_2, %22 : !async.token
                    %25 = arith.addi %arg20, %c1 : index
                    scf.yield %25 : index
                  }
                  async.await_all %22
                  async.yield
                }
                %17 = async.add_to_group %token_1, %15 : !async.token
                %18 = arith.addi %arg18, %c1 : index
                scf.yield %18 : index
              }
              async.await_all %15
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
        %10 = async.create_group %c1 : !async.group
        %11 = scf.for %arg14 = %c0 to %c1 step %c1 iter_args(%arg15 = %c0) -> (index) {
          %token_0 = async.execute {
            %14 = arith.addi %arg12, %arg14 : index
            %15 = async.create_group %c4 : !async.group
            %16 = scf.for %arg16 = %c0 to %c4 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %21 = arith.muli %arg16, %c4 : index
                memref.store %cst, %arg5[%14, %21] : memref<?x18xf64>
                %22 = arith.addi %21, %c1 : index
                memref.store %cst, %arg5[%14, %22] : memref<?x18xf64>
                %23 = arith.addi %21, %c2 : index
                memref.store %cst, %arg5[%14, %23] : memref<?x18xf64>
                %24 = arith.addi %21, %c3 : index
                memref.store %cst, %arg5[%14, %24] : memref<?x18xf64>
                async.yield
              }
              %19 = async.add_to_group %token_1, %15 : !async.token
              %20 = arith.addi %arg17, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %15
            %17 = async.create_group %c2 : !async.group
            %18 = scf.for %arg16 = %c0 to %c2 step %c1 iter_args(%arg17 = %c0) -> (index) {
              %token_1 = async.execute {
                %21 = arith.addi %arg16, %c16 : index
                memref.store %cst, %arg5[%14, %21] : memref<?x18xf64>
                async.yield
              }
              %19 = async.add_to_group %token_1, %17 : !async.token
              %20 = arith.addi %arg17, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %17
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
      %8 = async.create_group %c1 : !async.group
      %9 = scf.for %arg13 = %c0 to %c1 step %c1 iter_args(%arg14 = %c0) -> (index) {
        %token = async.execute {
          %12 = arith.addi %arg12, %arg13 : index
          %13 = arith.cmpi eq, %12, %c0 : index
          scf.if %13 {
            %17 = async.create_group %c16 : !async.group
            %18 = scf.for %arg15 = %c0 to %c16 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_0 = async.execute {
                scf.for %arg17 = %c0 to %c18 step %c1 {
                  scf.for %arg18 = %c0 to %c5 step %c1 {
                    %28 = arith.muli %arg18, %c4 : index
                    %29 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %30 = memref.load %arg6[%arg15, %28] : memref<?x20xf64>
                    %31 = memref.load %arg7[%28, %arg17] : memref<?x18xf64>
                    %32 = arith.mulf %30, %31 : f64
                    %33 = arith.addf %29, %32 : f64
                    memref.store %33, %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %34 = arith.addi %28, %c1 : index
                    %35 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %36 = memref.load %arg6[%arg15, %34] : memref<?x20xf64>
                    %37 = memref.load %arg7[%34, %arg17] : memref<?x18xf64>
                    %38 = arith.mulf %36, %37 : f64
                    %39 = arith.addf %35, %38 : f64
                    memref.store %39, %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %40 = arith.addi %28, %c2 : index
                    %41 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %42 = memref.load %arg6[%arg15, %40] : memref<?x20xf64>
                    %43 = memref.load %arg7[%40, %arg17] : memref<?x18xf64>
                    %44 = arith.mulf %42, %43 : f64
                    %45 = arith.addf %41, %44 : f64
                    memref.store %45, %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %46 = arith.addi %28, %c3 : index
                    %47 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                    %48 = memref.load %arg6[%arg15, %46] : memref<?x20xf64>
                    %49 = memref.load %arg7[%46, %arg17] : memref<?x18xf64>
                    %50 = arith.mulf %48, %49 : f64
                    %51 = arith.addf %47, %50 : f64
                    memref.store %51, %arg5[%arg15, %arg17] : memref<?x18xf64>
                  }
                  %21 = async.create_group %c3 : !async.group
                  %22 = scf.for %arg18 = %c0 to %c3 step %c1 iter_args(%arg19 = %c0) -> (index) {
                    %token_1 = async.execute {
                      %30 = arith.muli %arg18, %c4 : index
                      %31 = arith.addi %30, %c19 : index
                      %32 = arith.addi %31, %c-19 : index
                      %33 = memref.load %arg11[%arg15, %32] : memref<?x22xf64>
                      %34 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %35 = arith.addi %31, %c-19 : index
                      %36 = memref.load %arg8[%arg17, %35] : memref<?x22xf64>
                      %37 = arith.mulf %34, %36 : f64
                      %38 = arith.addf %33, %37 : f64
                      %39 = arith.addi %31, %c-19 : index
                      memref.store %38, %arg11[%arg15, %39] : memref<?x22xf64>
                      %40 = arith.addi %31, %c1 : index
                      %41 = arith.addi %40, %c-19 : index
                      %42 = memref.load %arg11[%arg15, %41] : memref<?x22xf64>
                      %43 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %44 = arith.addi %40, %c-19 : index
                      %45 = memref.load %arg8[%arg17, %44] : memref<?x22xf64>
                      %46 = arith.mulf %43, %45 : f64
                      %47 = arith.addf %42, %46 : f64
                      %48 = arith.addi %40, %c-19 : index
                      memref.store %47, %arg11[%arg15, %48] : memref<?x22xf64>
                      %49 = arith.addi %31, %c2 : index
                      %50 = arith.addi %49, %c-19 : index
                      %51 = memref.load %arg11[%arg15, %50] : memref<?x22xf64>
                      %52 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %53 = arith.addi %49, %c-19 : index
                      %54 = memref.load %arg8[%arg17, %53] : memref<?x22xf64>
                      %55 = arith.mulf %52, %54 : f64
                      %56 = arith.addf %51, %55 : f64
                      %57 = arith.addi %49, %c-19 : index
                      memref.store %56, %arg11[%arg15, %57] : memref<?x22xf64>
                      %58 = arith.addi %31, %c3 : index
                      %59 = arith.addi %58, %c-19 : index
                      %60 = memref.load %arg11[%arg15, %59] : memref<?x22xf64>
                      %61 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %62 = arith.addi %58, %c-19 : index
                      %63 = memref.load %arg8[%arg17, %62] : memref<?x22xf64>
                      %64 = arith.mulf %61, %63 : f64
                      %65 = arith.addf %60, %64 : f64
                      %66 = arith.addi %58, %c-19 : index
                      memref.store %65, %arg11[%arg15, %66] : memref<?x22xf64>
                      async.yield
                    }
                    %28 = async.add_to_group %token_1, %21 : !async.token
                    %29 = arith.addi %arg19, %c1 : index
                    scf.yield %29 : index
                  }
                  async.await_all %21
                  %23 = memref.load %arg11[%arg15, %c12] : memref<?x22xf64>
                  %24 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                  %25 = memref.load %arg8[%arg17, %c12] : memref<?x22xf64>
                  %26 = arith.mulf %24, %25 : f64
                  %27 = arith.addf %23, %26 : f64
                  memref.store %27, %arg11[%arg15, %c12] : memref<?x22xf64>
                }
                async.yield
              }
              %19 = async.add_to_group %token_0, %17 : !async.token
              %20 = arith.addi %arg16, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %17
          }
          %14 = arith.addi %arg12, %arg13 : index
          %15 = arith.addi %14, %c-1 : index
          %16 = arith.cmpi eq, %15, %c0 : index
          scf.if %16 {
            %17 = async.create_group %c16 : !async.group
            %18 = scf.for %arg15 = %c0 to %c16 step %c1 iter_args(%arg16 = %c0) -> (index) {
              %token_0 = async.execute {
                scf.for %arg17 = %c0 to %c18 step %c1 {
                  %21 = async.create_group %c2 : !async.group
                  %22 = scf.for %arg18 = %c0 to %c2 step %c1 iter_args(%arg19 = %c0) -> (index) {
                    %token_1 = async.execute {
                      %30 = arith.muli %arg18, %c4 : index
                      %31 = arith.addi %30, %c32 : index
                      %32 = arith.addi %31, %c-19 : index
                      %33 = memref.load %arg11[%arg15, %32] : memref<?x22xf64>
                      %34 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %35 = arith.addi %31, %c-19 : index
                      %36 = memref.load %arg8[%arg17, %35] : memref<?x22xf64>
                      %37 = arith.mulf %34, %36 : f64
                      %38 = arith.addf %33, %37 : f64
                      %39 = arith.addi %31, %c-19 : index
                      memref.store %38, %arg11[%arg15, %39] : memref<?x22xf64>
                      %40 = arith.addi %31, %c1 : index
                      %41 = arith.addi %40, %c-19 : index
                      %42 = memref.load %arg11[%arg15, %41] : memref<?x22xf64>
                      %43 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %44 = arith.addi %40, %c-19 : index
                      %45 = memref.load %arg8[%arg17, %44] : memref<?x22xf64>
                      %46 = arith.mulf %43, %45 : f64
                      %47 = arith.addf %42, %46 : f64
                      %48 = arith.addi %40, %c-19 : index
                      memref.store %47, %arg11[%arg15, %48] : memref<?x22xf64>
                      %49 = arith.addi %31, %c2 : index
                      %50 = arith.addi %49, %c-19 : index
                      %51 = memref.load %arg11[%arg15, %50] : memref<?x22xf64>
                      %52 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %53 = arith.addi %49, %c-19 : index
                      %54 = memref.load %arg8[%arg17, %53] : memref<?x22xf64>
                      %55 = arith.mulf %52, %54 : f64
                      %56 = arith.addf %51, %55 : f64
                      %57 = arith.addi %49, %c-19 : index
                      memref.store %56, %arg11[%arg15, %57] : memref<?x22xf64>
                      %58 = arith.addi %31, %c3 : index
                      %59 = arith.addi %58, %c-19 : index
                      %60 = memref.load %arg11[%arg15, %59] : memref<?x22xf64>
                      %61 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                      %62 = arith.addi %58, %c-19 : index
                      %63 = memref.load %arg8[%arg17, %62] : memref<?x22xf64>
                      %64 = arith.mulf %61, %63 : f64
                      %65 = arith.addf %60, %64 : f64
                      %66 = arith.addi %58, %c-19 : index
                      memref.store %65, %arg11[%arg15, %66] : memref<?x22xf64>
                      async.yield
                    }
                    %28 = async.add_to_group %token_1, %21 : !async.token
                    %29 = arith.addi %arg19, %c1 : index
                    scf.yield %29 : index
                  }
                  async.await_all %21
                  %23 = memref.load %arg11[%arg15, %c21] : memref<?x22xf64>
                  %24 = memref.load %arg5[%arg15, %arg17] : memref<?x18xf64>
                  %25 = memref.load %arg8[%arg17, %c21] : memref<?x22xf64>
                  %26 = arith.mulf %24, %25 : f64
                  %27 = arith.addf %23, %26 : f64
                  memref.store %27, %arg11[%arg15, %c21] : memref<?x22xf64>
                }
                async.yield
              }
              %19 = async.add_to_group %token_0, %17 : !async.token
              %20 = arith.addi %arg16, %c1 : index
              scf.yield %20 : index
            }
            async.await_all %17
          }
          async.yield
        }
        %10 = async.add_to_group %token, %8 : !async.token
        %11 = arith.addi %arg14, %c1 : index
        scf.yield %11 : index
      }
      async.await_all %8
    }
    return
  }
}

