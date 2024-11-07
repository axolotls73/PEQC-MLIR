module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
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
        %19 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %19 to %c28 step %c1 {
          memref.store %cst_0, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
        async.yield
      }
      %17 = async.add_to_group %token, %0 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %0
    %2 = async.create_group %c27 : !async.group
    %3 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
        async.yield
      }
      %17 = async.add_to_group %token, %2 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %2
    %4 = math.sqrt %arg2 : f64
    memref.store %4, %alloca[%c0] : memref<1xf64>
    %5 = async.create_group %c28 : !async.group
    %6 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
        memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
        async.yield
      }
      %17 = async.add_to_group %token, %5 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %5
    scf.for %arg7 = %c0 to %c32 step %c1 {
      %17 = async.create_group %c28 : !async.group
      %18 = scf.for %arg8 = %c0 to %c28 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %21 = memref.load %arg5[%arg8] : memref<?xf64>
          %22 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %23 = arith.addf %21, %22 : f64
          memref.store %23, %arg5[%arg8] : memref<?xf64>
          async.yield
        }
        %19 = async.add_to_group %token, %17 : !async.token
        %20 = arith.addi %arg9, %c1 : index
        scf.yield %20 : index
      }
      async.await_all %17
    }
    %7 = async.create_group %c28 : !async.group
    %8 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %19 = memref.load %arg5[%arg7] : memref<?xf64>
        %20 = arith.divf %19, %arg2 : f64
        memref.store %20, %arg5[%arg7] : memref<?xf64>
        async.yield
      }
      %17 = async.add_to_group %token, %7 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %7
    scf.for %arg7 = %c0 to %c32 step %c1 {
      %17 = async.create_group %c28 : !async.group
      %18 = scf.for %arg8 = %c0 to %c28 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %21 = memref.load %arg6[%arg8] : memref<?xf64>
          %22 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %23 = memref.load %arg5[%arg8] : memref<?xf64>
          %24 = arith.subf %22, %23 : f64
          %25 = arith.mulf %24, %24 : f64
          %26 = arith.addf %21, %25 : f64
          memref.store %26, %arg6[%arg8] : memref<?xf64>
          %27 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %28 = memref.load %arg5[%arg8] : memref<?xf64>
          %29 = arith.subf %27, %28 : f64
          memref.store %29, %arg3[%arg7, %arg8] : memref<?x28xf64>
          async.yield
        }
        %19 = async.add_to_group %token, %17 : !async.token
        %20 = arith.addi %arg9, %c1 : index
        scf.yield %20 : index
      }
      async.await_all %17
    }
    %9 = async.create_group %c28 : !async.group
    %10 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %19 = memref.load %arg6[%arg7] : memref<?xf64>
        %20 = arith.divf %19, %arg2 : f64
        %21 = math.sqrt %20 : f64
        %22 = arith.cmpf ole, %21, %cst : f64
        %23 = arith.select %22, %cst_1, %21 : f64
        memref.store %23, %arg6[%arg7] : memref<?xf64>
        async.yield
      }
      %17 = async.add_to_group %token, %9 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %9
    %11 = async.create_group %c32 : !async.group
    %12 = scf.for %arg7 = %c0 to %c32 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c28 step %c1 {
          %19 = memref.load %arg3[%arg7, %arg9] : memref<?x28xf64>
          %20 = memref.load %alloca[%c0] : memref<1xf64>
          %21 = memref.load %arg6[%arg9] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.divf %19, %22 : f64
          memref.store %23, %arg3[%arg7, %arg9] : memref<?x28xf64>
        }
        async.yield
      }
      %17 = async.add_to_group %token, %11 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %11
    %13 = async.create_group %c27 : !async.group
    %14 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %19 = arith.addi %arg7, %c1 : index
          scf.for %arg10 = %19 to %c28 step %c1 {
            %20 = memref.load %arg4[%arg7, %arg10] : memref<?x28xf64>
            %21 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
            %22 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = arith.addf %20, %23 : f64
            memref.store %24, %arg4[%arg7, %arg10] : memref<?x28xf64>
          }
        }
        async.yield
      }
      %17 = async.add_to_group %token, %13 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %13
    %15 = async.create_group %c27 : !async.group
    %16 = scf.for %arg7 = %c0 to %c27 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %19 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %19 to %c28 step %c1 {
          %20 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          memref.store %20, %arg4[%arg9, %arg7] : memref<?x28xf64>
        }
        async.yield
      }
      %17 = async.add_to_group %token, %15 : !async.token
      %18 = arith.addi %arg8, %c1 : index
      scf.yield %18 : index
    }
    async.await_all %15
    return
  }
}

