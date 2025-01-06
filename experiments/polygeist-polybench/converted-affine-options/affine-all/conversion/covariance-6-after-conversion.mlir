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
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c7 = arith.constant 7 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c-8 = arith.constant -8 : index
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
          %18 = arith.muli %arg6, %c-8 : index
          %19 = arith.muli %arg8, %c-1 : index
          %20 = arith.cmpi slt, %19, %c0 : index
          %21 = arith.subi %c-1, %19 : index
          %22 = arith.select %20, %21, %19 : index
          %23 = arith.divsi %22, %c4 : index
          %24 = arith.subi %c-1, %23 : index
          %25 = arith.select %20, %24, %23 : index
          %26 = arith.addi %18, %25 : index
          %27 = arith.addi %26, %c7 : index
          scf.for %arg9 = %c0 to %27 step %c1 {
            %33 = arith.muli %arg9, %c4 : index
            %34 = arith.addi %17, %33 : index
            memref.store %cst_0, %arg4[%17, %34] : memref<?x28xf64>
            %35 = arith.addi %34, %c1 : index
            memref.store %cst_0, %arg4[%17, %35] : memref<?x28xf64>
            %36 = arith.addi %34, %c2 : index
            memref.store %cst_0, %arg4[%17, %36] : memref<?x28xf64>
            %37 = arith.addi %34, %c3 : index
            memref.store %cst_0, %arg4[%17, %37] : memref<?x28xf64>
          }
          %28 = arith.muli %arg8, %c-1 : index
          %29 = arith.remsi %28, %c4 : index
          %30 = arith.cmpi slt, %29, %c0 : index
          %31 = arith.addi %29, %c4 : index
          %32 = arith.select %30, %31, %29 : index
          scf.for %arg9 = %c0 to %32 step %c1 {
            %33 = arith.addi %17, %arg9 : index
            %34 = arith.muli %17, %c-1 : index
            %35 = arith.cmpi slt, %34, %c0 : index
            %36 = arith.subi %c-1, %34 : index
            %37 = arith.select %35, %36, %34 : index
            %38 = arith.divsi %37, %c4 : index
            %39 = arith.subi %c-1, %38 : index
            %40 = arith.select %35, %39, %38 : index
            %41 = arith.muli %40, %c4 : index
            %42 = arith.addi %33, %41 : index
            %43 = arith.addi %42, %c28 : index
            memref.store %cst_0, %arg4[%17, %43] : memref<?x28xf64>
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
              %24 = arith.muli %arg6, %c-8 : index
              %25 = arith.muli %arg9, %c-1 : index
              %26 = arith.cmpi slt, %25, %c0 : index
              %27 = arith.subi %c-1, %25 : index
              %28 = arith.select %26, %27, %25 : index
              %29 = arith.divsi %28, %c4 : index
              %30 = arith.subi %c-1, %29 : index
              %31 = arith.select %26, %30, %29 : index
              %32 = arith.addi %24, %31 : index
              %33 = arith.addi %32, %c7 : index
              scf.for %arg11 = %c0 to %33 step %c1 {
                %40 = arith.muli %arg11, %c4 : index
                %41 = arith.addi %18, %40 : index
                %42 = memref.load %arg4[%18, %41] : memref<?x28xf64>
                %43 = memref.load %arg3[%19, %41] : memref<?x28xf64>
                %44 = arith.mulf %20, %43 : f64
                %45 = arith.addf %42, %44 : f64
                memref.store %45, %arg4[%18, %41] : memref<?x28xf64>
                %46 = arith.addi %41, %c1 : index
                %47 = memref.load %arg4[%18, %46] : memref<?x28xf64>
                %48 = memref.load %arg3[%19, %46] : memref<?x28xf64>
                %49 = arith.mulf %21, %48 : f64
                %50 = arith.addf %47, %49 : f64
                memref.store %50, %arg4[%18, %46] : memref<?x28xf64>
                %51 = arith.addi %41, %c2 : index
                %52 = memref.load %arg4[%18, %51] : memref<?x28xf64>
                %53 = memref.load %arg3[%19, %51] : memref<?x28xf64>
                %54 = arith.mulf %22, %53 : f64
                %55 = arith.addf %52, %54 : f64
                memref.store %55, %arg4[%18, %51] : memref<?x28xf64>
                %56 = arith.addi %41, %c3 : index
                %57 = memref.load %arg4[%18, %56] : memref<?x28xf64>
                %58 = memref.load %arg3[%19, %56] : memref<?x28xf64>
                %59 = arith.mulf %23, %58 : f64
                %60 = arith.addf %57, %59 : f64
                memref.store %60, %arg4[%18, %56] : memref<?x28xf64>
              }
              %34 = memref.load %arg3[%19, %18] : memref<?x28xf64>
              %35 = arith.muli %arg9, %c-1 : index
              %36 = arith.remsi %35, %c4 : index
              %37 = arith.cmpi slt, %36, %c0 : index
              %38 = arith.addi %36, %c4 : index
              %39 = arith.select %37, %38, %36 : index
              scf.for %arg11 = %c0 to %39 step %c1 {
                %40 = arith.addi %18, %arg11 : index
                %41 = arith.muli %18, %c-1 : index
                %42 = arith.cmpi slt, %41, %c0 : index
                %43 = arith.subi %c-1, %41 : index
                %44 = arith.select %42, %43, %41 : index
                %45 = arith.divsi %44, %c4 : index
                %46 = arith.subi %c-1, %45 : index
                %47 = arith.select %42, %46, %45 : index
                %48 = arith.muli %47, %c4 : index
                %49 = arith.addi %40, %48 : index
                %50 = arith.addi %49, %c28 : index
                %51 = memref.load %arg4[%18, %50] : memref<?x28xf64>
                %52 = memref.load %arg3[%19, %50] : memref<?x28xf64>
                %53 = arith.mulf %34, %52 : f64
                %54 = arith.addf %51, %53 : f64
                memref.store %54, %arg4[%18, %50] : memref<?x28xf64>
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

