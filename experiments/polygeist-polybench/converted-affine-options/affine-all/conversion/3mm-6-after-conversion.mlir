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
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %10 = arith.addi %arg12, %arg14 : index
          scf.for %arg15 = %c0 to %c5 step %c1 {
            %11 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg11[%10, %11] : memref<?x22xf64>
            memref.store %cst, %arg8[%10, %11] : memref<?x22xf64>
            %12 = arith.addi %11, %c1 : index
            memref.store %cst, %arg11[%10, %12] : memref<?x22xf64>
            memref.store %cst, %arg8[%10, %12] : memref<?x22xf64>
            %13 = arith.addi %11, %c2 : index
            memref.store %cst, %arg11[%10, %13] : memref<?x22xf64>
            memref.store %cst, %arg8[%10, %13] : memref<?x22xf64>
            %14 = arith.addi %11, %c3 : index
            memref.store %cst, %arg11[%10, %14] : memref<?x22xf64>
            memref.store %cst, %arg8[%10, %14] : memref<?x22xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %11 = arith.addi %arg15, %c20 : index
            memref.store %cst, %arg11[%10, %11] : memref<?x22xf64>
            memref.store %cst, %arg8[%10, %11] : memref<?x22xf64>
          }
        }
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
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %11 = arith.addi %10, %arg14 : index
          scf.for %arg15 = %c0 to %c5 step %c1 {
            %12 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg8[%11, %12] : memref<?x22xf64>
            %13 = arith.addi %12, %c1 : index
            memref.store %cst, %arg8[%11, %13] : memref<?x22xf64>
            %14 = arith.addi %12, %c2 : index
            memref.store %cst, %arg8[%11, %14] : memref<?x22xf64>
            %15 = arith.addi %12, %c3 : index
            memref.store %cst, %arg8[%11, %15] : memref<?x22xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %12 = arith.addi %arg15, %c20 : index
            memref.store %cst, %arg8[%11, %12] : memref<?x22xf64>
          }
        }
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
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %10 = arith.addi %arg12, %arg15 : index
            scf.for %arg16 = %c0 to %c1 step %c1 {
              %11 = arith.addi %arg14, %arg16 : index
              %12 = memref.load %arg9[%10, %11] : memref<?x24xf64>
              %13 = memref.load %arg9[%10, %11] : memref<?x24xf64>
              %14 = memref.load %arg9[%10, %11] : memref<?x24xf64>
              %15 = memref.load %arg9[%10, %11] : memref<?x24xf64>
              scf.for %arg17 = %c0 to %c5 step %c1 {
                %17 = arith.muli %arg17, %c4 : index
                %18 = memref.load %arg8[%10, %17] : memref<?x22xf64>
                %19 = memref.load %arg10[%11, %17] : memref<?x22xf64>
                %20 = arith.mulf %12, %19 : f64
                %21 = arith.addf %18, %20 : f64
                memref.store %21, %arg8[%10, %17] : memref<?x22xf64>
                %22 = arith.addi %17, %c1 : index
                %23 = memref.load %arg8[%10, %22] : memref<?x22xf64>
                %24 = memref.load %arg10[%11, %22] : memref<?x22xf64>
                %25 = arith.mulf %13, %24 : f64
                %26 = arith.addf %23, %25 : f64
                memref.store %26, %arg8[%10, %22] : memref<?x22xf64>
                %27 = arith.addi %17, %c2 : index
                %28 = memref.load %arg8[%10, %27] : memref<?x22xf64>
                %29 = memref.load %arg10[%11, %27] : memref<?x22xf64>
                %30 = arith.mulf %14, %29 : f64
                %31 = arith.addf %28, %30 : f64
                memref.store %31, %arg8[%10, %27] : memref<?x22xf64>
                %32 = arith.addi %17, %c3 : index
                %33 = memref.load %arg8[%10, %32] : memref<?x22xf64>
                %34 = memref.load %arg10[%11, %32] : memref<?x22xf64>
                %35 = arith.mulf %15, %34 : f64
                %36 = arith.addf %33, %35 : f64
                memref.store %36, %arg8[%10, %32] : memref<?x22xf64>
              }
              %16 = memref.load %arg9[%10, %11] : memref<?x24xf64>
              scf.for %arg17 = %c0 to %c2 step %c1 {
                %17 = arith.addi %arg17, %c20 : index
                %18 = memref.load %arg8[%10, %17] : memref<?x22xf64>
                %19 = memref.load %arg10[%11, %17] : memref<?x22xf64>
                %20 = arith.mulf %16, %19 : f64
                %21 = arith.addf %18, %20 : f64
                memref.store %21, %arg8[%10, %17] : memref<?x22xf64>
              }
            }
          }
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
        scf.for %arg14 = %c0 to %c1 step %c1 {
          %10 = arith.addi %arg12, %arg14 : index
          scf.for %arg15 = %c0 to %c4 step %c1 {
            %11 = arith.muli %arg15, %c4 : index
            memref.store %cst, %arg5[%10, %11] : memref<?x18xf64>
            %12 = arith.addi %11, %c1 : index
            memref.store %cst, %arg5[%10, %12] : memref<?x18xf64>
            %13 = arith.addi %11, %c2 : index
            memref.store %cst, %arg5[%10, %13] : memref<?x18xf64>
            %14 = arith.addi %11, %c3 : index
            memref.store %cst, %arg5[%10, %14] : memref<?x18xf64>
          }
          scf.for %arg15 = %c0 to %c2 step %c1 {
            %11 = arith.addi %arg15, %c16 : index
            memref.store %cst, %arg5[%10, %11] : memref<?x18xf64>
          }
        }
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
            scf.for %arg15 = %c0 to %c16 step %c1 {
              scf.for %arg16 = %c0 to %c18 step %c1 {
                scf.for %arg17 = %c0 to %c5 step %c1 {
                  %26 = arith.muli %arg17, %c4 : index
                  %27 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %28 = memref.load %arg6[%arg15, %26] : memref<?x20xf64>
                  %29 = memref.load %arg7[%26, %arg16] : memref<?x18xf64>
                  %30 = arith.mulf %28, %29 : f64
                  %31 = arith.addf %27, %30 : f64
                  memref.store %31, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %32 = arith.addi %26, %c1 : index
                  %33 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %34 = memref.load %arg6[%arg15, %32] : memref<?x20xf64>
                  %35 = memref.load %arg7[%32, %arg16] : memref<?x18xf64>
                  %36 = arith.mulf %34, %35 : f64
                  %37 = arith.addf %33, %36 : f64
                  memref.store %37, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %38 = arith.addi %26, %c2 : index
                  %39 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %40 = memref.load %arg6[%arg15, %38] : memref<?x20xf64>
                  %41 = memref.load %arg7[%38, %arg16] : memref<?x18xf64>
                  %42 = arith.mulf %40, %41 : f64
                  %43 = arith.addf %39, %42 : f64
                  memref.store %43, %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %44 = arith.addi %26, %c3 : index
                  %45 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                  %46 = memref.load %arg6[%arg15, %44] : memref<?x20xf64>
                  %47 = memref.load %arg7[%44, %arg16] : memref<?x18xf64>
                  %48 = arith.mulf %46, %47 : f64
                  %49 = arith.addf %45, %48 : f64
                  memref.store %49, %arg5[%arg15, %arg16] : memref<?x18xf64>
                }
                %17 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %18 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %19 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %20 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                scf.for %arg17 = %c0 to %c3 step %c1 {
                  %26 = arith.muli %arg17, %c4 : index
                  %27 = arith.addi %26, %c19 : index
                  %28 = arith.addi %27, %c-19 : index
                  %29 = memref.load %arg11[%arg15, %28] : memref<?x22xf64>
                  %30 = arith.addi %27, %c-19 : index
                  %31 = memref.load %arg8[%arg16, %30] : memref<?x22xf64>
                  %32 = arith.mulf %17, %31 : f64
                  %33 = arith.addf %29, %32 : f64
                  %34 = arith.addi %27, %c-19 : index
                  memref.store %33, %arg11[%arg15, %34] : memref<?x22xf64>
                  %35 = arith.addi %27, %c1 : index
                  %36 = arith.addi %35, %c-19 : index
                  %37 = memref.load %arg11[%arg15, %36] : memref<?x22xf64>
                  %38 = arith.addi %35, %c-19 : index
                  %39 = memref.load %arg8[%arg16, %38] : memref<?x22xf64>
                  %40 = arith.mulf %18, %39 : f64
                  %41 = arith.addf %37, %40 : f64
                  %42 = arith.addi %35, %c-19 : index
                  memref.store %41, %arg11[%arg15, %42] : memref<?x22xf64>
                  %43 = arith.addi %27, %c2 : index
                  %44 = arith.addi %43, %c-19 : index
                  %45 = memref.load %arg11[%arg15, %44] : memref<?x22xf64>
                  %46 = arith.addi %43, %c-19 : index
                  %47 = memref.load %arg8[%arg16, %46] : memref<?x22xf64>
                  %48 = arith.mulf %19, %47 : f64
                  %49 = arith.addf %45, %48 : f64
                  %50 = arith.addi %43, %c-19 : index
                  memref.store %49, %arg11[%arg15, %50] : memref<?x22xf64>
                  %51 = arith.addi %27, %c3 : index
                  %52 = arith.addi %51, %c-19 : index
                  %53 = memref.load %arg11[%arg15, %52] : memref<?x22xf64>
                  %54 = arith.addi %51, %c-19 : index
                  %55 = memref.load %arg8[%arg16, %54] : memref<?x22xf64>
                  %56 = arith.mulf %20, %55 : f64
                  %57 = arith.addf %53, %56 : f64
                  %58 = arith.addi %51, %c-19 : index
                  memref.store %57, %arg11[%arg15, %58] : memref<?x22xf64>
                }
                %21 = memref.load %arg11[%arg15, %c12] : memref<?x22xf64>
                %22 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %23 = memref.load %arg8[%arg16, %c12] : memref<?x22xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %21, %24 : f64
                memref.store %25, %arg11[%arg15, %c12] : memref<?x22xf64>
              }
            }
          }
          %14 = arith.addi %arg12, %arg13 : index
          %15 = arith.addi %14, %c-1 : index
          %16 = arith.cmpi eq, %15, %c0 : index
          scf.if %16 {
            scf.for %arg15 = %c0 to %c16 step %c1 {
              scf.for %arg16 = %c0 to %c18 step %c1 {
                %17 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %18 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %19 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %20 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                scf.for %arg17 = %c0 to %c2 step %c1 {
                  %26 = arith.muli %arg17, %c4 : index
                  %27 = arith.addi %26, %c32 : index
                  %28 = arith.addi %27, %c-19 : index
                  %29 = memref.load %arg11[%arg15, %28] : memref<?x22xf64>
                  %30 = arith.addi %27, %c-19 : index
                  %31 = memref.load %arg8[%arg16, %30] : memref<?x22xf64>
                  %32 = arith.mulf %17, %31 : f64
                  %33 = arith.addf %29, %32 : f64
                  %34 = arith.addi %27, %c-19 : index
                  memref.store %33, %arg11[%arg15, %34] : memref<?x22xf64>
                  %35 = arith.addi %27, %c1 : index
                  %36 = arith.addi %35, %c-19 : index
                  %37 = memref.load %arg11[%arg15, %36] : memref<?x22xf64>
                  %38 = arith.addi %35, %c-19 : index
                  %39 = memref.load %arg8[%arg16, %38] : memref<?x22xf64>
                  %40 = arith.mulf %18, %39 : f64
                  %41 = arith.addf %37, %40 : f64
                  %42 = arith.addi %35, %c-19 : index
                  memref.store %41, %arg11[%arg15, %42] : memref<?x22xf64>
                  %43 = arith.addi %27, %c2 : index
                  %44 = arith.addi %43, %c-19 : index
                  %45 = memref.load %arg11[%arg15, %44] : memref<?x22xf64>
                  %46 = arith.addi %43, %c-19 : index
                  %47 = memref.load %arg8[%arg16, %46] : memref<?x22xf64>
                  %48 = arith.mulf %19, %47 : f64
                  %49 = arith.addf %45, %48 : f64
                  %50 = arith.addi %43, %c-19 : index
                  memref.store %49, %arg11[%arg15, %50] : memref<?x22xf64>
                  %51 = arith.addi %27, %c3 : index
                  %52 = arith.addi %51, %c-19 : index
                  %53 = memref.load %arg11[%arg15, %52] : memref<?x22xf64>
                  %54 = arith.addi %51, %c-19 : index
                  %55 = memref.load %arg8[%arg16, %54] : memref<?x22xf64>
                  %56 = arith.mulf %20, %55 : f64
                  %57 = arith.addf %53, %56 : f64
                  %58 = arith.addi %51, %c-19 : index
                  memref.store %57, %arg11[%arg15, %58] : memref<?x22xf64>
                }
                %21 = memref.load %arg11[%arg15, %c21] : memref<?x22xf64>
                %22 = memref.load %arg5[%arg15, %arg16] : memref<?x18xf64>
                %23 = memref.load %arg8[%arg16, %c21] : memref<?x22xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %21, %24 : f64
                memref.store %25, %arg11[%arg15, %c21] : memref<?x22xf64>
              }
            }
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

