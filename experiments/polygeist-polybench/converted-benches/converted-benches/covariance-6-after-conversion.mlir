module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-26 = arith.constant -26 : index
    %c26 = arith.constant 26 : index
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
    %c31 = arith.constant 31 : index
    %c13 = arith.constant 13 : index
    %c-13 = arith.constant -13 : index
    %c16 = arith.constant 16 : index
    %c23 = arith.constant 23 : index
    %c32 = arith.constant 32 : index
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
        %13 = async.create_group %c42 : !async.group
        %14 = scf.for %arg8 = %arg6 to %c28 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_2 = async.execute {
            memref.store %cst_0, %arg4[%arg6, %arg8] : memref<?x28xf64>
            async.yield
          }
          %15 = async.add_to_group %token_2, %13 : !async.token
          %16 = arith.addi %arg9, %c1 : index
          scf.yield %16 : index
        }
        async.await_all %13
        async.yield
      }
      %11 = async.add_to_group %token, %0 : !async.token
      %12 = arith.addi %arg7, %c1 : index
      scf.yield %12 : index
    }
    async.await_all %0
    %2 = arith.subf %arg2, %cst : f64
    memref.store %2, %alloca_1[%c0] : memref<1xf64>
    %3 = async.create_group %c28 : !async.group
    %4 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
        async.yield
      }
      %11 = async.add_to_group %token, %3 : !async.token
      %12 = arith.addi %arg7, %c1 : index
      scf.yield %12 : index
    }
    async.await_all %3
    scf.for %arg6 = %c0 to %c32 step %c1 {
      %11 = async.create_group %c28 : !async.group
      %12 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          %15 = memref.load %arg5[%arg7] : memref<?xf64>
          %16 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
          %17 = arith.addf %15, %16 : f64
          memref.store %17, %arg5[%arg7] : memref<?xf64>
          async.yield
        }
        %13 = async.add_to_group %token, %11 : !async.token
        %14 = arith.addi %arg8, %c1 : index
        scf.yield %14 : index
      }
      async.await_all %11
    }
    %5 = async.create_group %c28 : !async.group
    %6 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %13 = memref.load %arg5[%arg6] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        memref.store %14, %arg5[%arg6] : memref<?xf64>
        async.yield
      }
      %11 = async.add_to_group %token, %5 : !async.token
      %12 = arith.addi %arg7, %c1 : index
      scf.yield %12 : index
    }
    async.await_all %5
    %7 = async.create_group %c32 : !async.group
    %8 = scf.for %arg6 = %c0 to %c32 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %13 = async.create_group %c28 : !async.group
        %14 = scf.for %arg8 = %c0 to %c28 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token_2 = async.execute {
            %17 = memref.load %arg3[%arg6, %arg8] : memref<?x28xf64>
            %18 = memref.load %arg5[%arg8] : memref<?xf64>
            %19 = arith.subf %17, %18 : f64
            memref.store %19, %arg3[%arg6, %arg8] : memref<?x28xf64>
            async.yield
          }
          %15 = async.add_to_group %token_2, %13 : !async.token
          %16 = arith.addi %arg9, %c1 : index
          scf.yield %16 : index
        }
        async.await_all %13
        async.yield
      }
      %11 = async.add_to_group %token, %7 : !async.token
      %12 = arith.addi %arg7, %c1 : index
      scf.yield %12 : index
    }
    async.await_all %7
    %9 = async.create_group %c28 : !async.group
    %10 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %13 = async.create_group %c42 : !async.group
          %14 = scf.for %arg9 = %arg6 to %c28 step %c1 iter_args(%arg10 = %c0) -> (index) {
            %token_2 = async.execute {
              %17 = memref.load %arg4[%arg6, %arg9] : memref<?x28xf64>
              %18 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
              %19 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              memref.store %21, %arg4[%arg6, %arg9] : memref<?x28xf64>
              async.yield
            }
            %15 = async.add_to_group %token_2, %13 : !async.token
            %16 = arith.addi %arg10, %c1 : index
            scf.yield %16 : index
          }
          async.await_all %13
        }
        async.yield
      }
      %11 = async.add_to_group %token, %9 : !async.token
      %12 = arith.addi %arg7, %c1 : index
      scf.yield %12 : index
    }
    async.await_all %9
    scf.for %arg6 = %c0 to %c23 step %c1 {
      %11 = arith.muli %arg6, %c16 : index
      %12 = arith.addi %11, %c-13 : index
      %13 = arith.cmpi sle, %12, %c0 : index
      %14 = arith.subi %c0, %12 : index
      %15 = arith.subi %12, %c1 : index
      %16 = arith.select %13, %14, %15 : index
      %17 = arith.divsi %16, %c13 : index
      %18 = arith.subi %c0, %17 : index
      %19 = arith.addi %17, %c1 : index
      %20 = arith.select %13, %18, %19 : index
      %21 = arith.maxsi %20, %c0 : index
      %22 = arith.muli %arg6, %c32 : index
      %23 = arith.addi %22, %c31 : index
      %24 = arith.cmpi slt, %23, %c0 : index
      %25 = arith.subi %c-1, %23 : index
      %26 = arith.select %24, %25, %23 : index
      %27 = arith.divsi %26, %c27 : index
      %28 = arith.subi %c-1, %27 : index
      %29 = arith.select %24, %28, %27 : index
      %30 = arith.addi %29, %c1 : index
      scf.for %arg7 = %21 to %30 step %c1 {
        %31 = arith.muli %arg6, %c32 : index
        %32 = arith.muli %arg7, %c27 : index
        %33 = arith.maxsi %31, %32 : index
        %34 = arith.muli %arg6, %c32 : index
        %35 = arith.addi %34, %c32 : index
        %36 = arith.muli %arg7, %c26 : index
        %37 = arith.addi %36, %c28 : index
        %38 = arith.minsi %35, %37 : index
        scf.for %arg8 = %33 to %38 step %c1 {
          %39 = arith.muli %arg8, %c-26 : index
          %40 = arith.addi %39, %arg7 : index
          %41 = memref.load %arg4[%arg7, %40] : memref<?x28xf64>
          %42 = memref.load %alloca_1[%c0] : memref<1xf64>
          %43 = arith.divf %41, %42 : f64
          memref.store %43, %alloca[%c0] : memref<1xf64>
          %44 = arith.muli %arg8, %c-26 : index
          %45 = arith.addi %44, %arg7 : index
          memref.store %43, %arg4[%arg7, %45] : memref<?x28xf64>
          %46 = memref.load %alloca[%c0] : memref<1xf64>
          %47 = arith.muli %arg8, %c-26 : index
          %48 = arith.addi %47, %arg7 : index
          memref.store %46, %arg4[%48, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

