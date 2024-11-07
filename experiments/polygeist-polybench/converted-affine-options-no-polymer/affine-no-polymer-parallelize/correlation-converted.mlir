module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c27 = arith.constant 27 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c28 : !async.group
    %1 = scf.for %arg7 = %c0 to %c28 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %13 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %14 = memref.load %arg5[%arg7] : memref<?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %arg5[%arg7] : memref<?xf64>
        }
        %11 = memref.load %arg5[%arg7] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%arg7] : memref<?xf64>
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
        memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %16 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %17 = memref.load %arg5[%arg7] : memref<?xf64>
          %18 = arith.subf %16, %17 : f64
          %19 = arith.mulf %18, %18 : f64
          %20 = memref.load %arg6[%arg7] : memref<?xf64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %arg6[%arg7] : memref<?xf64>
        }
        %11 = memref.load %arg6[%arg7] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        %13 = math.sqrt %12 : f64
        %14 = arith.cmpf ole, %13, %cst_1 : f64
        %15 = arith.select %14, %cst, %13 : f64
        memref.store %15, %arg6[%arg7] : memref<?xf64>
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
        scf.for %arg9 = %c0 to %c28 step %c1 {
          %11 = memref.load %arg5[%arg9] : memref<?xf64>
          %12 = memref.load %arg3[%arg7, %arg9] : memref<?x28xf64>
          %13 = arith.subf %12, %11 : f64
          memref.store %13, %arg3[%arg7, %arg9] : memref<?x28xf64>
          %14 = memref.load %arg6[%arg9] : memref<?xf64>
          %15 = arith.mulf %4, %14 : f64
          %16 = arith.divf %13, %15 : f64
          memref.store %16, %arg3[%arg7, %arg9] : memref<?x28xf64>
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
        memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
        %11 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %11 to %c28 step %c1 {
          memref.store %cst_0, %arg4[%arg7, %arg9] : memref<?x28xf64>
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %13 = memref.load %arg3[%arg10, %arg7] : memref<?x28xf64>
            %14 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
            %17 = arith.addf %16, %15 : f64
            memref.store %17, %arg4[%arg7, %arg9] : memref<?x28xf64>
          }
          %12 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          memref.store %12, %arg4[%arg9, %arg7] : memref<?x28xf64>
        }
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

