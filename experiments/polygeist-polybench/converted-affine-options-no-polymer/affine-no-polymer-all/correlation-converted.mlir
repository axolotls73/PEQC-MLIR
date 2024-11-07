module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
    %c7 = arith.constant 7 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = async.create_group %c1 : !async.group
        %12 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_2 = async.execute {
            %15 = arith.addi %arg7, %arg9 : index
            memref.store %cst_0, %arg5[%15] : memref<?xf64>
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %18 = arith.muli %arg11, %c4 : index
              %19 = memref.load %arg3[%18, %15] : memref<?x28xf64>
              %20 = memref.load %arg5[%15] : memref<?xf64>
              %21 = arith.addf %20, %19 : f64
              memref.store %21, %arg5[%15] : memref<?xf64>
              %22 = arith.addi %18, %c1 : index
              %23 = memref.load %arg3[%22, %15] : memref<?x28xf64>
              %24 = memref.load %arg5[%15] : memref<?xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg5[%15] : memref<?xf64>
              %26 = arith.addi %18, %c2 : index
              %27 = memref.load %arg3[%26, %15] : memref<?x28xf64>
              %28 = memref.load %arg5[%15] : memref<?xf64>
              %29 = arith.addf %28, %27 : f64
              memref.store %29, %arg5[%15] : memref<?xf64>
              %30 = arith.addi %18, %c3 : index
              %31 = memref.load %arg3[%30, %15] : memref<?x28xf64>
              %32 = memref.load %arg5[%15] : memref<?xf64>
              %33 = arith.addf %32, %31 : f64
              memref.store %33, %arg5[%15] : memref<?xf64>
            }
            %16 = memref.load %arg5[%15] : memref<?xf64>
            %17 = arith.divf %16, %arg2 : f64
            memref.store %17, %arg5[%15] : memref<?xf64>
            async.yield
          }
          %13 = async.add_to_group %token_2, %11 : !async.token
          %14 = arith.addi %arg10, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
        async.yield
      }
      %9 = async.add_to_group %token, %0 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %0
    %2 = async.create_group %c28 : !async.group
    %3 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = async.create_group %c1 : !async.group
        %12 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_2 = async.execute {
            %15 = arith.addi %arg7, %arg9 : index
            memref.store %cst_0, %arg6[%15] : memref<?xf64>
            %16 = memref.load %arg5[%15] : memref<?xf64>
            %17 = memref.load %arg5[%15] : memref<?xf64>
            %18 = memref.load %arg5[%15] : memref<?xf64>
            %19 = memref.load %arg5[%15] : memref<?xf64>
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %25 = arith.muli %arg11, %c4 : index
              %26 = memref.load %arg3[%25, %15] : memref<?x28xf64>
              %27 = arith.subf %26, %16 : f64
              %28 = arith.mulf %27, %27 : f64
              %29 = memref.load %arg6[%15] : memref<?xf64>
              %30 = arith.addf %29, %28 : f64
              memref.store %30, %arg6[%15] : memref<?xf64>
              %31 = arith.addi %25, %c1 : index
              %32 = memref.load %arg3[%31, %15] : memref<?x28xf64>
              %33 = arith.subf %32, %17 : f64
              %34 = arith.mulf %33, %33 : f64
              %35 = memref.load %arg6[%15] : memref<?xf64>
              %36 = arith.addf %35, %34 : f64
              memref.store %36, %arg6[%15] : memref<?xf64>
              %37 = arith.addi %25, %c2 : index
              %38 = memref.load %arg3[%37, %15] : memref<?x28xf64>
              %39 = arith.subf %38, %18 : f64
              %40 = arith.mulf %39, %39 : f64
              %41 = memref.load %arg6[%15] : memref<?xf64>
              %42 = arith.addf %41, %40 : f64
              memref.store %42, %arg6[%15] : memref<?xf64>
              %43 = arith.addi %25, %c3 : index
              %44 = memref.load %arg3[%43, %15] : memref<?x28xf64>
              %45 = arith.subf %44, %19 : f64
              %46 = arith.mulf %45, %45 : f64
              %47 = memref.load %arg6[%15] : memref<?xf64>
              %48 = arith.addf %47, %46 : f64
              memref.store %48, %arg6[%15] : memref<?xf64>
            }
            %20 = memref.load %arg6[%15] : memref<?xf64>
            %21 = arith.divf %20, %arg2 : f64
            %22 = math.sqrt %21 : f64
            %23 = arith.cmpf ole, %22, %cst_1 : f64
            %24 = arith.select %23, %cst, %22 : f64
            memref.store %24, %arg6[%15] : memref<?xf64>
            async.yield
          }
          %13 = async.add_to_group %token_2, %11 : !async.token
          %14 = arith.addi %arg10, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
        async.yield
      }
      %9 = async.add_to_group %token, %2 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %2
    %4 = math.sqrt %arg2 : f64
    %5 = async.create_group %c32 : !async.group
    %6 = scf.for %arg7 = %c0 to %c32 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %11 = arith.muli %arg9, %c4 : index
          %12 = async.create_group %c1 : !async.group
          %13 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_2 = async.execute {
              %16 = arith.addi %arg7, %arg10 : index
              scf.for %arg12 = %c0 to %c1 step %c1 {
                %17 = arith.muli %arg12, %c4 : index
                %18 = arith.addi %11, %17 : index
                %19 = memref.load %arg5[%18] : memref<?xf64>
                %20 = memref.load %arg3[%16, %18] : memref<?x28xf64>
                %21 = arith.subf %20, %19 : f64
                memref.store %21, %arg3[%16, %18] : memref<?x28xf64>
                %22 = memref.load %arg6[%18] : memref<?xf64>
                %23 = arith.mulf %4, %22 : f64
                %24 = arith.divf %21, %23 : f64
                memref.store %24, %arg3[%16, %18] : memref<?x28xf64>
                %25 = arith.addi %18, %c1 : index
                %26 = memref.load %arg5[%25] : memref<?xf64>
                %27 = memref.load %arg3[%16, %25] : memref<?x28xf64>
                %28 = arith.subf %27, %26 : f64
                memref.store %28, %arg3[%16, %25] : memref<?x28xf64>
                %29 = memref.load %arg6[%25] : memref<?xf64>
                %30 = arith.mulf %4, %29 : f64
                %31 = arith.divf %28, %30 : f64
                memref.store %31, %arg3[%16, %25] : memref<?x28xf64>
                %32 = arith.addi %18, %c2 : index
                %33 = memref.load %arg5[%32] : memref<?xf64>
                %34 = memref.load %arg3[%16, %32] : memref<?x28xf64>
                %35 = arith.subf %34, %33 : f64
                memref.store %35, %arg3[%16, %32] : memref<?x28xf64>
                %36 = memref.load %arg6[%32] : memref<?xf64>
                %37 = arith.mulf %4, %36 : f64
                %38 = arith.divf %35, %37 : f64
                memref.store %38, %arg3[%16, %32] : memref<?x28xf64>
                %39 = arith.addi %18, %c3 : index
                %40 = memref.load %arg5[%39] : memref<?xf64>
                %41 = memref.load %arg3[%16, %39] : memref<?x28xf64>
                %42 = arith.subf %41, %40 : f64
                memref.store %42, %arg3[%16, %39] : memref<?x28xf64>
                %43 = memref.load %arg6[%39] : memref<?xf64>
                %44 = arith.mulf %4, %43 : f64
                %45 = arith.divf %42, %44 : f64
                memref.store %45, %arg3[%16, %39] : memref<?x28xf64>
              }
              async.yield
            }
            %14 = async.add_to_group %token_2, %12 : !async.token
            %15 = arith.addi %arg11, %c1 : index
            scf.yield %15 : index
          }
          async.await_all %12
        }
        async.yield
      }
      %9 = async.add_to_group %token, %5 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %5
    %7 = async.create_group %c27 : !async.group
    %8 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = async.create_group %c1 : !async.group
        %12 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_2 = async.execute {
            %15 = arith.addi %arg7, %arg9 : index
            memref.store %cst, %arg4[%15, %15] : memref<?x28xf64>
            %16 = arith.muli %arg7, %c-1 : index
            %17 = arith.muli %arg9, %c-1 : index
            %18 = arith.addi %16, %17 : index
            %19 = arith.addi %18, %c27 : index
            %20 = async.create_group %c42 : !async.group
            %21 = scf.for %arg11 = %c0 to %19 step %c1 iter_args(%arg12 = %c0) -> (index) {
              %token_3 = async.execute {
                %24 = arith.addi %15, %arg11 : index
                %25 = arith.addi %24, %c1 : index
                memref.store %cst_0, %arg4[%15, %25] : memref<?x28xf64>
                scf.for %arg13 = %c0 to %c8 step %c1 {
                  %27 = arith.muli %arg13, %c4 : index
                  %28 = memref.load %arg3[%27, %15] : memref<?x28xf64>
                  %29 = memref.load %arg3[%27, %25] : memref<?x28xf64>
                  %30 = arith.mulf %28, %29 : f64
                  %31 = memref.load %arg4[%15, %25] : memref<?x28xf64>
                  %32 = arith.addf %31, %30 : f64
                  memref.store %32, %arg4[%15, %25] : memref<?x28xf64>
                  %33 = arith.addi %27, %c1 : index
                  %34 = memref.load %arg3[%33, %15] : memref<?x28xf64>
                  %35 = memref.load %arg3[%33, %25] : memref<?x28xf64>
                  %36 = arith.mulf %34, %35 : f64
                  %37 = memref.load %arg4[%15, %25] : memref<?x28xf64>
                  %38 = arith.addf %37, %36 : f64
                  memref.store %38, %arg4[%15, %25] : memref<?x28xf64>
                  %39 = arith.addi %27, %c2 : index
                  %40 = memref.load %arg3[%39, %15] : memref<?x28xf64>
                  %41 = memref.load %arg3[%39, %25] : memref<?x28xf64>
                  %42 = arith.mulf %40, %41 : f64
                  %43 = memref.load %arg4[%15, %25] : memref<?x28xf64>
                  %44 = arith.addf %43, %42 : f64
                  memref.store %44, %arg4[%15, %25] : memref<?x28xf64>
                  %45 = arith.addi %27, %c3 : index
                  %46 = memref.load %arg3[%45, %15] : memref<?x28xf64>
                  %47 = memref.load %arg3[%45, %25] : memref<?x28xf64>
                  %48 = arith.mulf %46, %47 : f64
                  %49 = memref.load %arg4[%15, %25] : memref<?x28xf64>
                  %50 = arith.addf %49, %48 : f64
                  memref.store %50, %arg4[%15, %25] : memref<?x28xf64>
                }
                %26 = memref.load %arg4[%15, %25] : memref<?x28xf64>
                memref.store %26, %arg4[%25, %15] : memref<?x28xf64>
                async.yield
              }
              %22 = async.add_to_group %token_3, %20 : !async.token
              %23 = arith.addi %arg12, %c1 : index
              scf.yield %23 : index
            }
            async.await_all %20
            async.yield
          }
          %13 = async.add_to_group %token_2, %11 : !async.token
          %14 = arith.addi %arg10, %c1 : index
          scf.yield %14 : index
        }
        async.await_all %11
        async.yield
      }
      %9 = async.add_to_group %token, %7 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %7
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

