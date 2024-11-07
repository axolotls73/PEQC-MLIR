module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-26 = arith.constant -26 : index
    %c26 = arith.constant 26 : index
    %c27 = arith.constant 27 : index
    %c31 = arith.constant 31 : index
    %c13 = arith.constant 13 : index
    %c-13 = arith.constant -13 : index
    %c16 = arith.constant 16 : index
    %c23 = arith.constant 23 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %10 = async.create_group %c1 : !async.group
        %11 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_2 = async.execute {
            %14 = arith.addi %arg6, %arg8 : index
            %15 = arith.muli %arg6, %c-1 : index
            %16 = arith.muli %arg8, %c-1 : index
            %17 = arith.addi %15, %16 : index
            %18 = arith.cmpi slt, %17, %c0 : index
            %19 = arith.subi %c-1, %17 : index
            %20 = arith.select %18, %19, %17 : index
            %21 = arith.divsi %20, %c4 : index
            %22 = arith.subi %c-1, %21 : index
            %23 = arith.select %18, %22, %21 : index
            %24 = arith.addi %23, %c7 : index
            scf.for %arg10 = %c0 to %24 step %c1 {
              %34 = arith.muli %arg10, %c4 : index
              %35 = arith.addi %14, %34 : index
              memref.store %cst_0, %arg4[%14, %35] : memref<?x28xf64>
              %36 = arith.addi %35, %c1 : index
              memref.store %cst_0, %arg4[%14, %36] : memref<?x28xf64>
              %37 = arith.addi %35, %c2 : index
              memref.store %cst_0, %arg4[%14, %37] : memref<?x28xf64>
              %38 = arith.addi %35, %c3 : index
              memref.store %cst_0, %arg4[%14, %38] : memref<?x28xf64>
            }
            %25 = arith.muli %arg6, %c-1 : index
            %26 = arith.muli %arg8, %c-1 : index
            %27 = arith.addi %25, %26 : index
            %28 = arith.remsi %27, %c4 : index
            %29 = arith.cmpi slt, %28, %c0 : index
            %30 = arith.addi %28, %c4 : index
            %31 = arith.select %29, %30, %28 : index
            %32 = async.create_group %c42 : !async.group
            %33 = scf.for %arg10 = %c0 to %31 step %c1 iter_args(%arg11 = %c0) -> (index) {
              %token_3 = async.execute {
                %36 = arith.muli %14, %c-1 : index
                %37 = arith.cmpi slt, %36, %c0 : index
                %38 = arith.subi %c-1, %36 : index
                %39 = arith.select %37, %38, %36 : index
                %40 = arith.divsi %39, %c4 : index
                %41 = arith.subi %c-1, %40 : index
                %42 = arith.select %37, %41, %40 : index
                %43 = arith.muli %42, %c4 : index
                %44 = arith.addi %14, %43 : index
                %45 = arith.addi %44, %arg10 : index
                %46 = arith.addi %45, %c28 : index
                memref.store %cst_0, %arg4[%14, %46] : memref<?x28xf64>
                async.yield
              }
              %34 = async.add_to_group %token_3, %32 : !async.token
              %35 = arith.addi %arg11, %c1 : index
              scf.yield %35 : index
            }
            async.await_all %32
            async.yield
          }
          %12 = async.add_to_group %token_2, %10 : !async.token
          %13 = arith.addi %arg9, %c1 : index
          scf.yield %13 : index
        }
        async.await_all %10
        async.yield
      }
      %8 = async.add_to_group %token, %0 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %0
    %2 = arith.subf %arg2, %cst : f64
    memref.store %2, %alloca_1[%c0] : memref<1xf64>
    scf.for %arg6 = %c0 to %c7 step %c1 {
      %8 = arith.muli %arg6, %c4 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %9 = arith.muli %arg7, %c4 : index
        %10 = arith.addi %8, %9 : index
        memref.store %cst_0, %arg5[%10] : memref<?xf64>
        %11 = arith.addi %10, %c1 : index
        memref.store %cst_0, %arg5[%11] : memref<?xf64>
        %12 = arith.addi %10, %c2 : index
        memref.store %cst_0, %arg5[%12] : memref<?xf64>
        %13 = arith.addi %10, %c3 : index
        memref.store %cst_0, %arg5[%13] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c32 step %c1 {
      scf.for %arg7 = %c0 to %c7 step %c1 {
        %8 = arith.muli %arg7, %c4 : index
        %9 = async.create_group %c1 : !async.group
        %10 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %13 = arith.addi %arg6, %arg8 : index
            scf.for %arg10 = %c0 to %c1 step %c1 {
              %14 = arith.muli %arg10, %c4 : index
              %15 = arith.addi %8, %14 : index
              %16 = memref.load %arg5[%15] : memref<?xf64>
              %17 = memref.load %arg3[%13, %15] : memref<?x28xf64>
              %18 = arith.addf %16, %17 : f64
              memref.store %18, %arg5[%15] : memref<?xf64>
              %19 = arith.addi %15, %c1 : index
              %20 = memref.load %arg5[%19] : memref<?xf64>
              %21 = memref.load %arg3[%13, %19] : memref<?x28xf64>
              %22 = arith.addf %20, %21 : f64
              memref.store %22, %arg5[%19] : memref<?xf64>
              %23 = arith.addi %15, %c2 : index
              %24 = memref.load %arg5[%23] : memref<?xf64>
              %25 = memref.load %arg3[%13, %23] : memref<?x28xf64>
              %26 = arith.addf %24, %25 : f64
              memref.store %26, %arg5[%23] : memref<?xf64>
              %27 = arith.addi %15, %c3 : index
              %28 = memref.load %arg5[%27] : memref<?xf64>
              %29 = memref.load %arg3[%13, %27] : memref<?x28xf64>
              %30 = arith.addf %28, %29 : f64
              memref.store %30, %arg5[%27] : memref<?xf64>
            }
            async.yield
          }
          %11 = async.add_to_group %token, %9 : !async.token
          %12 = arith.addi %arg9, %c1 : index
          scf.yield %12 : index
        }
        async.await_all %9
      }
    }
    scf.for %arg6 = %c0 to %c7 step %c1 {
      %8 = arith.muli %arg6, %c4 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %9 = arith.muli %arg7, %c4 : index
        %10 = arith.addi %8, %9 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %13 = arith.addi %10, %c1 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
        %16 = arith.addi %10, %c2 : index
        %17 = memref.load %arg5[%16] : memref<?xf64>
        %18 = arith.divf %17, %arg2 : f64
        memref.store %18, %arg5[%16] : memref<?xf64>
        %19 = arith.addi %10, %c3 : index
        %20 = memref.load %arg5[%19] : memref<?xf64>
        %21 = arith.divf %20, %arg2 : f64
        memref.store %21, %arg5[%19] : memref<?xf64>
      }
    }
    %3 = async.create_group %c32 : !async.group
    %4 = scf.for %arg6 = %c0 to %c32 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c7 step %c1 {
          %10 = arith.muli %arg8, %c4 : index
          %11 = async.create_group %c1 : !async.group
          %12 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_2 = async.execute {
              %15 = arith.addi %arg6, %arg9 : index
              scf.for %arg11 = %c0 to %c1 step %c1 {
                %16 = arith.muli %arg11, %c4 : index
                %17 = arith.addi %10, %16 : index
                %18 = memref.load %arg3[%15, %17] : memref<?x28xf64>
                %19 = memref.load %arg5[%17] : memref<?xf64>
                %20 = arith.subf %18, %19 : f64
                memref.store %20, %arg3[%15, %17] : memref<?x28xf64>
                %21 = arith.addi %17, %c1 : index
                %22 = memref.load %arg3[%15, %21] : memref<?x28xf64>
                %23 = memref.load %arg5[%21] : memref<?xf64>
                %24 = arith.subf %22, %23 : f64
                memref.store %24, %arg3[%15, %21] : memref<?x28xf64>
                %25 = arith.addi %17, %c2 : index
                %26 = memref.load %arg3[%15, %25] : memref<?x28xf64>
                %27 = memref.load %arg5[%25] : memref<?xf64>
                %28 = arith.subf %26, %27 : f64
                memref.store %28, %arg3[%15, %25] : memref<?x28xf64>
                %29 = arith.addi %17, %c3 : index
                %30 = memref.load %arg3[%15, %29] : memref<?x28xf64>
                %31 = memref.load %arg5[%29] : memref<?xf64>
                %32 = arith.subf %30, %31 : f64
                memref.store %32, %arg3[%15, %29] : memref<?x28xf64>
              }
              async.yield
            }
            %13 = async.add_to_group %token_2, %11 : !async.token
            %14 = arith.addi %arg10, %c1 : index
            scf.yield %14 : index
          }
          async.await_all %11
        }
        async.yield
      }
      %8 = async.add_to_group %token, %3 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %3
    %5 = async.create_group %c28 : !async.group
    %6 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %10 = async.create_group %c1 : !async.group
          %11 = scf.for %arg9 = %c0 to %c1 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_2 = async.execute {
              %14 = arith.addi %arg6, %arg9 : index
              %15 = async.create_group %c1 : !async.group
              %16 = scf.for %arg11 = %c0 to %c1 step %c1 iter_args(%arg12 = %c0) -> (index) {
                %token_3 = async.execute {
                  %19 = arith.addi %arg8, %arg11 : index
                  %20 = memref.load %arg3[%19, %14] : memref<?x28xf64>
                  %21 = memref.load %arg3[%19, %14] : memref<?x28xf64>
                  %22 = memref.load %arg3[%19, %14] : memref<?x28xf64>
                  %23 = memref.load %arg3[%19, %14] : memref<?x28xf64>
                  %24 = arith.muli %arg6, %c-1 : index
                  %25 = arith.muli %arg9, %c-1 : index
                  %26 = arith.addi %24, %25 : index
                  %27 = arith.cmpi slt, %26, %c0 : index
                  %28 = arith.subi %c-1, %26 : index
                  %29 = arith.select %27, %28, %26 : index
                  %30 = arith.divsi %29, %c4 : index
                  %31 = arith.subi %c-1, %30 : index
                  %32 = arith.select %27, %31, %30 : index
                  %33 = arith.addi %32, %c7 : index
                  scf.for %arg13 = %c0 to %33 step %c1 {
                    %43 = arith.muli %arg13, %c4 : index
                    %44 = arith.addi %14, %43 : index
                    %45 = memref.load %arg4[%14, %44] : memref<?x28xf64>
                    %46 = memref.load %arg3[%19, %44] : memref<?x28xf64>
                    %47 = arith.mulf %20, %46 : f64
                    %48 = arith.addf %45, %47 : f64
                    memref.store %48, %arg4[%14, %44] : memref<?x28xf64>
                    %49 = arith.addi %44, %c1 : index
                    %50 = memref.load %arg4[%14, %49] : memref<?x28xf64>
                    %51 = memref.load %arg3[%19, %49] : memref<?x28xf64>
                    %52 = arith.mulf %21, %51 : f64
                    %53 = arith.addf %50, %52 : f64
                    memref.store %53, %arg4[%14, %49] : memref<?x28xf64>
                    %54 = arith.addi %44, %c2 : index
                    %55 = memref.load %arg4[%14, %54] : memref<?x28xf64>
                    %56 = memref.load %arg3[%19, %54] : memref<?x28xf64>
                    %57 = arith.mulf %22, %56 : f64
                    %58 = arith.addf %55, %57 : f64
                    memref.store %58, %arg4[%14, %54] : memref<?x28xf64>
                    %59 = arith.addi %44, %c3 : index
                    %60 = memref.load %arg4[%14, %59] : memref<?x28xf64>
                    %61 = memref.load %arg3[%19, %59] : memref<?x28xf64>
                    %62 = arith.mulf %23, %61 : f64
                    %63 = arith.addf %60, %62 : f64
                    memref.store %63, %arg4[%14, %59] : memref<?x28xf64>
                  }
                  %34 = arith.muli %arg6, %c-1 : index
                  %35 = arith.muli %arg9, %c-1 : index
                  %36 = arith.addi %34, %35 : index
                  %37 = arith.remsi %36, %c4 : index
                  %38 = arith.cmpi slt, %37, %c0 : index
                  %39 = arith.addi %37, %c4 : index
                  %40 = arith.select %38, %39, %37 : index
                  %41 = async.create_group %c42 : !async.group
                  %42 = scf.for %arg13 = %c0 to %40 step %c1 iter_args(%arg14 = %c0) -> (index) {
                    %token_4 = async.execute {
                      %45 = arith.muli %14, %c-1 : index
                      %46 = arith.cmpi slt, %45, %c0 : index
                      %47 = arith.subi %c-1, %45 : index
                      %48 = arith.select %46, %47, %45 : index
                      %49 = arith.divsi %48, %c4 : index
                      %50 = arith.subi %c-1, %49 : index
                      %51 = arith.select %46, %50, %49 : index
                      %52 = arith.muli %51, %c4 : index
                      %53 = arith.addi %14, %52 : index
                      %54 = arith.addi %53, %arg13 : index
                      %55 = arith.addi %54, %c28 : index
                      %56 = memref.load %arg4[%14, %55] : memref<?x28xf64>
                      %57 = memref.load %arg3[%19, %14] : memref<?x28xf64>
                      %58 = memref.load %arg3[%19, %55] : memref<?x28xf64>
                      %59 = arith.mulf %57, %58 : f64
                      %60 = arith.addf %56, %59 : f64
                      memref.store %60, %arg4[%14, %55] : memref<?x28xf64>
                      async.yield
                    }
                    %43 = async.add_to_group %token_4, %41 : !async.token
                    %44 = arith.addi %arg14, %c1 : index
                    scf.yield %44 : index
                  }
                  async.await_all %41
                  async.yield
                }
                %17 = async.add_to_group %token_3, %15 : !async.token
                %18 = arith.addi %arg12, %c1 : index
                scf.yield %18 : index
              }
              async.await_all %15
              async.yield
            }
            %12 = async.add_to_group %token_2, %10 : !async.token
            %13 = arith.addi %arg10, %c1 : index
            scf.yield %13 : index
          }
          async.await_all %10
        }
        async.yield
      }
      %8 = async.add_to_group %token, %5 : !async.token
      %9 = arith.addi %arg7, %c1 : index
      scf.yield %9 : index
    }
    async.await_all %5
    %7 = memref.load %alloca_1[%c0] : memref<1xf64>
    scf.for %arg6 = %c0 to %c23 step %c1 {
      %8 = arith.muli %arg6, %c16 : index
      %9 = arith.addi %8, %c-13 : index
      %10 = arith.cmpi sle, %9, %c0 : index
      %11 = arith.subi %c0, %9 : index
      %12 = arith.subi %9, %c1 : index
      %13 = arith.select %10, %11, %12 : index
      %14 = arith.divsi %13, %c13 : index
      %15 = arith.subi %c0, %14 : index
      %16 = arith.addi %14, %c1 : index
      %17 = arith.select %10, %15, %16 : index
      %18 = arith.maxsi %17, %c0 : index
      %19 = arith.muli %arg6, %c32 : index
      %20 = arith.addi %19, %c31 : index
      %21 = arith.cmpi slt, %20, %c0 : index
      %22 = arith.subi %c-1, %20 : index
      %23 = arith.select %21, %22, %20 : index
      %24 = arith.divsi %23, %c27 : index
      %25 = arith.subi %c-1, %24 : index
      %26 = arith.select %21, %25, %24 : index
      %27 = arith.addi %26, %c1 : index
      scf.for %arg7 = %18 to %27 step %c1 {
        %28 = arith.muli %arg6, %c32 : index
        %29 = arith.muli %arg7, %c27 : index
        %30 = arith.maxsi %28, %29 : index
        %31 = arith.muli %arg6, %c32 : index
        %32 = arith.addi %31, %c32 : index
        %33 = arith.muli %arg7, %c26 : index
        %34 = arith.addi %33, %c28 : index
        %35 = arith.minsi %32, %34 : index
        scf.for %arg8 = %30 to %35 step %c1 {
          %36 = arith.muli %arg8, %c-26 : index
          %37 = arith.addi %36, %arg7 : index
          %38 = memref.load %arg4[%arg7, %37] : memref<?x28xf64>
          %39 = arith.divf %38, %7 : f64
          memref.store %39, %alloca[%c0] : memref<1xf64>
          %40 = arith.muli %arg8, %c-26 : index
          %41 = arith.addi %40, %arg7 : index
          memref.store %39, %arg4[%arg7, %41] : memref<?x28xf64>
          %42 = memref.load %alloca[%c0] : memref<1xf64>
          %43 = arith.muli %arg8, %c-26 : index
          %44 = arith.addi %43, %arg7 : index
          memref.store %42, %arg4[%44, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

