module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c-26 = arith.constant -26 : index
    %c26 = arith.constant 26 : index
    %c27 = arith.constant 27 : index
    %c31 = arith.constant 31 : index
    %c13 = arith.constant 13 : index
    %c-13 = arith.constant -13 : index
    %c16 = arith.constant 16 : index
    %c23 = arith.constant 23 : index
    %c128 = arith.constant 128 : index
    %c-4 = arith.constant -4 : index
    %c-32 = arith.constant -32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c-8 = arith.constant -8 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c28 step %c1 {
          %17 = arith.addi %16, %arg8 : index
          %18 = arith.muli %arg8, %c-1 : index
          %19 = arith.cmpi slt, %18, %c0 : index
          %20 = arith.subi %c-1, %18 : index
          %21 = arith.select %19, %20, %18 : index
          %22 = arith.divsi %21, %c4 : index
          %23 = arith.subi %c-1, %22 : index
          %24 = arith.select %19, %23, %22 : index
          %25 = arith.muli %arg6, %c-8 : index
          %26 = arith.addi %24, %25 : index
          %27 = arith.addi %26, %c7 : index
          scf.for %arg9 = %c0 to %27 step %c1 {
            %42 = arith.muli %arg9, %c4 : index
            %43 = arith.addi %17, %42 : index
            memref.store %cst_0, %arg4[%17, %43] : memref<?x28xf64>
            %44 = arith.addi %43, %c1 : index
            memref.store %cst_0, %arg4[%17, %44] : memref<?x28xf64>
            %45 = arith.addi %43, %c2 : index
            memref.store %cst_0, %arg4[%17, %45] : memref<?x28xf64>
            %46 = arith.addi %43, %c3 : index
            memref.store %cst_0, %arg4[%17, %46] : memref<?x28xf64>
          }
          %28 = arith.muli %arg8, %c-1 : index
          %29 = arith.muli %arg6, %c-32 : index
          %30 = arith.addi %28, %29 : index
          %31 = arith.muli %arg8, %c-1 : index
          %32 = arith.cmpi slt, %31, %c0 : index
          %33 = arith.subi %c-1, %31 : index
          %34 = arith.select %32, %33, %31 : index
          %35 = arith.divsi %34, %c4 : index
          %36 = arith.subi %c-1, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %38 = arith.muli %arg6, %c-8 : index
          %39 = arith.addi %37, %38 : index
          %40 = arith.muli %39, %c-4 : index
          %41 = arith.addi %30, %40 : index
          scf.for %arg9 = %c0 to %41 step %c1 {
            %42 = arith.addi %17, %arg9 : index
            %43 = arith.muli %17, %c-1 : index
            %44 = arith.cmpi slt, %43, %c0 : index
            %45 = arith.subi %c-1, %43 : index
            %46 = arith.select %44, %45, %43 : index
            %47 = arith.divsi %46, %c4 : index
            %48 = arith.subi %c-1, %47 : index
            %49 = arith.select %44, %48, %47 : index
            %50 = arith.muli %49, %c4 : index
            %51 = arith.addi %42, %50 : index
            %52 = arith.addi %51, %c28 : index
            memref.store %cst_0, %arg4[%17, %52] : memref<?x28xf64>
          }
        }
        async.yield
      }
      %14 = async.add_to_group %token, %0 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %0
    %2 = arith.subf %arg2, %cst : f64
    memref.store %2, %alloca_1[%c0] : memref<1xf64>
    %3 = async.create_group %c1 : !async.group
    %4 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c128 : index
        scf.for %arg8 = %c0 to %c7 step %c1 {
          %17 = arith.muli %arg8, %c4 : index
          %18 = arith.addi %16, %17 : index
          memref.store %cst_0, %arg5[%18] : memref<?xf64>
          %19 = arith.addi %18, %c1 : index
          memref.store %cst_0, %arg5[%19] : memref<?xf64>
          %20 = arith.addi %18, %c2 : index
          memref.store %cst_0, %arg5[%20] : memref<?xf64>
          %21 = arith.addi %18, %c3 : index
          memref.store %cst_0, %arg5[%21] : memref<?xf64>
        }
        async.yield
      }
      %14 = async.add_to_group %token, %3 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %3
    %5 = async.create_group %c1 : !async.group
    %6 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %17 = arith.muli %arg8, %c128 : index
          scf.for %arg9 = %c0 to %c32 step %c1 {
            %18 = arith.addi %16, %arg9 : index
            scf.for %arg10 = %c0 to %c7 step %c1 {
              %19 = arith.muli %arg10, %c4 : index
              %20 = arith.addi %17, %19 : index
              %21 = memref.load %arg5[%20] : memref<?xf64>
              %22 = memref.load %arg3[%18, %20] : memref<?x28xf64>
              %23 = arith.addf %21, %22 : f64
              memref.store %23, %arg5[%20] : memref<?xf64>
              %24 = arith.addi %20, %c1 : index
              %25 = memref.load %arg5[%24] : memref<?xf64>
              %26 = memref.load %arg3[%18, %24] : memref<?x28xf64>
              %27 = arith.addf %25, %26 : f64
              memref.store %27, %arg5[%24] : memref<?xf64>
              %28 = arith.addi %20, %c2 : index
              %29 = memref.load %arg5[%28] : memref<?xf64>
              %30 = memref.load %arg3[%18, %28] : memref<?x28xf64>
              %31 = arith.addf %29, %30 : f64
              memref.store %31, %arg5[%28] : memref<?xf64>
              %32 = arith.addi %20, %c3 : index
              %33 = memref.load %arg5[%32] : memref<?xf64>
              %34 = memref.load %arg3[%18, %32] : memref<?x28xf64>
              %35 = arith.addf %33, %34 : f64
              memref.store %35, %arg5[%32] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %14 = async.add_to_group %token, %5 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %5
    %7 = async.create_group %c1 : !async.group
    %8 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c128 : index
        scf.for %arg8 = %c0 to %c7 step %c1 {
          %17 = arith.muli %arg8, %c4 : index
          %18 = arith.addi %16, %17 : index
          %19 = memref.load %arg5[%18] : memref<?xf64>
          %20 = arith.divf %19, %arg2 : f64
          memref.store %20, %arg5[%18] : memref<?xf64>
          %21 = arith.addi %18, %c1 : index
          %22 = memref.load %arg5[%21] : memref<?xf64>
          %23 = arith.divf %22, %arg2 : f64
          memref.store %23, %arg5[%21] : memref<?xf64>
          %24 = arith.addi %18, %c2 : index
          %25 = memref.load %arg5[%24] : memref<?xf64>
          %26 = arith.divf %25, %arg2 : f64
          memref.store %26, %arg5[%24] : memref<?xf64>
          %27 = arith.addi %18, %c3 : index
          %28 = memref.load %arg5[%27] : memref<?xf64>
          %29 = arith.divf %28, %arg2 : f64
          memref.store %29, %arg5[%27] : memref<?xf64>
        }
        async.yield
      }
      %14 = async.add_to_group %token, %7 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %7
    %9 = async.create_group %c1 : !async.group
    %10 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %17 = arith.muli %arg8, %c128 : index
          scf.for %arg9 = %c0 to %c32 step %c1 {
            %18 = arith.addi %16, %arg9 : index
            scf.for %arg10 = %c0 to %c7 step %c1 {
              %19 = arith.muli %arg10, %c4 : index
              %20 = arith.addi %17, %19 : index
              %21 = memref.load %arg3[%18, %20] : memref<?x28xf64>
              %22 = memref.load %arg5[%20] : memref<?xf64>
              %23 = arith.subf %21, %22 : f64
              memref.store %23, %arg3[%18, %20] : memref<?x28xf64>
              %24 = arith.addi %20, %c1 : index
              %25 = memref.load %arg3[%18, %24] : memref<?x28xf64>
              %26 = memref.load %arg5[%24] : memref<?xf64>
              %27 = arith.subf %25, %26 : f64
              memref.store %27, %arg3[%18, %24] : memref<?x28xf64>
              %28 = arith.addi %20, %c2 : index
              %29 = memref.load %arg3[%18, %28] : memref<?x28xf64>
              %30 = memref.load %arg5[%28] : memref<?xf64>
              %31 = arith.subf %29, %30 : f64
              memref.store %31, %arg3[%18, %28] : memref<?x28xf64>
              %32 = arith.addi %20, %c3 : index
              %33 = memref.load %arg3[%18, %32] : memref<?x28xf64>
              %34 = memref.load %arg5[%32] : memref<?xf64>
              %35 = arith.subf %33, %34 : f64
              memref.store %35, %arg3[%18, %32] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %14 = async.add_to_group %token, %9 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %9
    %11 = async.create_group %c1 : !async.group
    %12 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %16 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %17 = arith.muli %arg8, %c32 : index
          scf.for %arg9 = %c0 to %c28 step %c1 {
            %18 = arith.addi %16, %arg9 : index
            scf.for %arg10 = %c0 to %c32 step %c1 {
              %19 = arith.addi %17, %arg10 : index
              %20 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %21 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %22 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %23 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %24 = arith.muli %arg9, %c-1 : index
              %25 = arith.cmpi slt, %24, %c0 : index
              %26 = arith.subi %c-1, %24 : index
              %27 = arith.select %25, %26, %24 : index
              %28 = arith.divsi %27, %c4 : index
              %29 = arith.subi %c-1, %28 : index
              %30 = arith.select %25, %29, %28 : index
              %31 = arith.muli %arg6, %c-8 : index
              %32 = arith.addi %30, %31 : index
              %33 = arith.addi %32, %c7 : index
              scf.for %arg11 = %c0 to %33 step %c1 {
                %49 = arith.muli %arg11, %c4 : index
                %50 = arith.addi %18, %49 : index
                %51 = memref.load %arg4[%18, %50] : memref<?x28xf64>
                %52 = memref.load %arg3[%19, %50] : memref<?x28xf64>
                %53 = arith.mulf %20, %52 : f64
                %54 = arith.addf %51, %53 : f64
                memref.store %54, %arg4[%18, %50] : memref<?x28xf64>
                %55 = arith.addi %50, %c1 : index
                %56 = memref.load %arg4[%18, %55] : memref<?x28xf64>
                %57 = memref.load %arg3[%19, %55] : memref<?x28xf64>
                %58 = arith.mulf %21, %57 : f64
                %59 = arith.addf %56, %58 : f64
                memref.store %59, %arg4[%18, %55] : memref<?x28xf64>
                %60 = arith.addi %50, %c2 : index
                %61 = memref.load %arg4[%18, %60] : memref<?x28xf64>
                %62 = memref.load %arg3[%19, %60] : memref<?x28xf64>
                %63 = arith.mulf %22, %62 : f64
                %64 = arith.addf %61, %63 : f64
                memref.store %64, %arg4[%18, %60] : memref<?x28xf64>
                %65 = arith.addi %50, %c3 : index
                %66 = memref.load %arg4[%18, %65] : memref<?x28xf64>
                %67 = memref.load %arg3[%19, %65] : memref<?x28xf64>
                %68 = arith.mulf %23, %67 : f64
                %69 = arith.addf %66, %68 : f64
                memref.store %69, %arg4[%18, %65] : memref<?x28xf64>
              }
              %34 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %35 = arith.muli %arg9, %c-1 : index
              %36 = arith.muli %arg6, %c-32 : index
              %37 = arith.addi %35, %36 : index
              %38 = arith.muli %arg9, %c-1 : index
              %39 = arith.cmpi slt, %38, %c0 : index
              %40 = arith.subi %c-1, %38 : index
              %41 = arith.select %39, %40, %38 : index
              %42 = arith.divsi %41, %c4 : index
              %43 = arith.subi %c-1, %42 : index
              %44 = arith.select %39, %43, %42 : index
              %45 = arith.muli %arg6, %c-8 : index
              %46 = arith.addi %44, %45 : index
              %47 = arith.muli %46, %c-4 : index
              %48 = arith.addi %37, %47 : index
              scf.for %arg11 = %c0 to %48 step %c1 {
                %49 = arith.addi %18, %arg11 : index
                %50 = arith.muli %18, %c-1 : index
                %51 = arith.cmpi slt, %50, %c0 : index
                %52 = arith.subi %c-1, %50 : index
                %53 = arith.select %51, %52, %50 : index
                %54 = arith.divsi %53, %c4 : index
                %55 = arith.subi %c-1, %54 : index
                %56 = arith.select %51, %55, %54 : index
                %57 = arith.muli %56, %c4 : index
                %58 = arith.addi %49, %57 : index
                %59 = arith.addi %58, %c28 : index
                %60 = memref.load %arg4[%18, %59] : memref<?x28xf64>
                %61 = memref.load %arg3[%19, %59] : memref<?x28xf64>
                %62 = arith.mulf %34, %61 : f64
                %63 = arith.addf %60, %62 : f64
                memref.store %63, %arg4[%18, %59] : memref<?x28xf64>
              }
            }
          }
        }
        async.yield
      }
      %14 = async.add_to_group %token, %11 : !async.token
      %15 = arith.addi %arg7, %c1 : index
      scf.yield %15 : index
    }
    async.await_all %11
    %13 = memref.load %alloca_1[%c0] : memref<1xf64>
    scf.for %arg6 = %c0 to %c23 step %c1 {
      %14 = arith.muli %arg6, %c16 : index
      %15 = arith.addi %14, %c-13 : index
      %16 = arith.cmpi sle, %15, %c0 : index
      %17 = arith.subi %c0, %15 : index
      %18 = arith.subi %15, %c1 : index
      %19 = arith.select %16, %17, %18 : index
      %20 = arith.divsi %19, %c13 : index
      %21 = arith.subi %c0, %20 : index
      %22 = arith.addi %20, %c1 : index
      %23 = arith.select %16, %21, %22 : index
      %24 = arith.maxsi %23, %c0 : index
      %25 = arith.muli %arg6, %c32 : index
      %26 = arith.addi %25, %c31 : index
      %27 = arith.cmpi slt, %26, %c0 : index
      %28 = arith.subi %c-1, %26 : index
      %29 = arith.select %27, %28, %26 : index
      %30 = arith.divsi %29, %c27 : index
      %31 = arith.subi %c-1, %30 : index
      %32 = arith.select %27, %31, %30 : index
      %33 = arith.addi %32, %c1 : index
      scf.for %arg7 = %24 to %33 step %c1 {
        %34 = arith.muli %arg6, %c32 : index
        %35 = arith.muli %arg7, %c27 : index
        %36 = arith.maxsi %34, %35 : index
        %37 = arith.muli %arg6, %c32 : index
        %38 = arith.addi %37, %c32 : index
        %39 = arith.muli %arg7, %c26 : index
        %40 = arith.addi %39, %c28 : index
        %41 = arith.minsi %38, %40 : index
        scf.for %arg8 = %36 to %41 step %c1 {
          %42 = arith.muli %arg8, %c-26 : index
          %43 = arith.addi %42, %arg7 : index
          %44 = memref.load %arg4[%arg7, %43] : memref<?x28xf64>
          %45 = arith.divf %44, %13 : f64
          memref.store %45, %alloca[%c0] : memref<1xf64>
          %46 = arith.muli %arg8, %c-26 : index
          %47 = arith.addi %46, %arg7 : index
          memref.store %45, %arg4[%arg7, %47] : memref<?x28xf64>
          %48 = memref.load %alloca[%c0] : memref<1xf64>
          %49 = arith.muli %arg8, %c-26 : index
          %50 = arith.addi %49, %arg7 : index
          memref.store %48, %arg4[%50, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

