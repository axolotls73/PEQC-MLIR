module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %c-21 = arith.constant -21 : index
    %c5 = arith.constant 5 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c21 = arith.constant 21 : index
    %c20 = arith.constant 20 : index
    %c19 = arith.constant 19 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg11 = %c0 to %c16 step %c1 iter_args(%arg12 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg13 = %c0 to %c1 step %c1 {
          %4 = arith.addi %arg11, %arg13 : index
          scf.for %arg14 = %c0 to %c4 step %c1 {
            %13 = arith.muli %arg14, %c4 : index
            %14 = memref.load %arg10[%4, %13] : memref<?x24xf64>
            %15 = arith.mulf %14, %arg5 : f64
            memref.store %15, %arg10[%4, %13] : memref<?x24xf64>
            memref.store %cst, %arg6[%4, %13] : memref<?x18xf64>
            %16 = arith.addi %13, %c1 : index
            %17 = memref.load %arg10[%4, %16] : memref<?x24xf64>
            %18 = arith.mulf %17, %arg5 : f64
            memref.store %18, %arg10[%4, %16] : memref<?x24xf64>
            memref.store %cst, %arg6[%4, %16] : memref<?x18xf64>
            %19 = arith.addi %13, %c2 : index
            %20 = memref.load %arg10[%4, %19] : memref<?x24xf64>
            %21 = arith.mulf %20, %arg5 : f64
            memref.store %21, %arg10[%4, %19] : memref<?x24xf64>
            memref.store %cst, %arg6[%4, %19] : memref<?x18xf64>
            %22 = arith.addi %13, %c3 : index
            %23 = memref.load %arg10[%4, %22] : memref<?x24xf64>
            %24 = arith.mulf %23, %arg5 : f64
            memref.store %24, %arg10[%4, %22] : memref<?x24xf64>
            memref.store %cst, %arg6[%4, %22] : memref<?x18xf64>
          }
          scf.for %arg14 = %c0 to %c2 step %c1 {
            %13 = arith.addi %arg14, %c16 : index
            %14 = memref.load %arg10[%4, %13] : memref<?x24xf64>
            %15 = arith.mulf %14, %arg5 : f64
            memref.store %15, %arg10[%4, %13] : memref<?x24xf64>
            memref.store %cst, %arg6[%4, %13] : memref<?x18xf64>
          }
          %5 = memref.load %arg10[%4, %c18] : memref<?x24xf64>
          %6 = arith.mulf %5, %arg5 : f64
          memref.store %6, %arg10[%4, %c18] : memref<?x24xf64>
          %7 = memref.load %arg10[%4, %c19] : memref<?x24xf64>
          %8 = arith.mulf %7, %arg5 : f64
          memref.store %8, %arg10[%4, %c19] : memref<?x24xf64>
          %9 = memref.load %arg10[%4, %c20] : memref<?x24xf64>
          %10 = arith.mulf %9, %arg5 : f64
          memref.store %10, %arg10[%4, %c20] : memref<?x24xf64>
          %11 = memref.load %arg10[%4, %c21] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%4, %c21] : memref<?x24xf64>
          scf.for %arg14 = %c0 to %c2 step %c1 {
            %13 = arith.addi %arg14, %c22 : index
            %14 = memref.load %arg10[%4, %13] : memref<?x24xf64>
            %15 = arith.mulf %14, %arg5 : f64
            memref.store %15, %arg10[%4, %13] : memref<?x24xf64>
          }
        }
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
            scf.for %arg14 = %c0 to %c16 step %c1 {
              scf.for %arg15 = %c0 to %c18 step %c1 {
                scf.for %arg16 = %c0 to %c5 step %c1 {
                  %16 = arith.muli %arg16, %c4 : index
                  %17 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %18 = memref.load %arg7[%arg14, %16] : memref<?x22xf64>
                  %19 = arith.mulf %arg4, %18 : f64
                  %20 = memref.load %arg8[%16, %arg15] : memref<?x18xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.addf %17, %21 : f64
                  memref.store %22, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %23 = arith.addi %16, %c1 : index
                  %24 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %25 = memref.load %arg7[%arg14, %23] : memref<?x22xf64>
                  %26 = arith.mulf %arg4, %25 : f64
                  %27 = memref.load %arg8[%23, %arg15] : memref<?x18xf64>
                  %28 = arith.mulf %26, %27 : f64
                  %29 = arith.addf %24, %28 : f64
                  memref.store %29, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %30 = arith.addi %16, %c2 : index
                  %31 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %32 = memref.load %arg7[%arg14, %30] : memref<?x22xf64>
                  %33 = arith.mulf %arg4, %32 : f64
                  %34 = memref.load %arg8[%30, %arg15] : memref<?x18xf64>
                  %35 = arith.mulf %33, %34 : f64
                  %36 = arith.addf %31, %35 : f64
                  memref.store %36, %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %37 = arith.addi %16, %c3 : index
                  %38 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %39 = memref.load %arg7[%arg14, %37] : memref<?x22xf64>
                  %40 = arith.mulf %arg4, %39 : f64
                  %41 = memref.load %arg8[%37, %arg15] : memref<?x18xf64>
                  %42 = arith.mulf %40, %41 : f64
                  %43 = arith.addf %38, %42 : f64
                  memref.store %43, %arg6[%arg14, %arg15] : memref<?x18xf64>
                }
                scf.for %arg16 = %c0 to %c2 step %c1 {
                  %16 = arith.addi %arg16, %c20 : index
                  %17 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                  %18 = memref.load %arg7[%arg14, %16] : memref<?x22xf64>
                  %19 = arith.mulf %arg4, %18 : f64
                  %20 = memref.load %arg8[%16, %arg15] : memref<?x18xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.addf %17, %21 : f64
                  memref.store %22, %arg6[%arg14, %arg15] : memref<?x18xf64>
                }
                %11 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %12 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %13 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %14 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c2 step %c1 {
                  %16 = arith.muli %arg16, %c4 : index
                  %17 = arith.addi %16, %c21 : index
                  %18 = arith.addi %17, %c-21 : index
                  %19 = memref.load %arg10[%arg14, %18] : memref<?x24xf64>
                  %20 = arith.addi %17, %c-21 : index
                  %21 = memref.load %arg9[%arg15, %20] : memref<?x24xf64>
                  %22 = arith.mulf %11, %21 : f64
                  %23 = arith.addf %19, %22 : f64
                  %24 = arith.addi %17, %c-21 : index
                  memref.store %23, %arg10[%arg14, %24] : memref<?x24xf64>
                  %25 = arith.addi %17, %c1 : index
                  %26 = arith.addi %25, %c-21 : index
                  %27 = memref.load %arg10[%arg14, %26] : memref<?x24xf64>
                  %28 = arith.addi %25, %c-21 : index
                  %29 = memref.load %arg9[%arg15, %28] : memref<?x24xf64>
                  %30 = arith.mulf %12, %29 : f64
                  %31 = arith.addf %27, %30 : f64
                  %32 = arith.addi %25, %c-21 : index
                  memref.store %31, %arg10[%arg14, %32] : memref<?x24xf64>
                  %33 = arith.addi %17, %c2 : index
                  %34 = arith.addi %33, %c-21 : index
                  %35 = memref.load %arg10[%arg14, %34] : memref<?x24xf64>
                  %36 = arith.addi %33, %c-21 : index
                  %37 = memref.load %arg9[%arg15, %36] : memref<?x24xf64>
                  %38 = arith.mulf %13, %37 : f64
                  %39 = arith.addf %35, %38 : f64
                  %40 = arith.addi %33, %c-21 : index
                  memref.store %39, %arg10[%arg14, %40] : memref<?x24xf64>
                  %41 = arith.addi %17, %c3 : index
                  %42 = arith.addi %41, %c-21 : index
                  %43 = memref.load %arg10[%arg14, %42] : memref<?x24xf64>
                  %44 = arith.addi %41, %c-21 : index
                  %45 = memref.load %arg9[%arg15, %44] : memref<?x24xf64>
                  %46 = arith.mulf %14, %45 : f64
                  %47 = arith.addf %43, %46 : f64
                  %48 = arith.addi %41, %c-21 : index
                  memref.store %47, %arg10[%arg14, %48] : memref<?x24xf64>
                }
                %15 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c3 step %c1 {
                  %16 = arith.addi %arg16, %c29 : index
                  %17 = arith.addi %16, %c-21 : index
                  %18 = memref.load %arg10[%arg14, %17] : memref<?x24xf64>
                  %19 = arith.addi %16, %c-21 : index
                  %20 = memref.load %arg9[%arg15, %19] : memref<?x24xf64>
                  %21 = arith.mulf %15, %20 : f64
                  %22 = arith.addf %18, %21 : f64
                  %23 = arith.addi %16, %c-21 : index
                  memref.store %22, %arg10[%arg14, %23] : memref<?x24xf64>
                }
              }
            }
          }
          %8 = arith.addi %arg11, %arg12 : index
          %9 = arith.addi %8, %c-1 : index
          %10 = arith.cmpi eq, %9, %c0 : index
          scf.if %10 {
            scf.for %arg14 = %c0 to %c16 step %c1 {
              scf.for %arg15 = %c0 to %c18 step %c1 {
                %11 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %12 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %13 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %14 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                scf.for %arg16 = %c0 to %c3 step %c1 {
                  %20 = arith.muli %arg16, %c4 : index
                  %21 = arith.addi %20, %c32 : index
                  %22 = arith.addi %21, %c-21 : index
                  %23 = memref.load %arg10[%arg14, %22] : memref<?x24xf64>
                  %24 = arith.addi %21, %c-21 : index
                  %25 = memref.load %arg9[%arg15, %24] : memref<?x24xf64>
                  %26 = arith.mulf %11, %25 : f64
                  %27 = arith.addf %23, %26 : f64
                  %28 = arith.addi %21, %c-21 : index
                  memref.store %27, %arg10[%arg14, %28] : memref<?x24xf64>
                  %29 = arith.addi %21, %c1 : index
                  %30 = arith.addi %29, %c-21 : index
                  %31 = memref.load %arg10[%arg14, %30] : memref<?x24xf64>
                  %32 = arith.addi %29, %c-21 : index
                  %33 = memref.load %arg9[%arg15, %32] : memref<?x24xf64>
                  %34 = arith.mulf %12, %33 : f64
                  %35 = arith.addf %31, %34 : f64
                  %36 = arith.addi %29, %c-21 : index
                  memref.store %35, %arg10[%arg14, %36] : memref<?x24xf64>
                  %37 = arith.addi %21, %c2 : index
                  %38 = arith.addi %37, %c-21 : index
                  %39 = memref.load %arg10[%arg14, %38] : memref<?x24xf64>
                  %40 = arith.addi %37, %c-21 : index
                  %41 = memref.load %arg9[%arg15, %40] : memref<?x24xf64>
                  %42 = arith.mulf %13, %41 : f64
                  %43 = arith.addf %39, %42 : f64
                  %44 = arith.addi %37, %c-21 : index
                  memref.store %43, %arg10[%arg14, %44] : memref<?x24xf64>
                  %45 = arith.addi %21, %c3 : index
                  %46 = arith.addi %45, %c-21 : index
                  %47 = memref.load %arg10[%arg14, %46] : memref<?x24xf64>
                  %48 = arith.addi %45, %c-21 : index
                  %49 = memref.load %arg9[%arg15, %48] : memref<?x24xf64>
                  %50 = arith.mulf %14, %49 : f64
                  %51 = arith.addf %47, %50 : f64
                  %52 = arith.addi %45, %c-21 : index
                  memref.store %51, %arg10[%arg14, %52] : memref<?x24xf64>
                }
                %15 = memref.load %arg10[%arg14, %c23] : memref<?x24xf64>
                %16 = memref.load %arg6[%arg14, %arg15] : memref<?x18xf64>
                %17 = memref.load %arg9[%arg15, %c23] : memref<?x24xf64>
                %18 = arith.mulf %16, %17 : f64
                %19 = arith.addf %15, %18 : f64
                memref.store %19, %arg10[%arg14, %c23] : memref<?x24xf64>
              }
            }
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

