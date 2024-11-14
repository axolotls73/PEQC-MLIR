module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %c-21 = arith.constant -21 : index
    %c5 = arith.constant 5 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c21 = arith.constant 21 : index
    %c20 = arith.constant 20 : index
    %c19 = arith.constant 19 : index
    %c32 = arith.constant 32 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg11, %c32 : index
        scf.for %arg13 = %c0 to %c16 step %c1 {
          %7 = arith.addi %6, %arg13 : index
          scf.for %arg14 = %c0 to %c4 step %c1 {
            %16 = arith.muli %arg14, %c4 : index
            %17 = memref.load %arg10[%7, %16] : memref<?x24xf64>
            %18 = arith.mulf %17, %arg5 : f64
            memref.store %18, %arg10[%7, %16] : memref<?x24xf64>
            memref.store %cst, %arg6[%7, %16] : memref<?x18xf64>
            %19 = arith.addi %16, %c1 : index
            %20 = memref.load %arg10[%7, %19] : memref<?x24xf64>
            %21 = arith.mulf %20, %arg5 : f64
            memref.store %21, %arg10[%7, %19] : memref<?x24xf64>
            memref.store %cst, %arg6[%7, %19] : memref<?x18xf64>
            %22 = arith.addi %16, %c2 : index
            %23 = memref.load %arg10[%7, %22] : memref<?x24xf64>
            %24 = arith.mulf %23, %arg5 : f64
            memref.store %24, %arg10[%7, %22] : memref<?x24xf64>
            memref.store %cst, %arg6[%7, %22] : memref<?x18xf64>
            %25 = arith.addi %16, %c3 : index
            %26 = memref.load %arg10[%7, %25] : memref<?x24xf64>
            %27 = arith.mulf %26, %arg5 : f64
            memref.store %27, %arg10[%7, %25] : memref<?x24xf64>
            memref.store %cst, %arg6[%7, %25] : memref<?x18xf64>
          }
          scf.for %arg14 = %c0 to %c2 step %c1 {
            %16 = arith.addi %arg14, %c16 : index
            %17 = memref.load %arg10[%7, %16] : memref<?x24xf64>
            %18 = arith.mulf %17, %arg5 : f64
            memref.store %18, %arg10[%7, %16] : memref<?x24xf64>
            memref.store %cst, %arg6[%7, %16] : memref<?x18xf64>
          }
          %8 = memref.load %arg10[%7, %c18] : memref<?x24xf64>
          %9 = arith.mulf %8, %arg5 : f64
          memref.store %9, %arg10[%7, %c18] : memref<?x24xf64>
          %10 = memref.load %arg10[%7, %c19] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%7, %c19] : memref<?x24xf64>
          %12 = memref.load %arg10[%7, %c20] : memref<?x24xf64>
          %13 = arith.mulf %12, %arg5 : f64
          memref.store %13, %arg10[%7, %c20] : memref<?x24xf64>
          %14 = memref.load %arg10[%7, %c21] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          memref.store %15, %arg10[%7, %c21] : memref<?x24xf64>
          scf.for %arg14 = %c0 to %c2 step %c1 {
            %16 = arith.addi %arg14, %c22 : index
            %17 = memref.load %arg10[%7, %16] : memref<?x24xf64>
            %18 = arith.mulf %17, %arg5 : f64
            memref.store %18, %arg10[%7, %16] : memref<?x24xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg12, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c2 step %c1 {
          %6 = arith.muli %arg11, %c32 : index
          %7 = arith.addi %arg13, %6 : index
          %8 = arith.cmpi eq, %7, %c0 : index
          scf.if %8 {
            scf.for %arg14 = %c0 to %c16 step %c1 {
              scf.for %arg15 = %c0 to %c18 step %c1 {
                scf.for %arg16 = %c0 to %c5 step %c1 {
                  %18 = arith.muli %arg16, %c4 : index
                  %19 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %20 = memref.load %arg7[%arg14, %18] : memref<?x22xf64>
                  %21 = arith.mulf %arg4, %20 : f64
                  %22 = memref.load %arg8[%18, %arg15] : memref<?x18xf64>
                  %23 = arith.mulf %21, %22 : f64
                  %24 = arith.addf %19, %23 : f64
                  memref.store %24, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %25 = arith.addi %18, %c1 : index
                  %26 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %27 = memref.load %arg7[%arg14, %25] : memref<?x22xf64>
                  %28 = arith.mulf %arg4, %27 : f64
                  %29 = memref.load %arg8[%25, %arg15] : memref<?x18xf64>
                  %30 = arith.mulf %28, %29 : f64
                  %31 = arith.addf %26, %30 : f64
                  memref.store %31, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %32 = arith.addi %18, %c2 : index
                  %33 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %34 = memref.load %arg7[%arg14, %32] : memref<?x22xf64>
                  %35 = arith.mulf %arg4, %34 : f64
                  %36 = memref.load %arg8[%32, %arg15] : memref<?x18xf64>
                  %37 = arith.mulf %35, %36 : f64
                  %38 = arith.addf %33, %37 : f64
                  memref.store %38, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %39 = arith.addi %18, %c3 : index
                  %40 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %41 = memref.load %arg7[%arg14, %39] : memref<?x22xf64>
                  %42 = arith.mulf %arg4, %41 : f64
                  %43 = memref.load %arg8[%39, %arg15] : memref<?x18xf64>
                  %44 = arith.mulf %42, %43 : f64
                  %45 = arith.addf %40, %44 : f64
                  memref.store %45, %arg6[%arg14, %arg15] : memref<?x18xf64>
                }
                scf.for %arg16 = %c0 to %c2 step %c1 {
                  %18 = arith.addi %arg16, %c20 : index
                  %19 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %20 = memref.load %arg7[%arg14, %18] : memref<?x22xf64>
                  %21 = arith.mulf %arg4, %20 : f64
                  %22 = memref.load %arg8[%18, %arg15] : memref<?x18xf64>
                  %23 = arith.mulf %21, %22 : f64
                  %24 = arith.addf %19, %23 : f64
                  memref.store %24, %arg6[%arg14, %arg15] : memref<?x18xf64>
                }
                %13 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %14 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %15 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %16 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c2 step %c1 {
                  %18 = arith.muli %arg16, %c4 : index
                  %19 = arith.addi %18, %c21 : index
                  %20 = arith.addi %19, %c-21 : index
                  %21 = memref.load %arg10[%arg14, %20] : memref<?x24xf64>
                  %22 = arith.addi %19, %c-21 : index
                  %23 = memref.load %arg9[%arg15, %22] : memref<?x24xf64>
                  %24 = arith.mulf %13, %23 : f64
                  %25 = arith.addf %21, %24 : f64
                  %26 = arith.addi %19, %c-21 : index
                  memref.store %25, %arg10[%arg14, %26] : memref<?x24xf64>
                  %27 = arith.addi %19, %c1 : index
                  %28 = arith.addi %27, %c-21 : index
                  %29 = memref.load %arg10[%arg14, %28] : memref<?x24xf64>
                  %30 = arith.addi %27, %c-21 : index
                  %31 = memref.load %arg9[%arg15, %30] : memref<?x24xf64>
                  %32 = arith.mulf %14, %31 : f64
                  %33 = arith.addf %29, %32 : f64
                  %34 = arith.addi %27, %c-21 : index
                  memref.store %33, %arg10[%arg14, %34] : memref<?x24xf64>
                  %35 = arith.addi %19, %c2 : index
                  %36 = arith.addi %35, %c-21 : index
                  %37 = memref.load %arg10[%arg14, %36] : memref<?x24xf64>
                  %38 = arith.addi %35, %c-21 : index
                  %39 = memref.load %arg9[%arg15, %38] : memref<?x24xf64>
                  %40 = arith.mulf %15, %39 : f64
                  %41 = arith.addf %37, %40 : f64
                  %42 = arith.addi %35, %c-21 : index
                  memref.store %41, %arg10[%arg14, %42] : memref<?x24xf64>
                  %43 = arith.addi %19, %c3 : index
                  %44 = arith.addi %43, %c-21 : index
                  %45 = memref.load %arg10[%arg14, %44] : memref<?x24xf64>
                  %46 = arith.addi %43, %c-21 : index
                  %47 = memref.load %arg9[%arg15, %46] : memref<?x24xf64>
                  %48 = arith.mulf %16, %47 : f64
                  %49 = arith.addf %45, %48 : f64
                  %50 = arith.addi %43, %c-21 : index
                  memref.store %49, %arg10[%arg14, %50] : memref<?x24xf64>
                }
                %17 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c3 step %c1 {
                  %18 = arith.addi %arg16, %c29 : index
                  %19 = arith.addi %18, %c-21 : index
                  %20 = memref.load %arg10[%arg14, %19] : memref<?x24xf64>
                  %21 = arith.addi %18, %c-21 : index
                  %22 = memref.load %arg9[%arg15, %21] : memref<?x24xf64>
                  %23 = arith.mulf %17, %22 : f64
                  %24 = arith.addf %20, %23 : f64
                  %25 = arith.addi %18, %c-21 : index
                  memref.store %24, %arg10[%arg14, %25] : memref<?x24xf64>
                }
              }
            }
          }
          %9 = arith.muli %arg11, %c32 : index
          %10 = arith.addi %arg13, %9 : index
          %11 = arith.addi %10, %c-1 : index
          %12 = arith.cmpi eq, %11, %c0 : index
          scf.if %12 {
            scf.for %arg14 = %c0 to %c16 step %c1 {
              scf.for %arg15 = %c0 to %c18 step %c1 {
                %13 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %14 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %15 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %16 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c3 step %c1 {
                  %22 = arith.muli %arg16, %c4 : index
                  %23 = arith.addi %22, %c32 : index
                  %24 = arith.addi %23, %c-21 : index
                  %25 = memref.load %arg10[%arg14, %24] : memref<?x24xf64>
                  %26 = arith.addi %23, %c-21 : index
                  %27 = memref.load %arg9[%arg15, %26] : memref<?x24xf64>
                  %28 = arith.mulf %13, %27 : f64
                  %29 = arith.addf %25, %28 : f64
                  %30 = arith.addi %23, %c-21 : index
                  memref.store %29, %arg10[%arg14, %30] : memref<?x24xf64>
                  %31 = arith.addi %23, %c1 : index
                  %32 = arith.addi %31, %c-21 : index
                  %33 = memref.load %arg10[%arg14, %32] : memref<?x24xf64>
                  %34 = arith.addi %31, %c-21 : index
                  %35 = memref.load %arg9[%arg15, %34] : memref<?x24xf64>
                  %36 = arith.mulf %14, %35 : f64
                  %37 = arith.addf %33, %36 : f64
                  %38 = arith.addi %31, %c-21 : index
                  memref.store %37, %arg10[%arg14, %38] : memref<?x24xf64>
                  %39 = arith.addi %23, %c2 : index
                  %40 = arith.addi %39, %c-21 : index
                  %41 = memref.load %arg10[%arg14, %40] : memref<?x24xf64>
                  %42 = arith.addi %39, %c-21 : index
                  %43 = memref.load %arg9[%arg15, %42] : memref<?x24xf64>
                  %44 = arith.mulf %15, %43 : f64
                  %45 = arith.addf %41, %44 : f64
                  %46 = arith.addi %39, %c-21 : index
                  memref.store %45, %arg10[%arg14, %46] : memref<?x24xf64>
                  %47 = arith.addi %23, %c3 : index
                  %48 = arith.addi %47, %c-21 : index
                  %49 = memref.load %arg10[%arg14, %48] : memref<?x24xf64>
                  %50 = arith.addi %47, %c-21 : index
                  %51 = memref.load %arg9[%arg15, %50] : memref<?x24xf64>
                  %52 = arith.mulf %16, %51 : f64
                  %53 = arith.addf %49, %52 : f64
                  %54 = arith.addi %47, %c-21 : index
                  memref.store %53, %arg10[%arg14, %54] : memref<?x24xf64>
                }
                %17 = memref.load %arg10[%arg14, %c23] : memref<?x24xf64>
                %18 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %19 = memref.load %arg9[%arg15, %c23] : memref<?x24xf64>
                %20 = arith.mulf %18, %19 : f64
                %21 = arith.addf %17, %20 : f64
                memref.store %21, %arg10[%arg14, %c23] : memref<?x24xf64>
              }
            }
          }
        }
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

