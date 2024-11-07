module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %4 = arith.addi %arg7, %arg8 : index
          %5 = async.create_group %c7 : !async.group
          %6 = scf.for %arg10 = %c0 to %c7 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_1 = async.execute {
              %17 = arith.muli %arg10, %c4 : index
              %18 = memref.load %arg6[%4] : memref<?xf64>
              memref.store %18, %arg4[%c0, %17] : memref<?x30xf64>
              %19 = arith.addi %17, %c1 : index
              %20 = memref.load %arg6[%4] : memref<?xf64>
              memref.store %20, %arg4[%c0, %19] : memref<?x30xf64>
              %21 = arith.addi %17, %c2 : index
              %22 = memref.load %arg6[%4] : memref<?xf64>
              memref.store %22, %arg4[%c0, %21] : memref<?x30xf64>
              %23 = arith.addi %17, %c3 : index
              %24 = memref.load %arg6[%4] : memref<?xf64>
              memref.store %24, %arg4[%c0, %23] : memref<?x30xf64>
              async.yield
            }
            %15 = async.add_to_group %token_1, %5 : !async.token
            %16 = arith.addi %arg11, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %5
          %7 = async.create_group %c2 : !async.group
          %8 = scf.for %arg10 = %c0 to %c2 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_1 = async.execute {
              %17 = arith.addi %arg10, %c28 : index
              %18 = memref.load %arg6[%4] : memref<?xf64>
              memref.store %18, %arg4[%c0, %17] : memref<?x30xf64>
              async.yield
            }
            %15 = async.add_to_group %token_1, %7 : !async.token
            %16 = arith.addi %arg11, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %7
          %9 = async.create_group %c19 : !async.group
          %10 = scf.for %arg10 = %c0 to %c19 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_1 = async.execute {
              %17 = arith.addi %arg10, %c1 : index
              %18 = async.create_group %c7 : !async.group
              %19 = scf.for %arg12 = %c0 to %c7 step %c1 iter_args(%arg13 = %c0) -> (index) {
                %token_2 = async.execute {
                  %24 = arith.muli %arg12, %c4 : index
                  %25 = memref.load %arg4[%17, %24] : memref<?x30xf64>
                  %26 = memref.load %arg5[%17, %24] : memref<?x30xf64>
                  %27 = arith.addi %17, %c-1 : index
                  %28 = memref.load %arg5[%27, %24] : memref<?x30xf64>
                  %29 = arith.subf %26, %28 : f64
                  %30 = arith.mulf %29, %cst_0 : f64
                  %31 = arith.subf %25, %30 : f64
                  memref.store %31, %arg4[%17, %24] : memref<?x30xf64>
                  %32 = arith.addi %24, %c1 : index
                  %33 = memref.load %arg4[%17, %32] : memref<?x30xf64>
                  %34 = memref.load %arg5[%17, %32] : memref<?x30xf64>
                  %35 = arith.addi %17, %c-1 : index
                  %36 = memref.load %arg5[%35, %32] : memref<?x30xf64>
                  %37 = arith.subf %34, %36 : f64
                  %38 = arith.mulf %37, %cst_0 : f64
                  %39 = arith.subf %33, %38 : f64
                  memref.store %39, %arg4[%17, %32] : memref<?x30xf64>
                  %40 = arith.addi %24, %c2 : index
                  %41 = memref.load %arg4[%17, %40] : memref<?x30xf64>
                  %42 = memref.load %arg5[%17, %40] : memref<?x30xf64>
                  %43 = arith.addi %17, %c-1 : index
                  %44 = memref.load %arg5[%43, %40] : memref<?x30xf64>
                  %45 = arith.subf %42, %44 : f64
                  %46 = arith.mulf %45, %cst_0 : f64
                  %47 = arith.subf %41, %46 : f64
                  memref.store %47, %arg4[%17, %40] : memref<?x30xf64>
                  %48 = arith.addi %24, %c3 : index
                  %49 = memref.load %arg4[%17, %48] : memref<?x30xf64>
                  %50 = memref.load %arg5[%17, %48] : memref<?x30xf64>
                  %51 = arith.addi %17, %c-1 : index
                  %52 = memref.load %arg5[%51, %48] : memref<?x30xf64>
                  %53 = arith.subf %50, %52 : f64
                  %54 = arith.mulf %53, %cst_0 : f64
                  %55 = arith.subf %49, %54 : f64
                  memref.store %55, %arg4[%17, %48] : memref<?x30xf64>
                  async.yield
                }
                %22 = async.add_to_group %token_2, %18 : !async.token
                %23 = arith.addi %arg13, %c1 : index
                scf.yield %23 : index
              }
              async.await_all %18
              %20 = async.create_group %c2 : !async.group
              %21 = scf.for %arg12 = %c0 to %c2 step %c1 iter_args(%arg13 = %c0) -> (index) {
                %token_2 = async.execute {
                  %24 = arith.addi %arg12, %c28 : index
                  %25 = memref.load %arg4[%17, %24] : memref<?x30xf64>
                  %26 = memref.load %arg5[%17, %24] : memref<?x30xf64>
                  %27 = arith.addi %17, %c-1 : index
                  %28 = memref.load %arg5[%27, %24] : memref<?x30xf64>
                  %29 = arith.subf %26, %28 : f64
                  %30 = arith.mulf %29, %cst_0 : f64
                  %31 = arith.subf %25, %30 : f64
                  memref.store %31, %arg4[%17, %24] : memref<?x30xf64>
                  async.yield
                }
                %22 = async.add_to_group %token_2, %20 : !async.token
                %23 = arith.addi %arg13, %c1 : index
                scf.yield %23 : index
              }
              async.await_all %20
              async.yield
            }
            %15 = async.add_to_group %token_1, %9 : !async.token
            %16 = arith.addi %arg11, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %9
          %11 = async.create_group %c20 : !async.group
          %12 = scf.for %arg10 = %c0 to %c20 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_1 = async.execute {
              %17 = async.create_group %c7 : !async.group
              %18 = scf.for %arg12 = %c0 to %c7 step %c1 iter_args(%arg13 = %c0) -> (index) {
                %token_2 = async.execute {
                  %27 = arith.muli %arg12, %c4 : index
                  %28 = arith.addi %27, %c1 : index
                  %29 = memref.load %arg3[%arg10, %28] : memref<?x30xf64>
                  %30 = memref.load %arg5[%arg10, %28] : memref<?x30xf64>
                  %31 = arith.addi %28, %c-1 : index
                  %32 = memref.load %arg5[%arg10, %31] : memref<?x30xf64>
                  %33 = arith.subf %30, %32 : f64
                  %34 = arith.mulf %33, %cst_0 : f64
                  %35 = arith.subf %29, %34 : f64
                  memref.store %35, %arg3[%arg10, %28] : memref<?x30xf64>
                  %36 = arith.addi %28, %c1 : index
                  %37 = memref.load %arg3[%arg10, %36] : memref<?x30xf64>
                  %38 = memref.load %arg5[%arg10, %36] : memref<?x30xf64>
                  %39 = arith.addi %36, %c-1 : index
                  %40 = memref.load %arg5[%arg10, %39] : memref<?x30xf64>
                  %41 = arith.subf %38, %40 : f64
                  %42 = arith.mulf %41, %cst_0 : f64
                  %43 = arith.subf %37, %42 : f64
                  memref.store %43, %arg3[%arg10, %36] : memref<?x30xf64>
                  %44 = arith.addi %28, %c2 : index
                  %45 = memref.load %arg3[%arg10, %44] : memref<?x30xf64>
                  %46 = memref.load %arg5[%arg10, %44] : memref<?x30xf64>
                  %47 = arith.addi %44, %c-1 : index
                  %48 = memref.load %arg5[%arg10, %47] : memref<?x30xf64>
                  %49 = arith.subf %46, %48 : f64
                  %50 = arith.mulf %49, %cst_0 : f64
                  %51 = arith.subf %45, %50 : f64
                  memref.store %51, %arg3[%arg10, %44] : memref<?x30xf64>
                  %52 = arith.addi %28, %c3 : index
                  %53 = memref.load %arg3[%arg10, %52] : memref<?x30xf64>
                  %54 = memref.load %arg5[%arg10, %52] : memref<?x30xf64>
                  %55 = arith.addi %52, %c-1 : index
                  %56 = memref.load %arg5[%arg10, %55] : memref<?x30xf64>
                  %57 = arith.subf %54, %56 : f64
                  %58 = arith.mulf %57, %cst_0 : f64
                  %59 = arith.subf %53, %58 : f64
                  memref.store %59, %arg3[%arg10, %52] : memref<?x30xf64>
                  async.yield
                }
                %25 = async.add_to_group %token_2, %17 : !async.token
                %26 = arith.addi %arg13, %c1 : index
                scf.yield %26 : index
              }
              async.await_all %17
              %19 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
              %20 = memref.load %arg5[%arg10, %c29] : memref<?x30xf64>
              %21 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
              %22 = arith.subf %20, %21 : f64
              %23 = arith.mulf %22, %cst_0 : f64
              %24 = arith.subf %19, %23 : f64
              memref.store %24, %arg3[%arg10, %c29] : memref<?x30xf64>
              async.yield
            }
            %15 = async.add_to_group %token_1, %11 : !async.token
            %16 = arith.addi %arg11, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %11
          %13 = async.create_group %c19 : !async.group
          %14 = scf.for %arg10 = %c0 to %c19 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_1 = async.execute {
              %17 = async.create_group %c7 : !async.group
              %18 = scf.for %arg12 = %c0 to %c7 step %c1 iter_args(%arg13 = %c0) -> (index) {
                %token_2 = async.execute {
                  %32 = arith.muli %arg12, %c4 : index
                  %33 = memref.load %arg5[%arg10, %32] : memref<?x30xf64>
                  %34 = arith.addi %32, %c1 : index
                  %35 = memref.load %arg3[%arg10, %34] : memref<?x30xf64>
                  %36 = memref.load %arg3[%arg10, %32] : memref<?x30xf64>
                  %37 = arith.subf %35, %36 : f64
                  %38 = arith.addi %arg10, %c1 : index
                  %39 = memref.load %arg4[%38, %32] : memref<?x30xf64>
                  %40 = arith.addf %37, %39 : f64
                  %41 = memref.load %arg4[%arg10, %32] : memref<?x30xf64>
                  %42 = arith.subf %40, %41 : f64
                  %43 = arith.mulf %42, %cst : f64
                  %44 = arith.subf %33, %43 : f64
                  memref.store %44, %arg5[%arg10, %32] : memref<?x30xf64>
                  %45 = arith.addi %32, %c1 : index
                  %46 = memref.load %arg5[%arg10, %45] : memref<?x30xf64>
                  %47 = arith.addi %45, %c1 : index
                  %48 = memref.load %arg3[%arg10, %47] : memref<?x30xf64>
                  %49 = memref.load %arg3[%arg10, %45] : memref<?x30xf64>
                  %50 = arith.subf %48, %49 : f64
                  %51 = arith.addi %arg10, %c1 : index
                  %52 = memref.load %arg4[%51, %45] : memref<?x30xf64>
                  %53 = arith.addf %50, %52 : f64
                  %54 = memref.load %arg4[%arg10, %45] : memref<?x30xf64>
                  %55 = arith.subf %53, %54 : f64
                  %56 = arith.mulf %55, %cst : f64
                  %57 = arith.subf %46, %56 : f64
                  memref.store %57, %arg5[%arg10, %45] : memref<?x30xf64>
                  %58 = arith.addi %32, %c2 : index
                  %59 = memref.load %arg5[%arg10, %58] : memref<?x30xf64>
                  %60 = arith.addi %58, %c1 : index
                  %61 = memref.load %arg3[%arg10, %60] : memref<?x30xf64>
                  %62 = memref.load %arg3[%arg10, %58] : memref<?x30xf64>
                  %63 = arith.subf %61, %62 : f64
                  %64 = arith.addi %arg10, %c1 : index
                  %65 = memref.load %arg4[%64, %58] : memref<?x30xf64>
                  %66 = arith.addf %63, %65 : f64
                  %67 = memref.load %arg4[%arg10, %58] : memref<?x30xf64>
                  %68 = arith.subf %66, %67 : f64
                  %69 = arith.mulf %68, %cst : f64
                  %70 = arith.subf %59, %69 : f64
                  memref.store %70, %arg5[%arg10, %58] : memref<?x30xf64>
                  %71 = arith.addi %32, %c3 : index
                  %72 = memref.load %arg5[%arg10, %71] : memref<?x30xf64>
                  %73 = arith.addi %71, %c1 : index
                  %74 = memref.load %arg3[%arg10, %73] : memref<?x30xf64>
                  %75 = memref.load %arg3[%arg10, %71] : memref<?x30xf64>
                  %76 = arith.subf %74, %75 : f64
                  %77 = arith.addi %arg10, %c1 : index
                  %78 = memref.load %arg4[%77, %71] : memref<?x30xf64>
                  %79 = arith.addf %76, %78 : f64
                  %80 = memref.load %arg4[%arg10, %71] : memref<?x30xf64>
                  %81 = arith.subf %79, %80 : f64
                  %82 = arith.mulf %81, %cst : f64
                  %83 = arith.subf %72, %82 : f64
                  memref.store %83, %arg5[%arg10, %71] : memref<?x30xf64>
                  async.yield
                }
                %30 = async.add_to_group %token_2, %17 : !async.token
                %31 = arith.addi %arg13, %c1 : index
                scf.yield %31 : index
              }
              async.await_all %17
              %19 = memref.load %arg5[%arg10, %c28] : memref<?x30xf64>
              %20 = memref.load %arg3[%arg10, %c29] : memref<?x30xf64>
              %21 = memref.load %arg3[%arg10, %c28] : memref<?x30xf64>
              %22 = arith.subf %20, %21 : f64
              %23 = arith.addi %arg10, %c1 : index
              %24 = memref.load %arg4[%23, %c28] : memref<?x30xf64>
              %25 = arith.addf %22, %24 : f64
              %26 = memref.load %arg4[%arg10, %c28] : memref<?x30xf64>
              %27 = arith.subf %25, %26 : f64
              %28 = arith.mulf %27, %cst : f64
              %29 = arith.subf %19, %28 : f64
              memref.store %29, %arg5[%arg10, %c28] : memref<?x30xf64>
              async.yield
            }
            %15 = async.add_to_group %token_1, %13 : !async.token
            %16 = arith.addi %arg11, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %13
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg9, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

