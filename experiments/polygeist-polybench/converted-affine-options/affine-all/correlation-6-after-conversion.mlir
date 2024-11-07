module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c32 = arith.constant 32 : index
    %c7 = arith.constant 7 : index
    %c24 = arith.constant 24 : index
    %c6 = arith.constant 6 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    %0 = async.create_group %c27 : !async.group
    %1 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = async.create_group %c1 : !async.group
        %12 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_2 = async.execute {
            %15 = arith.addi %arg7, %arg9 : index
            %16 = arith.muli %arg7, %c-1 : index
            %17 = arith.muli %arg9, %c-1 : index
            %18 = arith.addi %16, %17 : index
            %19 = arith.addi %18, %c27 : index
            %20 = arith.cmpi slt, %19, %c0 : index
            %21 = arith.subi %c-1, %19 : index
            %22 = arith.select %20, %21, %19 : index
            %23 = arith.divsi %22, %c4 : index
            %24 = arith.subi %c-1, %23 : index
            %25 = arith.select %20, %24, %23 : index
            scf.for %arg11 = %c0 to %25 step %c1 {
              %44 = arith.muli %arg11, %c4 : index
              %45 = arith.addi %15, %44 : index
              %46 = arith.addi %45, %c1 : index
              memref.store %cst_0, %arg4[%15, %46] : memref<?x28xf64>
              %47 = arith.addi %46, %c1 : index
              memref.store %cst_0, %arg4[%15, %47] : memref<?x28xf64>
              %48 = arith.addi %46, %c2 : index
              memref.store %cst_0, %arg4[%15, %48] : memref<?x28xf64>
              %49 = arith.addi %46, %c3 : index
              memref.store %cst_0, %arg4[%15, %49] : memref<?x28xf64>
            }
            %26 = arith.muli %arg7, %c-1 : index
            %27 = arith.muli %arg9, %c-1 : index
            %28 = arith.addi %26, %27 : index
            %29 = arith.muli %arg7, %c-1 : index
            %30 = arith.muli %arg9, %c-1 : index
            %31 = arith.addi %29, %30 : index
            %32 = arith.addi %31, %c27 : index
            %33 = arith.cmpi slt, %32, %c0 : index
            %34 = arith.subi %c-1, %32 : index
            %35 = arith.select %33, %34, %32 : index
            %36 = arith.divsi %35, %c4 : index
            %37 = arith.subi %c-1, %36 : index
            %38 = arith.select %33, %37, %36 : index
            %39 = arith.muli %38, %c-4 : index
            %40 = arith.addi %28, %39 : index
            %41 = arith.addi %40, %c27 : index
            %42 = async.create_group %c42 : !async.group
            %43 = scf.for %arg11 = %c0 to %41 step %c1 iter_args(%arg12 = %c0) -> (index) {
              %token_3 = async.execute {
                %46 = arith.muli %15, %c-1 : index
                %47 = arith.addi %46, %c27 : index
                %48 = arith.cmpi slt, %47, %c0 : index
                %49 = arith.subi %c-1, %47 : index
                %50 = arith.select %48, %49, %47 : index
                %51 = arith.divsi %50, %c4 : index
                %52 = arith.subi %c-1, %51 : index
                %53 = arith.select %48, %52, %51 : index
                %54 = arith.muli %53, %c4 : index
                %55 = arith.addi %15, %54 : index
                %56 = arith.addi %55, %arg11 : index
                %57 = arith.addi %56, %c1 : index
                memref.store %cst_0, %arg4[%15, %57] : memref<?x28xf64>
                async.yield
              }
              %44 = async.add_to_group %token_3, %42 : !async.token
              %45 = arith.addi %arg12, %c1 : index
              scf.yield %45 : index
            }
            async.await_all %42
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
    scf.for %arg7 = %c0 to %c6 step %c1 {
      %9 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %10 = arith.muli %arg8, %c4 : index
        %11 = arith.addi %9, %10 : index
        memref.store %cst_1, %arg4[%11, %11] : memref<?x28xf64>
        %12 = arith.addi %11, %c1 : index
        memref.store %cst_1, %arg4[%12, %12] : memref<?x28xf64>
        %13 = arith.addi %11, %c2 : index
        memref.store %cst_1, %arg4[%13, %13] : memref<?x28xf64>
        %14 = arith.addi %11, %c3 : index
        memref.store %cst_1, %arg4[%14, %14] : memref<?x28xf64>
      }
    }
    %2 = async.create_group %c3 : !async.group
    %3 = scf.for %arg7 = %c0 to %c3 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = arith.addi %arg7, %c24 : index
        %12 = async.create_group %c1 : !async.group
        %13 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token_2 = async.execute {
            %16 = arith.addi %11, %arg9 : index
            memref.store %cst_1, %arg4[%16, %16] : memref<?x28xf64>
            async.yield
          }
          %14 = async.add_to_group %token_2, %12 : !async.token
          %15 = arith.addi %arg10, %c1 : index
          scf.yield %15 : index
        }
        async.await_all %12
        async.yield
      }
      %9 = async.add_to_group %token, %2 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %2
    %4 = math.sqrt %arg2 : f64
    memref.store %4, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %9 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %10 = arith.muli %arg8, %c4 : index
        %11 = arith.addi %9, %10 : index
        memref.store %cst_0, %arg6[%11] : memref<?xf64>
        memref.store %cst_0, %arg5[%11] : memref<?xf64>
        %12 = arith.addi %11, %c1 : index
        memref.store %cst_0, %arg6[%12] : memref<?xf64>
        memref.store %cst_0, %arg5[%12] : memref<?xf64>
        %13 = arith.addi %11, %c2 : index
        memref.store %cst_0, %arg6[%13] : memref<?xf64>
        memref.store %cst_0, %arg5[%13] : memref<?xf64>
        %14 = arith.addi %11, %c3 : index
        memref.store %cst_0, %arg6[%14] : memref<?xf64>
        memref.store %cst_0, %arg5[%14] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c7 step %c1 {
        %9 = arith.muli %arg8, %c4 : index
        %10 = async.create_group %c1 : !async.group
        %11 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token = async.execute {
            %14 = arith.addi %arg7, %arg9 : index
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %15 = arith.muli %arg11, %c4 : index
              %16 = arith.addi %9, %15 : index
              %17 = memref.load %arg5[%16] : memref<?xf64>
              %18 = memref.load %arg3[%14, %16] : memref<?x28xf64>
              %19 = arith.addf %17, %18 : f64
              memref.store %19, %arg5[%16] : memref<?xf64>
              %20 = arith.addi %16, %c1 : index
              %21 = memref.load %arg5[%20] : memref<?xf64>
              %22 = memref.load %arg3[%14, %20] : memref<?x28xf64>
              %23 = arith.addf %21, %22 : f64
              memref.store %23, %arg5[%20] : memref<?xf64>
              %24 = arith.addi %16, %c2 : index
              %25 = memref.load %arg5[%24] : memref<?xf64>
              %26 = memref.load %arg3[%14, %24] : memref<?x28xf64>
              %27 = arith.addf %25, %26 : f64
              memref.store %27, %arg5[%24] : memref<?xf64>
              %28 = arith.addi %16, %c3 : index
              %29 = memref.load %arg5[%28] : memref<?xf64>
              %30 = memref.load %arg3[%14, %28] : memref<?x28xf64>
              %31 = arith.addf %29, %30 : f64
              memref.store %31, %arg5[%28] : memref<?xf64>
            }
            async.yield
          }
          %12 = async.add_to_group %token, %10 : !async.token
          %13 = arith.addi %arg10, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
      }
    }
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %9 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %10 = arith.muli %arg8, %c4 : index
        %11 = arith.addi %9, %10 : index
        %12 = memref.load %arg5[%11] : memref<?xf64>
        %13 = arith.divf %12, %arg2 : f64
        memref.store %13, %arg5[%11] : memref<?xf64>
        %14 = arith.addi %11, %c1 : index
        %15 = memref.load %arg5[%14] : memref<?xf64>
        %16 = arith.divf %15, %arg2 : f64
        memref.store %16, %arg5[%14] : memref<?xf64>
        %17 = arith.addi %11, %c2 : index
        %18 = memref.load %arg5[%17] : memref<?xf64>
        %19 = arith.divf %18, %arg2 : f64
        memref.store %19, %arg5[%17] : memref<?xf64>
        %20 = arith.addi %11, %c3 : index
        %21 = memref.load %arg5[%20] : memref<?xf64>
        %22 = arith.divf %21, %arg2 : f64
        memref.store %22, %arg5[%20] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c7 step %c1 {
        %9 = arith.muli %arg8, %c4 : index
        %10 = async.create_group %c1 : !async.group
        %11 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
          %token = async.execute {
            %14 = arith.addi %arg7, %arg9 : index
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %15 = arith.muli %arg11, %c4 : index
              %16 = arith.addi %9, %15 : index
              %17 = memref.load %arg6[%16] : memref<?xf64>
              %18 = memref.load %arg3[%14, %16] : memref<?x28xf64>
              %19 = memref.load %arg5[%16] : memref<?xf64>
              %20 = arith.subf %18, %19 : f64
              %21 = arith.mulf %20, %20 : f64
              %22 = arith.addf %17, %21 : f64
              memref.store %22, %arg6[%16] : memref<?xf64>
              %23 = memref.load %arg3[%14, %16] : memref<?x28xf64>
              %24 = memref.load %arg5[%16] : memref<?xf64>
              %25 = arith.subf %23, %24 : f64
              memref.store %25, %arg3[%14, %16] : memref<?x28xf64>
              %26 = arith.addi %16, %c1 : index
              %27 = memref.load %arg6[%26] : memref<?xf64>
              %28 = memref.load %arg3[%14, %26] : memref<?x28xf64>
              %29 = memref.load %arg5[%26] : memref<?xf64>
              %30 = arith.subf %28, %29 : f64
              %31 = arith.mulf %30, %30 : f64
              %32 = arith.addf %27, %31 : f64
              memref.store %32, %arg6[%26] : memref<?xf64>
              %33 = memref.load %arg3[%14, %26] : memref<?x28xf64>
              %34 = memref.load %arg5[%26] : memref<?xf64>
              %35 = arith.subf %33, %34 : f64
              memref.store %35, %arg3[%14, %26] : memref<?x28xf64>
              %36 = arith.addi %16, %c2 : index
              %37 = memref.load %arg6[%36] : memref<?xf64>
              %38 = memref.load %arg3[%14, %36] : memref<?x28xf64>
              %39 = memref.load %arg5[%36] : memref<?xf64>
              %40 = arith.subf %38, %39 : f64
              %41 = arith.mulf %40, %40 : f64
              %42 = arith.addf %37, %41 : f64
              memref.store %42, %arg6[%36] : memref<?xf64>
              %43 = memref.load %arg3[%14, %36] : memref<?x28xf64>
              %44 = memref.load %arg5[%36] : memref<?xf64>
              %45 = arith.subf %43, %44 : f64
              memref.store %45, %arg3[%14, %36] : memref<?x28xf64>
              %46 = arith.addi %16, %c3 : index
              %47 = memref.load %arg6[%46] : memref<?xf64>
              %48 = memref.load %arg3[%14, %46] : memref<?x28xf64>
              %49 = memref.load %arg5[%46] : memref<?xf64>
              %50 = arith.subf %48, %49 : f64
              %51 = arith.mulf %50, %50 : f64
              %52 = arith.addf %47, %51 : f64
              memref.store %52, %arg6[%46] : memref<?xf64>
              %53 = memref.load %arg3[%14, %46] : memref<?x28xf64>
              %54 = memref.load %arg5[%46] : memref<?xf64>
              %55 = arith.subf %53, %54 : f64
              memref.store %55, %arg3[%14, %46] : memref<?x28xf64>
            }
            async.yield
          }
          %12 = async.add_to_group %token, %10 : !async.token
          %13 = arith.addi %arg10, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
      }
    }
    scf.for %arg7 = %c0 to %c7 step %c1 {
      %9 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %10 = arith.muli %arg8, %c4 : index
        %11 = arith.addi %9, %10 : index
        %12 = memref.load %arg6[%11] : memref<?xf64>
        %13 = arith.divf %12, %arg2 : f64
        %14 = math.sqrt %13 : f64
        %15 = arith.cmpf ole, %14, %cst : f64
        %16 = arith.select %15, %cst_1, %14 : f64
        memref.store %16, %arg6[%11] : memref<?xf64>
        %17 = arith.addi %11, %c1 : index
        %18 = memref.load %arg6[%17] : memref<?xf64>
        %19 = arith.divf %18, %arg2 : f64
        %20 = math.sqrt %19 : f64
        %21 = arith.cmpf ole, %20, %cst : f64
        %22 = arith.select %21, %cst_1, %20 : f64
        memref.store %22, %arg6[%17] : memref<?xf64>
        %23 = arith.addi %11, %c2 : index
        %24 = memref.load %arg6[%23] : memref<?xf64>
        %25 = arith.divf %24, %arg2 : f64
        %26 = math.sqrt %25 : f64
        %27 = arith.cmpf ole, %26, %cst : f64
        %28 = arith.select %27, %cst_1, %26 : f64
        memref.store %28, %arg6[%23] : memref<?xf64>
        %29 = arith.addi %11, %c3 : index
        %30 = memref.load %arg6[%29] : memref<?xf64>
        %31 = arith.divf %30, %arg2 : f64
        %32 = math.sqrt %31 : f64
        %33 = arith.cmpf ole, %32, %cst : f64
        %34 = arith.select %33, %cst_1, %32 : f64
        memref.store %34, %arg6[%29] : memref<?xf64>
      }
    }
    %5 = async.create_group %c32 : !async.group
    %6 = scf.for %arg7 = %c0 to %c32 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %11 = arith.muli %arg9, %c4 : index
          %12 = async.create_group %c1 : !async.group
          %13 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_2 = async.execute {
              %16 = arith.addi %arg7, %arg10 : index
              %17 = memref.load %alloca[%c0] : memref<1xf64>
              %18 = memref.load %alloca[%c0] : memref<1xf64>
              %19 = memref.load %alloca[%c0] : memref<1xf64>
              %20 = memref.load %alloca[%c0] : memref<1xf64>
              scf.for %arg12 = %c0 to %c1 step %c1 {
                %21 = arith.muli %arg12, %c4 : index
                %22 = arith.addi %11, %21 : index
                %23 = memref.load %arg3[%16, %22] : memref<?x28xf64>
                %24 = memref.load %arg6[%22] : memref<?xf64>
                %25 = arith.mulf %17, %24 : f64
                %26 = arith.divf %23, %25 : f64
                memref.store %26, %arg3[%16, %22] : memref<?x28xf64>
                %27 = arith.addi %22, %c1 : index
                %28 = memref.load %arg3[%16, %27] : memref<?x28xf64>
                %29 = memref.load %arg6[%27] : memref<?xf64>
                %30 = arith.mulf %18, %29 : f64
                %31 = arith.divf %28, %30 : f64
                memref.store %31, %arg3[%16, %27] : memref<?x28xf64>
                %32 = arith.addi %22, %c2 : index
                %33 = memref.load %arg3[%16, %32] : memref<?x28xf64>
                %34 = memref.load %arg6[%32] : memref<?xf64>
                %35 = arith.mulf %19, %34 : f64
                %36 = arith.divf %33, %35 : f64
                memref.store %36, %arg3[%16, %32] : memref<?x28xf64>
                %37 = arith.addi %22, %c3 : index
                %38 = memref.load %arg3[%16, %37] : memref<?x28xf64>
                %39 = memref.load %arg6[%37] : memref<?xf64>
                %40 = arith.mulf %20, %39 : f64
                %41 = arith.divf %38, %40 : f64
                memref.store %41, %arg3[%16, %37] : memref<?x28xf64>
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
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %11 = async.create_group %c1 : !async.group
          %12 = scf.for %arg10 = %c0 to %c1 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_2 = async.execute {
              %15 = arith.addi %arg7, %arg10 : index
              %16 = async.create_group %c1 : !async.group
              %17 = scf.for %arg12 = %c0 to %c1 step %c1 iter_args(%arg13 = %c0) -> (index) {
                %token_3 = async.execute {
                  %20 = arith.addi %arg9, %arg12 : index
                  %21 = memref.load %arg3[%20, %15] : memref<?x28xf64>
                  %22 = memref.load %arg3[%20, %15] : memref<?x28xf64>
                  %23 = memref.load %arg3[%20, %15] : memref<?x28xf64>
                  %24 = memref.load %arg3[%20, %15] : memref<?x28xf64>
                  %25 = arith.muli %arg7, %c-1 : index
                  %26 = arith.muli %arg10, %c-1 : index
                  %27 = arith.addi %25, %26 : index
                  %28 = arith.addi %27, %c27 : index
                  %29 = arith.cmpi slt, %28, %c0 : index
                  %30 = arith.subi %c-1, %28 : index
                  %31 = arith.select %29, %30, %28 : index
                  %32 = arith.divsi %31, %c4 : index
                  %33 = arith.subi %c-1, %32 : index
                  %34 = arith.select %29, %33, %32 : index
                  scf.for %arg14 = %c0 to %34 step %c1 {
                    %53 = arith.muli %arg14, %c4 : index
                    %54 = arith.addi %15, %53 : index
                    %55 = arith.addi %54, %c1 : index
                    %56 = memref.load %arg4[%15, %55] : memref<?x28xf64>
                    %57 = memref.load %arg3[%20, %55] : memref<?x28xf64>
                    %58 = arith.mulf %21, %57 : f64
                    %59 = arith.addf %56, %58 : f64
                    memref.store %59, %arg4[%15, %55] : memref<?x28xf64>
                    %60 = arith.addi %55, %c1 : index
                    %61 = memref.load %arg4[%15, %60] : memref<?x28xf64>
                    %62 = memref.load %arg3[%20, %60] : memref<?x28xf64>
                    %63 = arith.mulf %22, %62 : f64
                    %64 = arith.addf %61, %63 : f64
                    memref.store %64, %arg4[%15, %60] : memref<?x28xf64>
                    %65 = arith.addi %55, %c2 : index
                    %66 = memref.load %arg4[%15, %65] : memref<?x28xf64>
                    %67 = memref.load %arg3[%20, %65] : memref<?x28xf64>
                    %68 = arith.mulf %23, %67 : f64
                    %69 = arith.addf %66, %68 : f64
                    memref.store %69, %arg4[%15, %65] : memref<?x28xf64>
                    %70 = arith.addi %55, %c3 : index
                    %71 = memref.load %arg4[%15, %70] : memref<?x28xf64>
                    %72 = memref.load %arg3[%20, %70] : memref<?x28xf64>
                    %73 = arith.mulf %24, %72 : f64
                    %74 = arith.addf %71, %73 : f64
                    memref.store %74, %arg4[%15, %70] : memref<?x28xf64>
                  }
                  %35 = arith.muli %arg7, %c-1 : index
                  %36 = arith.muli %arg10, %c-1 : index
                  %37 = arith.addi %35, %36 : index
                  %38 = arith.muli %arg7, %c-1 : index
                  %39 = arith.muli %arg10, %c-1 : index
                  %40 = arith.addi %38, %39 : index
                  %41 = arith.addi %40, %c27 : index
                  %42 = arith.cmpi slt, %41, %c0 : index
                  %43 = arith.subi %c-1, %41 : index
                  %44 = arith.select %42, %43, %41 : index
                  %45 = arith.divsi %44, %c4 : index
                  %46 = arith.subi %c-1, %45 : index
                  %47 = arith.select %42, %46, %45 : index
                  %48 = arith.muli %47, %c-4 : index
                  %49 = arith.addi %37, %48 : index
                  %50 = arith.addi %49, %c27 : index
                  %51 = async.create_group %c42 : !async.group
                  %52 = scf.for %arg14 = %c0 to %50 step %c1 iter_args(%arg15 = %c0) -> (index) {
                    %token_4 = async.execute {
                      %55 = arith.muli %15, %c-1 : index
                      %56 = arith.addi %55, %c27 : index
                      %57 = arith.cmpi slt, %56, %c0 : index
                      %58 = arith.subi %c-1, %56 : index
                      %59 = arith.select %57, %58, %56 : index
                      %60 = arith.divsi %59, %c4 : index
                      %61 = arith.subi %c-1, %60 : index
                      %62 = arith.select %57, %61, %60 : index
                      %63 = arith.muli %62, %c4 : index
                      %64 = arith.addi %15, %63 : index
                      %65 = arith.addi %64, %arg14 : index
                      %66 = arith.addi %65, %c1 : index
                      %67 = memref.load %arg4[%15, %66] : memref<?x28xf64>
                      %68 = memref.load %arg3[%20, %15] : memref<?x28xf64>
                      %69 = memref.load %arg3[%20, %66] : memref<?x28xf64>
                      %70 = arith.mulf %68, %69 : f64
                      %71 = arith.addf %67, %70 : f64
                      memref.store %71, %arg4[%15, %66] : memref<?x28xf64>
                      async.yield
                    }
                    %53 = async.add_to_group %token_4, %51 : !async.token
                    %54 = arith.addi %arg15, %c1 : index
                    scf.yield %54 : index
                  }
                  async.await_all %51
                  async.yield
                }
                %18 = async.add_to_group %token_3, %16 : !async.token
                %19 = arith.addi %arg13, %c1 : index
                scf.yield %19 : index
              }
              async.await_all %16
              async.yield
            }
            %13 = async.add_to_group %token_2, %11 : !async.token
            %14 = arith.addi %arg11, %c1 : index
            scf.yield %14 : index
          }
          async.await_all %11
        }
        async.yield
      }
      %9 = async.add_to_group %token, %7 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %7
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %9 = async.create_group %c1 : !async.group
      %10 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %13 = arith.addi %arg7, %arg8 : index
          %14 = arith.muli %arg7, %c-1 : index
          %15 = arith.muli %arg8, %c-1 : index
          %16 = arith.addi %14, %15 : index
          %17 = arith.addi %16, %c27 : index
          %18 = arith.cmpi slt, %17, %c0 : index
          %19 = arith.subi %c-1, %17 : index
          %20 = arith.select %18, %19, %17 : index
          %21 = arith.divsi %20, %c4 : index
          %22 = arith.subi %c-1, %21 : index
          %23 = arith.select %18, %22, %21 : index
          scf.for %arg10 = %c0 to %23 step %c1 {
            %42 = arith.muli %arg10, %c4 : index
            %43 = arith.addi %13, %42 : index
            %44 = arith.addi %43, %c1 : index
            %45 = memref.load %arg4[%13, %44] : memref<?x28xf64>
            memref.store %45, %arg4[%44, %13] : memref<?x28xf64>
            %46 = arith.addi %44, %c1 : index
            %47 = memref.load %arg4[%13, %46] : memref<?x28xf64>
            memref.store %47, %arg4[%46, %13] : memref<?x28xf64>
            %48 = arith.addi %44, %c2 : index
            %49 = memref.load %arg4[%13, %48] : memref<?x28xf64>
            memref.store %49, %arg4[%48, %13] : memref<?x28xf64>
            %50 = arith.addi %44, %c3 : index
            %51 = memref.load %arg4[%13, %50] : memref<?x28xf64>
            memref.store %51, %arg4[%50, %13] : memref<?x28xf64>
          }
          %24 = arith.muli %arg7, %c-1 : index
          %25 = arith.muli %arg8, %c-1 : index
          %26 = arith.addi %24, %25 : index
          %27 = arith.muli %arg7, %c-1 : index
          %28 = arith.muli %arg8, %c-1 : index
          %29 = arith.addi %27, %28 : index
          %30 = arith.addi %29, %c27 : index
          %31 = arith.cmpi slt, %30, %c0 : index
          %32 = arith.subi %c-1, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4 : index
          %35 = arith.subi %c-1, %34 : index
          %36 = arith.select %31, %35, %34 : index
          %37 = arith.muli %36, %c-4 : index
          %38 = arith.addi %26, %37 : index
          %39 = arith.addi %38, %c27 : index
          %40 = async.create_group %c42 : !async.group
          %41 = scf.for %arg10 = %c0 to %39 step %c1 iter_args(%arg11 = %c0) -> (index) {
            %token_2 = async.execute {
              %44 = arith.muli %13, %c-1 : index
              %45 = arith.addi %44, %c27 : index
              %46 = arith.cmpi slt, %45, %c0 : index
              %47 = arith.subi %c-1, %45 : index
              %48 = arith.select %46, %47, %45 : index
              %49 = arith.divsi %48, %c4 : index
              %50 = arith.subi %c-1, %49 : index
              %51 = arith.select %46, %50, %49 : index
              %52 = arith.muli %51, %c4 : index
              %53 = arith.addi %13, %52 : index
              %54 = arith.addi %53, %arg10 : index
              %55 = arith.addi %54, %c1 : index
              %56 = memref.load %arg4[%13, %55] : memref<?x28xf64>
              memref.store %56, %arg4[%55, %13] : memref<?x28xf64>
              async.yield
            }
            %42 = async.add_to_group %token_2, %40 : !async.token
            %43 = arith.addi %arg11, %c1 : index
            scf.yield %43 : index
          }
          async.await_all %40
          async.yield
        }
        %11 = async.add_to_group %token, %9 : !async.token
        %12 = arith.addi %arg9, %c1 : index
        scf.yield %12 : index
      }
      async.await_all %9
    }
    return
  }
}

