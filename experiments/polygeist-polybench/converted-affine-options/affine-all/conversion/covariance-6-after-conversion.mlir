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
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %10 = arith.addi %arg6, %arg8 : index
          %11 = arith.muli %arg6, %c-1 : index
          %12 = arith.muli %arg8, %c-1 : index
          %13 = arith.addi %11, %12 : index
          %14 = arith.cmpi slt, %13, %c0 : index
          %15 = arith.subi %c-1, %13 : index
          %16 = arith.select %14, %15, %13 : index
          %17 = arith.divsi %16, %c4 : index
          %18 = arith.subi %c-1, %17 : index
          %19 = arith.select %14, %18, %17 : index
          %20 = arith.addi %19, %c7 : index
          scf.for %arg9 = %c0 to %20 step %c1 {
            %28 = arith.muli %arg9, %c4 : index
            %29 = arith.addi %10, %28 : index
            memref.store %cst_0, %arg4[%10, %29] : memref<?x28xf64>
            %30 = arith.addi %29, %c1 : index
            memref.store %cst_0, %arg4[%10, %30] : memref<?x28xf64>
            %31 = arith.addi %29, %c2 : index
            memref.store %cst_0, %arg4[%10, %31] : memref<?x28xf64>
            %32 = arith.addi %29, %c3 : index
            memref.store %cst_0, %arg4[%10, %32] : memref<?x28xf64>
          }
          %21 = arith.muli %arg6, %c-1 : index
          %22 = arith.muli %arg8, %c-1 : index
          %23 = arith.addi %21, %22 : index
          %24 = arith.remsi %23, %c4 : index
          %25 = arith.cmpi slt, %24, %c0 : index
          %26 = arith.addi %24, %c4 : index
          %27 = arith.select %25, %26, %24 : index
          scf.for %arg9 = %c0 to %27 step %c1 {
            %28 = arith.addi %10, %arg9 : index
            %29 = arith.muli %10, %c-1 : index
            %30 = arith.cmpi slt, %29, %c0 : index
            %31 = arith.subi %c-1, %29 : index
            %32 = arith.select %30, %31, %29 : index
            %33 = arith.divsi %32, %c4 : index
            %34 = arith.subi %c-1, %33 : index
            %35 = arith.select %30, %34, %33 : index
            %36 = arith.muli %35, %c4 : index
            %37 = arith.addi %28, %36 : index
            %38 = arith.addi %37, %c28 : index
            memref.store %cst_0, %arg4[%10, %38] : memref<?x28xf64>
          }
        }
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
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %11 = arith.addi %arg6, %arg9 : index
            scf.for %arg10 = %c0 to %c1 step %c1 {
              %12 = arith.muli %arg10, %c4 : index
              %13 = arith.addi %10, %12 : index
              %14 = memref.load %arg3[%11, %13] : memref<?x28xf64>
              %15 = memref.load %arg5[%13] : memref<?xf64>
              %16 = arith.subf %14, %15 : f64
              memref.store %16, %arg3[%11, %13] : memref<?x28xf64>
              %17 = arith.addi %13, %c1 : index
              %18 = memref.load %arg3[%11, %17] : memref<?x28xf64>
              %19 = memref.load %arg5[%17] : memref<?xf64>
              %20 = arith.subf %18, %19 : f64
              memref.store %20, %arg3[%11, %17] : memref<?x28xf64>
              %21 = arith.addi %13, %c2 : index
              %22 = memref.load %arg3[%11, %21] : memref<?x28xf64>
              %23 = memref.load %arg5[%21] : memref<?xf64>
              %24 = arith.subf %22, %23 : f64
              memref.store %24, %arg3[%11, %21] : memref<?x28xf64>
              %25 = arith.addi %13, %c3 : index
              %26 = memref.load %arg3[%11, %25] : memref<?x28xf64>
              %27 = memref.load %arg5[%25] : memref<?xf64>
              %28 = arith.subf %26, %27 : f64
              memref.store %28, %arg3[%11, %25] : memref<?x28xf64>
            }
          }
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
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %10 = arith.addi %arg6, %arg9 : index
            scf.for %arg10 = %c0 to %c1 step %c1 {
              %11 = arith.addi %arg8, %arg10 : index
              %12 = memref.load %arg3[%11, %10] : memref<?x28xf64>
              %13 = memref.load %arg3[%11, %10] : memref<?x28xf64>
              %14 = memref.load %arg3[%11, %10] : memref<?x28xf64>
              %15 = memref.load %arg3[%11, %10] : memref<?x28xf64>
              %16 = arith.muli %arg6, %c-1 : index
              %17 = arith.muli %arg9, %c-1 : index
              %18 = arith.addi %16, %17 : index
              %19 = arith.cmpi slt, %18, %c0 : index
              %20 = arith.subi %c-1, %18 : index
              %21 = arith.select %19, %20, %18 : index
              %22 = arith.divsi %21, %c4 : index
              %23 = arith.subi %c-1, %22 : index
              %24 = arith.select %19, %23, %22 : index
              %25 = arith.addi %24, %c7 : index
              scf.for %arg11 = %c0 to %25 step %c1 {
                %34 = arith.muli %arg11, %c4 : index
                %35 = arith.addi %10, %34 : index
                %36 = memref.load %arg4[%10, %35] : memref<?x28xf64>
                %37 = memref.load %arg3[%11, %35] : memref<?x28xf64>
                %38 = arith.mulf %12, %37 : f64
                %39 = arith.addf %36, %38 : f64
                memref.store %39, %arg4[%10, %35] : memref<?x28xf64>
                %40 = arith.addi %35, %c1 : index
                %41 = memref.load %arg4[%10, %40] : memref<?x28xf64>
                %42 = memref.load %arg3[%11, %40] : memref<?x28xf64>
                %43 = arith.mulf %13, %42 : f64
                %44 = arith.addf %41, %43 : f64
                memref.store %44, %arg4[%10, %40] : memref<?x28xf64>
                %45 = arith.addi %35, %c2 : index
                %46 = memref.load %arg4[%10, %45] : memref<?x28xf64>
                %47 = memref.load %arg3[%11, %45] : memref<?x28xf64>
                %48 = arith.mulf %14, %47 : f64
                %49 = arith.addf %46, %48 : f64
                memref.store %49, %arg4[%10, %45] : memref<?x28xf64>
                %50 = arith.addi %35, %c3 : index
                %51 = memref.load %arg4[%10, %50] : memref<?x28xf64>
                %52 = memref.load %arg3[%11, %50] : memref<?x28xf64>
                %53 = arith.mulf %15, %52 : f64
                %54 = arith.addf %51, %53 : f64
                memref.store %54, %arg4[%10, %50] : memref<?x28xf64>
              }
              %26 = memref.load %arg3[%11, %10] : memref<?x28xf64>
              %27 = arith.muli %arg6, %c-1 : index
              %28 = arith.muli %arg9, %c-1 : index
              %29 = arith.addi %27, %28 : index
              %30 = arith.remsi %29, %c4 : index
              %31 = arith.cmpi slt, %30, %c0 : index
              %32 = arith.addi %30, %c4 : index
              %33 = arith.select %31, %32, %30 : index
              scf.for %arg11 = %c0 to %33 step %c1 {
                %34 = arith.addi %10, %arg11 : index
                %35 = arith.muli %10, %c-1 : index
                %36 = arith.cmpi slt, %35, %c0 : index
                %37 = arith.subi %c-1, %35 : index
                %38 = arith.select %36, %37, %35 : index
                %39 = arith.divsi %38, %c4 : index
                %40 = arith.subi %c-1, %39 : index
                %41 = arith.select %36, %40, %39 : index
                %42 = arith.muli %41, %c4 : index
                %43 = arith.addi %34, %42 : index
                %44 = arith.addi %43, %c28 : index
                %45 = memref.load %arg4[%10, %44] : memref<?x28xf64>
                %46 = memref.load %arg3[%11, %44] : memref<?x28xf64>
                %47 = arith.mulf %26, %46 : f64
                %48 = arith.addf %45, %47 : f64
                memref.store %48, %arg4[%10, %44] : memref<?x28xf64>
              }
            }
          }
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

