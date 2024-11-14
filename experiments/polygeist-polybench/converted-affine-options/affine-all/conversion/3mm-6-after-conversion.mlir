module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c21 = arith.constant 21 : index
    %c12 = arith.constant 12 : index
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
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c16 step %c1 {
          %13 = arith.addi %12, %arg14 : index
          scf.for %arg15 = %c0 to %c5 step %c1 {
            %14 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg11[%13, %14] : memref<?x22xf64>
            memref.store %cst, %arg8[%13, %14] : memref<?x22xf64>
            %15 = arith.addi %14, %c1 : index
            memref.store %cst, %arg11[%13, %15] : memref<?x22xf64>
            memref.store %cst, %arg8[%13, %15] : memref<?x22xf64>
            %16 = arith.addi %14, %c2 : index
            memref.store %cst, %arg11[%13, %16] : memref<?x22xf64>
            memref.store %cst, %arg8[%13, %16] : memref<?x22xf64>
            %17 = arith.addi %14, %c3 : index
            memref.store %cst, %arg11[%13, %17] : memref<?x22xf64>
            memref.store %cst, %arg8[%13, %17] : memref<?x22xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %14 = arith.addi %arg15, %c20 : index
            memref.store %cst, %arg11[%13, %14] : memref<?x22xf64>
            memref.store %cst, %arg8[%13, %14] : memref<?x22xf64>
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %0 : !async.token
      %11 = arith.addi %arg13, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.muli %arg12, %c32 : index
        %13 = arith.addi %12, %c16 : index
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %14 = arith.addi %13, %arg14 : index
          scf.for %arg15 = %c0 to %c5 step %c1 {
            %15 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg8[%14, %15] : memref<?x22xf64>
            %16 = arith.addi %15, %c1 : index
            memref.store %cst, %arg8[%14, %16] : memref<?x22xf64>
            %17 = arith.addi %15, %c2 : index
            memref.store %cst, %arg8[%14, %17] : memref<?x22xf64>
            %18 = arith.addi %15, %c3 : index
            memref.store %cst, %arg8[%14, %18] : memref<?x22xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %15 = arith.addi %arg15, %c20 : index
            memref.store %cst, %arg8[%14, %15] : memref<?x22xf64>
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %2 : !async.token
      %11 = arith.addi %arg13, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %2
    %4 = async.create_group %c1 : !async.group
    %5 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %13 = arith.muli %arg14, %c32 : index
          scf.for %arg15 = %c0 to %c18 step %c1 {
            %14 = arith.addi %12, %arg15 : index
            scf.for %arg16 = %c0 to %c24 step %c1 {
              %15 = arith.addi %13, %arg16 : index
              %16 = memref.load %arg9[%14, %15] : memref<?x24xf64>
              %17 = memref.load %arg9[%14, %15] : memref<?x24xf64>
              %18 = memref.load %arg9[%14, %15] : memref<?x24xf64>
              %19 = memref.load %arg9[%14, %15] : memref<?x24xf64>
              scf.for %arg17 = %c0 to %c5 step %c1 {
                %21 = arith.muli %arg17, %c4 : index
                %22 = memref.load %arg8[%14, %21] : memref<?x22xf64>
                %23 = memref.load %arg10[%15, %21] : memref<?x22xf64>
                %24 = arith.mulf %16, %23 : f64
                %25 = arith.addf %22, %24 : f64
                memref.store %25, %arg8[%14, %21] : memref<?x22xf64>
                %26 = arith.addi %21, %c1 : index
                %27 = memref.load %arg8[%14, %26] : memref<?x22xf64>
                %28 = memref.load %arg10[%15, %26] : memref<?x22xf64>
                %29 = arith.mulf %17, %28 : f64
                %30 = arith.addf %27, %29 : f64
                memref.store %30, %arg8[%14, %26] : memref<?x22xf64>
                %31 = arith.addi %21, %c2 : index
                %32 = memref.load %arg8[%14, %31] : memref<?x22xf64>
                %33 = memref.load %arg10[%15, %31] : memref<?x22xf64>
                %34 = arith.mulf %18, %33 : f64
                %35 = arith.addf %32, %34 : f64
                memref.store %35, %arg8[%14, %31] : memref<?x22xf64>
                %36 = arith.addi %21, %c3 : index
                %37 = memref.load %arg8[%14, %36] : memref<?x22xf64>
                %38 = memref.load %arg10[%15, %36] : memref<?x22xf64>
                %39 = arith.mulf %19, %38 : f64
                %40 = arith.addf %37, %39 : f64
                memref.store %40, %arg8[%14, %36] : memref<?x22xf64>
              }
              %20 = memref.load %arg9[%14, %15] : memref<?x24xf64>
              scf.for %arg17 = %c0 to %c2 step %c1 {
                %21 = arith.addi %arg17, %c20 : index
                %22 = memref.load %arg8[%14, %21] : memref<?x22xf64>
                %23 = memref.load %arg10[%15, %21] : memref<?x22xf64>
                %24 = arith.mulf %20, %23 : f64
                %25 = arith.addf %22, %24 : f64
                memref.store %25, %arg8[%14, %21] : memref<?x22xf64>
              }
            }
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %4 : !async.token
      %11 = arith.addi %arg13, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %4
    %6 = async.create_group %c1 : !async.group
    %7 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.muli %arg12, %c32 : index
        scf.for %arg14 = %c0 to %c16 step %c1 {
          %13 = arith.addi %12, %arg14 : index
          scf.for %arg15 = %c0 to %c4 step %c1 {
            %14 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg5[%13, %14] : memref<?x18xf64>
            %15 = arith.addi %14, %c1 : index
            memref.store %cst, %arg5[%13, %15] : memref<?x18xf64>
            %16 = arith.addi %14, %c2 : index
            memref.store %cst, %arg5[%13, %16] : memref<?x18xf64>
            %17 = arith.addi %14, %c3 : index
            memref.store %cst, %arg5[%13, %17] : memref<?x18xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %14 = arith.addi %arg15, %c16 : index
            memref.store %cst, %arg5[%13, %14] : memref<?x18xf64>
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %6 : !async.token
      %11 = arith.addi %arg13, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %6
    %8 = async.create_group %c1 : !async.group
    %9 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %12 = arith.muli %arg12, %c32 : index
          %13 = arith.addi %arg14, %12 : index
          %14 = arith.cmpi eq, %13, %c0 : index
          scf.if %14 {
            scf.for %arg15 = %c0 to %c16 step %c1 {
              scf.for %arg16 = %c0 to %c18 step %c1 {
                scf.for %arg17 = %c0 to %c5 step %c1 {
                  %28 = arith.muli %arg17, %c4 : index
                  %29 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %30 = memref.load %arg6[%arg15, %28] : memref<?x20xf64>
                  %31 = memref.load %arg7[%28, %arg16] : memref<?x18xf64>
                  %32 = arith.mulf %30, %31 : f64
                  %33 = arith.addf %29, %32 : f64
                  memref.store %33, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %34 = arith.addi %28, %c1 : index
                  %35 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %36 = memref.load %arg6[%arg15, %34] : memref<?x20xf64>
                  %37 = memref.load %arg7[%34, %arg16] : memref<?x18xf64>
                  %38 = arith.mulf %36, %37 : f64
                  %39 = arith.addf %35, %38 : f64
                  memref.store %39, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %40 = arith.addi %28, %c2 : index
                  %41 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %42 = memref.load %arg6[%arg15, %40] : memref<?x20xf64>
                  %43 = memref.load %arg7[%40, %arg16] : memref<?x18xf64>
                  %44 = arith.mulf %42, %43 : f64
                  %45 = arith.addf %41, %44 : f64
                  memref.store %45, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %46 = arith.addi %28, %c3 : index
                  %47 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %48 = memref.load %arg6[%arg15, %46] : memref<?x20xf64>
                  %49 = memref.load %arg7[%46, %arg16] : memref<?x18xf64>
                  %50 = arith.mulf %48, %49 : f64
                  %51 = arith.addf %47, %50 : f64
                  memref.store %51, %arg5[%arg15, %arg16] : memref<?x18xf64>
                }
                %19 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %20 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %21 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %22 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                scf.for %arg17 = %c0 to %c3 step %c1 {
                  %28 = arith.muli %arg17, %c4 : index
                  %29 = arith.addi %28, %c19 : index
                  %30 = arith.addi %29, %c-19 : index
                  %31 = memref.load %arg11[%arg15, %30] : memref<?x22xf64>
                  %32 = arith.addi %29, %c-19 : index
                  %33 = memref.load %arg8[%arg16, %32] : memref<?x22xf64>
                  %34 = arith.mulf %19, %33 : f64
                  %35 = arith.addf %31, %34 : f64
                  %36 = arith.addi %29, %c-19 : index
                  memref.store %35, %arg11[%arg15, %36] : memref<?x22xf64>
                  %37 = arith.addi %29, %c1 : index
                  %38 = arith.addi %37, %c-19 : index
                  %39 = memref.load %arg11[%arg15, %38] : memref<?x22xf64>
                  %40 = arith.addi %37, %c-19 : index
                  %41 = memref.load %arg8[%arg16, %40] : memref<?x22xf64>
                  %42 = arith.mulf %20, %41 : f64
                  %43 = arith.addf %39, %42 : f64
                  %44 = arith.addi %37, %c-19 : index
                  memref.store %43, %arg11[%arg15, %44] : memref<?x22xf64>
                  %45 = arith.addi %29, %c2 : index
                  %46 = arith.addi %45, %c-19 : index
                  %47 = memref.load %arg11[%arg15, %46] : memref<?x22xf64>
                  %48 = arith.addi %45, %c-19 : index
                  %49 = memref.load %arg8[%arg16, %48] : memref<?x22xf64>
                  %50 = arith.mulf %21, %49 : f64
                  %51 = arith.addf %47, %50 : f64
                  %52 = arith.addi %45, %c-19 : index
                  memref.store %51, %arg11[%arg15, %52] : memref<?x22xf64>
                  %53 = arith.addi %29, %c3 : index
                  %54 = arith.addi %53, %c-19 : index
                  %55 = memref.load %arg11[%arg15, %54] : memref<?x22xf64>
                  %56 = arith.addi %53, %c-19 : index
                  %57 = memref.load %arg8[%arg16, %56] : memref<?x22xf64>
                  %58 = arith.mulf %22, %57 : f64
                  %59 = arith.addf %55, %58 : f64
                  %60 = arith.addi %53, %c-19 : index
                  memref.store %59, %arg11[%arg15, %60] : memref<?x22xf64>
                }
                %23 = memref.load %arg11[%arg15, %c12] : memref<?x22xf64>
                %24 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %25 = memref.load %arg8[%arg16, %c12] : memref<?x22xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg11[%arg15, %c12] : memref<?x22xf64>
              }
            }
          }
          %15 = arith.muli %arg12, %c32 : index
          %16 = arith.addi %arg14, %15 : index
          %17 = arith.addi %16, %c-1 : index
          %18 = arith.cmpi eq, %17, %c0 : index
          scf.if %18 {
            scf.for %arg15 = %c0 to %c16 step %c1 {
              scf.for %arg16 = %c0 to %c18 step %c1 {
                %19 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %20 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %21 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %22 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                scf.for %arg17 = %c0 to %c2 step %c1 {
                  %28 = arith.muli %arg17, %c4 : index
                  %29 = arith.addi %28, %c32 : index
                  %30 = arith.addi %29, %c-19 : index
                  %31 = memref.load %arg11[%arg15, %30] : memref<?x22xf64>
                  %32 = arith.addi %29, %c-19 : index
                  %33 = memref.load %arg8[%arg16, %32] : memref<?x22xf64>
                  %34 = arith.mulf %19, %33 : f64
                  %35 = arith.addf %31, %34 : f64
                  %36 = arith.addi %29, %c-19 : index
                  memref.store %35, %arg11[%arg15, %36] : memref<?x22xf64>
                  %37 = arith.addi %29, %c1 : index
                  %38 = arith.addi %37, %c-19 : index
                  %39 = memref.load %arg11[%arg15, %38] : memref<?x22xf64>
                  %40 = arith.addi %37, %c-19 : index
                  %41 = memref.load %arg8[%arg16, %40] : memref<?x22xf64>
                  %42 = arith.mulf %20, %41 : f64
                  %43 = arith.addf %39, %42 : f64
                  %44 = arith.addi %37, %c-19 : index
                  memref.store %43, %arg11[%arg15, %44] : memref<?x22xf64>
                  %45 = arith.addi %29, %c2 : index
                  %46 = arith.addi %45, %c-19 : index
                  %47 = memref.load %arg11[%arg15, %46] : memref<?x22xf64>
                  %48 = arith.addi %45, %c-19 : index
                  %49 = memref.load %arg8[%arg16, %48] : memref<?x22xf64>
                  %50 = arith.mulf %21, %49 : f64
                  %51 = arith.addf %47, %50 : f64
                  %52 = arith.addi %45, %c-19 : index
                  memref.store %51, %arg11[%arg15, %52] : memref<?x22xf64>
                  %53 = arith.addi %29, %c3 : index
                  %54 = arith.addi %53, %c-19 : index
                  %55 = memref.load %arg11[%arg15, %54] : memref<?x22xf64>
                  %56 = arith.addi %53, %c-19 : index
                  %57 = memref.load %arg8[%arg16, %56] : memref<?x22xf64>
                  %58 = arith.mulf %22, %57 : f64
                  %59 = arith.addf %55, %58 : f64
                  %60 = arith.addi %53, %c-19 : index
                  memref.store %59, %arg11[%arg15, %60] : memref<?x22xf64>
                }
                %23 = memref.load %arg11[%arg15, %c21] : memref<?x22xf64>
                %24 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %25 = memref.load %arg8[%arg16, %c21] : memref<?x22xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg11[%arg15, %c21] : memref<?x22xf64>
              }
            }
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %8 : !async.token
      %11 = arith.addi %arg13, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %8
    return
  }
}

