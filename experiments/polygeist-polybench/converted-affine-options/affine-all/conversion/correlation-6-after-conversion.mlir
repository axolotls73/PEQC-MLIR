module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c7 = arith.constant 7 : index
    %c24 = arith.constant 24 : index
    %c6 = arith.constant 6 : index
    %c128 = arith.constant 128 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c27 step %c1 {
          %26 = arith.addi %25, %arg9 : index
          %27 = arith.muli %arg9, %c-1 : index
          %28 = arith.muli %arg7, %c-32 : index
          %29 = arith.addi %27, %28 : index
          %30 = arith.addi %29, %c27 : index
          %31 = arith.cmpi slt, %30, %c0 : index
          %32 = arith.subi %c-1, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4 : index
          %35 = arith.subi %c-1, %34 : index
          %36 = arith.select %31, %35, %34 : index
          scf.for %arg10 = %c0 to %36 step %c1 {
            %53 = arith.muli %arg10, %c4 : index
            %54 = arith.addi %26, %53 : index
            %55 = arith.addi %54, %c1 : index
            memref.store %cst_0, %arg4[%26, %55] : memref<?x28xf64>
            %56 = arith.addi %55, %c1 : index
            memref.store %cst_0, %arg4[%26, %56] : memref<?x28xf64>
            %57 = arith.addi %55, %c2 : index
            memref.store %cst_0, %arg4[%26, %57] : memref<?x28xf64>
            %58 = arith.addi %55, %c3 : index
            memref.store %cst_0, %arg4[%26, %58] : memref<?x28xf64>
          }
          %37 = arith.muli %arg9, %c-1 : index
          %38 = arith.muli %arg7, %c-32 : index
          %39 = arith.addi %37, %38 : index
          %40 = arith.muli %arg9, %c-1 : index
          %41 = arith.muli %arg7, %c-32 : index
          %42 = arith.addi %40, %41 : index
          %43 = arith.addi %42, %c27 : index
          %44 = arith.cmpi slt, %43, %c0 : index
          %45 = arith.subi %c-1, %43 : index
          %46 = arith.select %44, %45, %43 : index
          %47 = arith.divsi %46, %c4 : index
          %48 = arith.subi %c-1, %47 : index
          %49 = arith.select %44, %48, %47 : index
          %50 = arith.muli %49, %c-4 : index
          %51 = arith.addi %39, %50 : index
          %52 = arith.addi %51, %c27 : index
          scf.for %arg10 = %c0 to %52 step %c1 {
            %53 = arith.addi %26, %arg10 : index
            %54 = arith.muli %26, %c-1 : index
            %55 = arith.addi %54, %c27 : index
            %56 = arith.cmpi slt, %55, %c0 : index
            %57 = arith.subi %c-1, %55 : index
            %58 = arith.select %56, %57, %55 : index
            %59 = arith.divsi %58, %c4 : index
            %60 = arith.subi %c-1, %59 : index
            %61 = arith.select %56, %60, %59 : index
            %62 = arith.muli %61, %c4 : index
            %63 = arith.addi %53, %62 : index
            %64 = arith.addi %63, %c1 : index
            memref.store %cst_0, %arg4[%26, %64] : memref<?x28xf64>
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %0 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c128 : index
        scf.for %arg9 = %c0 to %c6 step %c1 {
          %26 = arith.muli %arg9, %c4 : index
          %27 = arith.addi %25, %26 : index
          memref.store %cst_1, %arg4[%27, %27] : memref<?x28xf64>
          %28 = arith.addi %27, %c1 : index
          memref.store %cst_1, %arg4[%28, %28] : memref<?x28xf64>
          %29 = arith.addi %27, %c2 : index
          memref.store %cst_1, %arg4[%29, %29] : memref<?x28xf64>
          %30 = arith.addi %27, %c3 : index
          memref.store %cst_1, %arg4[%30, %30] : memref<?x28xf64>
        }
        async.yield
      }
      %23 = async.add_to_group %token, %2 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %2
    %4 = async.create_group %c1 : !async.group
    %5 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        %26 = arith.addi %25, %c24 : index
        scf.for %arg9 = %c0 to %c3 step %c1 {
          %27 = arith.addi %26, %arg9 : index
          memref.store %cst_1, %arg4[%27, %27] : memref<?x28xf64>
        }
        async.yield
      }
      %23 = async.add_to_group %token, %4 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %4
    %6 = math.sqrt %arg2 : f64
    memref.store %6, %alloca[%c0] : memref<1xf64>
    %7 = async.create_group %c1 : !async.group
    %8 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c128 : index
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %26 = arith.muli %arg9, %c4 : index
          %27 = arith.addi %25, %26 : index
          memref.store %cst_0, %arg6[%27] : memref<?xf64>
          memref.store %cst_0, %arg5[%27] : memref<?xf64>
          %28 = arith.addi %27, %c1 : index
          memref.store %cst_0, %arg6[%28] : memref<?xf64>
          memref.store %cst_0, %arg5[%28] : memref<?xf64>
          %29 = arith.addi %27, %c2 : index
          memref.store %cst_0, %arg6[%29] : memref<?xf64>
          memref.store %cst_0, %arg5[%29] : memref<?xf64>
          %30 = arith.addi %27, %c3 : index
          memref.store %cst_0, %arg6[%30] : memref<?xf64>
          memref.store %cst_0, %arg5[%30] : memref<?xf64>
        }
        async.yield
      }
      %23 = async.add_to_group %token, %7 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %7
    %9 = async.create_group %c1 : !async.group
    %10 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %26 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %27 = arith.addi %25, %arg10 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %28 = arith.muli %arg11, %c4 : index
              %29 = arith.addi %26, %28 : index
              %30 = memref.load %arg5[%29] : memref<?xf64>
              %31 = memref.load %arg3[%27, %29] : memref<?x28xf64>
              %32 = arith.addf %30, %31 : f64
              memref.store %32, %arg5[%29] : memref<?xf64>
              %33 = arith.addi %29, %c1 : index
              %34 = memref.load %arg5[%33] : memref<?xf64>
              %35 = memref.load %arg3[%27, %33] : memref<?x28xf64>
              %36 = arith.addf %34, %35 : f64
              memref.store %36, %arg5[%33] : memref<?xf64>
              %37 = arith.addi %29, %c2 : index
              %38 = memref.load %arg5[%37] : memref<?xf64>
              %39 = memref.load %arg3[%27, %37] : memref<?x28xf64>
              %40 = arith.addf %38, %39 : f64
              memref.store %40, %arg5[%37] : memref<?xf64>
              %41 = arith.addi %29, %c3 : index
              %42 = memref.load %arg5[%41] : memref<?xf64>
              %43 = memref.load %arg3[%27, %41] : memref<?x28xf64>
              %44 = arith.addf %42, %43 : f64
              memref.store %44, %arg5[%41] : memref<?xf64>
            }
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %9 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %9
    %11 = async.create_group %c1 : !async.group
    %12 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c128 : index
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %26 = arith.muli %arg9, %c4 : index
          %27 = arith.addi %25, %26 : index
          %28 = memref.load %arg5[%27] : memref<?xf64>
          %29 = arith.divf %28, %arg2 : f64
          memref.store %29, %arg5[%27] : memref<?xf64>
          %30 = arith.addi %27, %c1 : index
          %31 = memref.load %arg5[%30] : memref<?xf64>
          %32 = arith.divf %31, %arg2 : f64
          memref.store %32, %arg5[%30] : memref<?xf64>
          %33 = arith.addi %27, %c2 : index
          %34 = memref.load %arg5[%33] : memref<?xf64>
          %35 = arith.divf %34, %arg2 : f64
          memref.store %35, %arg5[%33] : memref<?xf64>
          %36 = arith.addi %27, %c3 : index
          %37 = memref.load %arg5[%36] : memref<?xf64>
          %38 = arith.divf %37, %arg2 : f64
          memref.store %38, %arg5[%36] : memref<?xf64>
        }
        async.yield
      }
      %23 = async.add_to_group %token, %11 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %11
    %13 = async.create_group %c1 : !async.group
    %14 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %26 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %27 = arith.addi %25, %arg10 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %28 = arith.muli %arg11, %c4 : index
              %29 = arith.addi %26, %28 : index
              %30 = memref.load %arg6[%29] : memref<?xf64>
              %31 = memref.load %arg3[%27, %29] : memref<?x28xf64>
              %32 = memref.load %arg5[%29] : memref<?xf64>
              %33 = arith.subf %31, %32 : f64
              %34 = arith.mulf %33, %33 : f64
              %35 = arith.addf %30, %34 : f64
              memref.store %35, %arg6[%29] : memref<?xf64>
              %36 = memref.load %arg3[%27, %29] : memref<?x28xf64>
              %37 = memref.load %arg5[%29] : memref<?xf64>
              %38 = arith.subf %36, %37 : f64
              memref.store %38, %arg3[%27, %29] : memref<?x28xf64>
              %39 = arith.addi %29, %c1 : index
              %40 = memref.load %arg6[%39] : memref<?xf64>
              %41 = memref.load %arg3[%27, %39] : memref<?x28xf64>
              %42 = memref.load %arg5[%39] : memref<?xf64>
              %43 = arith.subf %41, %42 : f64
              %44 = arith.mulf %43, %43 : f64
              %45 = arith.addf %40, %44 : f64
              memref.store %45, %arg6[%39] : memref<?xf64>
              %46 = memref.load %arg3[%27, %39] : memref<?x28xf64>
              %47 = memref.load %arg5[%39] : memref<?xf64>
              %48 = arith.subf %46, %47 : f64
              memref.store %48, %arg3[%27, %39] : memref<?x28xf64>
              %49 = arith.addi %29, %c2 : index
              %50 = memref.load %arg6[%49] : memref<?xf64>
              %51 = memref.load %arg3[%27, %49] : memref<?x28xf64>
              %52 = memref.load %arg5[%49] : memref<?xf64>
              %53 = arith.subf %51, %52 : f64
              %54 = arith.mulf %53, %53 : f64
              %55 = arith.addf %50, %54 : f64
              memref.store %55, %arg6[%49] : memref<?xf64>
              %56 = memref.load %arg3[%27, %49] : memref<?x28xf64>
              %57 = memref.load %arg5[%49] : memref<?xf64>
              %58 = arith.subf %56, %57 : f64
              memref.store %58, %arg3[%27, %49] : memref<?x28xf64>
              %59 = arith.addi %29, %c3 : index
              %60 = memref.load %arg6[%59] : memref<?xf64>
              %61 = memref.load %arg3[%27, %59] : memref<?x28xf64>
              %62 = memref.load %arg5[%59] : memref<?xf64>
              %63 = arith.subf %61, %62 : f64
              %64 = arith.mulf %63, %63 : f64
              %65 = arith.addf %60, %64 : f64
              memref.store %65, %arg6[%59] : memref<?xf64>
              %66 = memref.load %arg3[%27, %59] : memref<?x28xf64>
              %67 = memref.load %arg5[%59] : memref<?xf64>
              %68 = arith.subf %66, %67 : f64
              memref.store %68, %arg3[%27, %59] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %13 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %13
    %15 = async.create_group %c1 : !async.group
    %16 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c128 : index
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %26 = arith.muli %arg9, %c4 : index
          %27 = arith.addi %25, %26 : index
          %28 = memref.load %arg6[%27] : memref<?xf64>
          %29 = arith.divf %28, %arg2 : f64
          %30 = math.sqrt %29 : f64
          %31 = arith.cmpf ole, %30, %cst : f64
          %32 = arith.select %31, %cst_1, %30 : f64
          memref.store %32, %arg6[%27] : memref<?xf64>
          %33 = arith.addi %27, %c1 : index
          %34 = memref.load %arg6[%33] : memref<?xf64>
          %35 = arith.divf %34, %arg2 : f64
          %36 = math.sqrt %35 : f64
          %37 = arith.cmpf ole, %36, %cst : f64
          %38 = arith.select %37, %cst_1, %36 : f64
          memref.store %38, %arg6[%33] : memref<?xf64>
          %39 = arith.addi %27, %c2 : index
          %40 = memref.load %arg6[%39] : memref<?xf64>
          %41 = arith.divf %40, %arg2 : f64
          %42 = math.sqrt %41 : f64
          %43 = arith.cmpf ole, %42, %cst : f64
          %44 = arith.select %43, %cst_1, %42 : f64
          memref.store %44, %arg6[%39] : memref<?xf64>
          %45 = arith.addi %27, %c3 : index
          %46 = memref.load %arg6[%45] : memref<?xf64>
          %47 = arith.divf %46, %arg2 : f64
          %48 = math.sqrt %47 : f64
          %49 = arith.cmpf ole, %48, %cst : f64
          %50 = arith.select %49, %cst_1, %48 : f64
          memref.store %50, %arg6[%45] : memref<?xf64>
        }
        async.yield
      }
      %23 = async.add_to_group %token, %15 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %15
    %17 = async.create_group %c1 : !async.group
    %18 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        %26 = memref.load %alloca[%c0] : memref<1xf64>
        %27 = memref.load %alloca[%c0] : memref<1xf64>
        %28 = memref.load %alloca[%c0] : memref<1xf64>
        %29 = memref.load %alloca[%c0] : memref<1xf64>
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %30 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %31 = arith.addi %25, %arg10 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %32 = arith.muli %arg11, %c4 : index
              %33 = arith.addi %30, %32 : index
              %34 = memref.load %arg3[%31, %33] : memref<?x28xf64>
              %35 = memref.load %arg6[%33] : memref<?xf64>
              %36 = arith.mulf %26, %35 : f64
              %37 = arith.divf %34, %36 : f64
              memref.store %37, %arg3[%31, %33] : memref<?x28xf64>
              %38 = arith.addi %33, %c1 : index
              %39 = memref.load %arg3[%31, %38] : memref<?x28xf64>
              %40 = memref.load %arg6[%38] : memref<?xf64>
              %41 = arith.mulf %27, %40 : f64
              %42 = arith.divf %39, %41 : f64
              memref.store %42, %arg3[%31, %38] : memref<?x28xf64>
              %43 = arith.addi %33, %c2 : index
              %44 = memref.load %arg3[%31, %43] : memref<?x28xf64>
              %45 = memref.load %arg6[%43] : memref<?xf64>
              %46 = arith.mulf %28, %45 : f64
              %47 = arith.divf %44, %46 : f64
              memref.store %47, %arg3[%31, %43] : memref<?x28xf64>
              %48 = arith.addi %33, %c3 : index
              %49 = memref.load %arg3[%31, %48] : memref<?x28xf64>
              %50 = memref.load %arg6[%48] : memref<?xf64>
              %51 = arith.mulf %29, %50 : f64
              %52 = arith.divf %49, %51 : f64
              memref.store %52, %arg3[%31, %48] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %17 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %17
    %19 = async.create_group %c1 : !async.group
    %20 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %26 = arith.muli %arg9, %c32 : index
          scf.for %arg10 = %c0 to %c27 step %c1 {
            %27 = arith.addi %25, %arg10 : index
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %28 = arith.addi %26, %arg11 : index
              %29 = memref.load %arg3[%28, %27] : memref<?x28xf64>
              %30 = memref.load %arg3[%28, %27] : memref<?x28xf64>
              %31 = memref.load %arg3[%28, %27] : memref<?x28xf64>
              %32 = memref.load %arg3[%28, %27] : memref<?x28xf64>
              %33 = arith.muli %arg10, %c-1 : index
              %34 = arith.muli %arg7, %c-32 : index
              %35 = arith.addi %33, %34 : index
              %36 = arith.addi %35, %c27 : index
              %37 = arith.cmpi slt, %36, %c0 : index
              %38 = arith.subi %c-1, %36 : index
              %39 = arith.select %37, %38, %36 : index
              %40 = arith.divsi %39, %c4 : index
              %41 = arith.subi %c-1, %40 : index
              %42 = arith.select %37, %41, %40 : index
              scf.for %arg12 = %c0 to %42 step %c1 {
                %60 = arith.muli %arg12, %c4 : index
                %61 = arith.addi %27, %60 : index
                %62 = arith.addi %61, %c1 : index
                %63 = memref.load %arg4[%27, %62] : memref<?x28xf64>
                %64 = memref.load %arg3[%28, %62] : memref<?x28xf64>
                %65 = arith.mulf %29, %64 : f64
                %66 = arith.addf %63, %65 : f64
                memref.store %66, %arg4[%27, %62] : memref<?x28xf64>
                %67 = arith.addi %62, %c1 : index
                %68 = memref.load %arg4[%27, %67] : memref<?x28xf64>
                %69 = memref.load %arg3[%28, %67] : memref<?x28xf64>
                %70 = arith.mulf %30, %69 : f64
                %71 = arith.addf %68, %70 : f64
                memref.store %71, %arg4[%27, %67] : memref<?x28xf64>
                %72 = arith.addi %62, %c2 : index
                %73 = memref.load %arg4[%27, %72] : memref<?x28xf64>
                %74 = memref.load %arg3[%28, %72] : memref<?x28xf64>
                %75 = arith.mulf %31, %74 : f64
                %76 = arith.addf %73, %75 : f64
                memref.store %76, %arg4[%27, %72] : memref<?x28xf64>
                %77 = arith.addi %62, %c3 : index
                %78 = memref.load %arg4[%27, %77] : memref<?x28xf64>
                %79 = memref.load %arg3[%28, %77] : memref<?x28xf64>
                %80 = arith.mulf %32, %79 : f64
                %81 = arith.addf %78, %80 : f64
                memref.store %81, %arg4[%27, %77] : memref<?x28xf64>
              }
              %43 = memref.load %arg3[%28, %27] : memref<?x28xf64>
              %44 = arith.muli %arg10, %c-1 : index
              %45 = arith.muli %arg7, %c-32 : index
              %46 = arith.addi %44, %45 : index
              %47 = arith.muli %arg10, %c-1 : index
              %48 = arith.muli %arg7, %c-32 : index
              %49 = arith.addi %47, %48 : index
              %50 = arith.addi %49, %c27 : index
              %51 = arith.cmpi slt, %50, %c0 : index
              %52 = arith.subi %c-1, %50 : index
              %53 = arith.select %51, %52, %50 : index
              %54 = arith.divsi %53, %c4 : index
              %55 = arith.subi %c-1, %54 : index
              %56 = arith.select %51, %55, %54 : index
              %57 = arith.muli %56, %c-4 : index
              %58 = arith.addi %46, %57 : index
              %59 = arith.addi %58, %c27 : index
              scf.for %arg12 = %c0 to %59 step %c1 {
                %60 = arith.addi %27, %arg12 : index
                %61 = arith.muli %27, %c-1 : index
                %62 = arith.addi %61, %c27 : index
                %63 = arith.cmpi slt, %62, %c0 : index
                %64 = arith.subi %c-1, %62 : index
                %65 = arith.select %63, %64, %62 : index
                %66 = arith.divsi %65, %c4 : index
                %67 = arith.subi %c-1, %66 : index
                %68 = arith.select %63, %67, %66 : index
                %69 = arith.muli %68, %c4 : index
                %70 = arith.addi %60, %69 : index
                %71 = arith.addi %70, %c1 : index
                %72 = memref.load %arg4[%27, %71] : memref<?x28xf64>
                %73 = memref.load %arg3[%28, %71] : memref<?x28xf64>
                %74 = arith.mulf %43, %73 : f64
                %75 = arith.addf %72, %74 : f64
                memref.store %75, %arg4[%27, %71] : memref<?x28xf64>
              }
            }
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %19 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %19
    %21 = async.create_group %c1 : !async.group
    %22 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %25 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c27 step %c1 {
          %26 = arith.addi %25, %arg9 : index
          %27 = arith.muli %arg9, %c-1 : index
          %28 = arith.muli %arg7, %c-32 : index
          %29 = arith.addi %27, %28 : index
          %30 = arith.addi %29, %c27 : index
          %31 = arith.cmpi slt, %30, %c0 : index
          %32 = arith.subi %c-1, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4 : index
          %35 = arith.subi %c-1, %34 : index
          %36 = arith.select %31, %35, %34 : index
          scf.for %arg10 = %c0 to %36 step %c1 {
            %53 = arith.muli %arg10, %c4 : index
            %54 = arith.addi %26, %53 : index
            %55 = arith.addi %54, %c1 : index
            %56 = memref.load %arg4[%26, %55] : memref<?x28xf64>
            memref.store %56, %arg4[%55, %26] : memref<?x28xf64>
            %57 = arith.addi %55, %c1 : index
            %58 = memref.load %arg4[%26, %57] : memref<?x28xf64>
            memref.store %58, %arg4[%57, %26] : memref<?x28xf64>
            %59 = arith.addi %55, %c2 : index
            %60 = memref.load %arg4[%26, %59] : memref<?x28xf64>
            memref.store %60, %arg4[%59, %26] : memref<?x28xf64>
            %61 = arith.addi %55, %c3 : index
            %62 = memref.load %arg4[%26, %61] : memref<?x28xf64>
            memref.store %62, %arg4[%61, %26] : memref<?x28xf64>
          }
          %37 = arith.muli %arg9, %c-1 : index
          %38 = arith.muli %arg7, %c-32 : index
          %39 = arith.addi %37, %38 : index
          %40 = arith.muli %arg9, %c-1 : index
          %41 = arith.muli %arg7, %c-32 : index
          %42 = arith.addi %40, %41 : index
          %43 = arith.addi %42, %c27 : index
          %44 = arith.cmpi slt, %43, %c0 : index
          %45 = arith.subi %c-1, %43 : index
          %46 = arith.select %44, %45, %43 : index
          %47 = arith.divsi %46, %c4 : index
          %48 = arith.subi %c-1, %47 : index
          %49 = arith.select %44, %48, %47 : index
          %50 = arith.muli %49, %c-4 : index
          %51 = arith.addi %39, %50 : index
          %52 = arith.addi %51, %c27 : index
          scf.for %arg10 = %c0 to %52 step %c1 {
            %53 = arith.addi %26, %arg10 : index
            %54 = arith.muli %26, %c-1 : index
            %55 = arith.addi %54, %c27 : index
            %56 = arith.cmpi slt, %55, %c0 : index
            %57 = arith.subi %c-1, %55 : index
            %58 = arith.select %56, %57, %55 : index
            %59 = arith.divsi %58, %c4 : index
            %60 = arith.subi %c-1, %59 : index
            %61 = arith.select %56, %60, %59 : index
            %62 = arith.muli %61, %c4 : index
            %63 = arith.addi %53, %62 : index
            %64 = arith.addi %63, %c1 : index
            %65 = memref.load %arg4[%26, %64] : memref<?x28xf64>
            memref.store %65, %arg4[%64, %26] : memref<?x28xf64>
          }
        }
        async.yield
      }
      %23 = async.add_to_group %token, %21 : !async.token
      %24 = arith.addi %arg8, %c1 : index
      scf.yield %24 : index
    }
    async.await_all %21
    return
  }
}

