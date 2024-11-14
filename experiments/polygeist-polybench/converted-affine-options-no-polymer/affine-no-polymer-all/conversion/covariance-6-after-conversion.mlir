module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c7 = arith.constant 7 : index
    %c128 = arith.constant 128 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %9 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c28 step %c1 {
          %10 = arith.addi %9, %arg8 : index
          memref.store %cst_0, %arg5[%10] : memref<?xf64>
          scf.for %arg9 = %c0 to %c8 step %c1 {
            %13 = arith.muli %arg9, %c4 : index
            %14 = memref.load %arg3[%13, %10] : memref<?x28xf64>
            %15 = memref.load %arg5[%10] : memref<?xf64>
            %16 = arith.addf %15, %14 : f64
            memref.store %16, %arg5[%10] : memref<?xf64>
            %17 = arith.addi %13, %c1 : index
            %18 = memref.load %arg3[%17, %10] : memref<?x28xf64>
            %19 = memref.load %arg5[%10] : memref<?xf64>
            %20 = arith.addf %19, %18 : f64
            memref.store %20, %arg5[%10] : memref<?xf64>
            %21 = arith.addi %13, %c2 : index
            %22 = memref.load %arg3[%21, %10] : memref<?x28xf64>
            %23 = memref.load %arg5[%10] : memref<?xf64>
            %24 = arith.addf %23, %22 : f64
            memref.store %24, %arg5[%10] : memref<?xf64>
            %25 = arith.addi %13, %c3 : index
            %26 = memref.load %arg3[%25, %10] : memref<?x28xf64>
            %27 = memref.load %arg5[%10] : memref<?xf64>
            %28 = arith.addf %27, %26 : f64
            memref.store %28, %arg5[%10] : memref<?xf64>
          }
          %11 = memref.load %arg5[%10] : memref<?xf64>
          %12 = arith.divf %11, %arg2 : f64
          memref.store %12, %arg5[%10] : memref<?xf64>
        }
        async.yield
      }
      %7 = async.add_to_group %token, %0 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %9 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %10 = arith.muli %arg8, %c128 : index
          scf.for %arg9 = %c0 to %c32 step %c1 {
            %11 = arith.addi %9, %arg9 : index
            scf.for %arg10 = %c0 to %c7 step %c1 {
              %12 = arith.muli %arg10, %c4 : index
              %13 = arith.addi %10, %12 : index
              %14 = memref.load %arg5[%13] : memref<?xf64>
              %15 = memref.load %arg3[%11, %13] : memref<?x28xf64>
              %16 = arith.subf %15, %14 : f64
              memref.store %16, %arg3[%11, %13] : memref<?x28xf64>
              %17 = arith.addi %13, %c1 : index
              %18 = memref.load %arg5[%17] : memref<?xf64>
              %19 = memref.load %arg3[%11, %17] : memref<?x28xf64>
              %20 = arith.subf %19, %18 : f64
              memref.store %20, %arg3[%11, %17] : memref<?x28xf64>
              %21 = arith.addi %13, %c2 : index
              %22 = memref.load %arg5[%21] : memref<?xf64>
              %23 = memref.load %arg3[%11, %21] : memref<?x28xf64>
              %24 = arith.subf %23, %22 : f64
              memref.store %24, %arg3[%11, %21] : memref<?x28xf64>
              %25 = arith.addi %13, %c3 : index
              %26 = memref.load %arg5[%25] : memref<?xf64>
              %27 = memref.load %arg3[%11, %25] : memref<?x28xf64>
              %28 = arith.subf %27, %26 : f64
              memref.store %28, %arg3[%11, %25] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %7 = async.add_to_group %token, %2 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %2
    %4 = arith.subf %arg2, %cst : f64
    %5 = async.create_group %c28 : !async.group
    %6 = scf.for %arg6 = %c0 to %c28 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %9 = arith.muli %arg6, %c-1 : index
        %10 = arith.addi %9, %c28 : index
        scf.for %arg8 = %c0 to %10 step %c1 {
          %11 = arith.addi %arg6, %arg8 : index
          memref.store %cst_0, %arg4[%arg6, %11] : memref<?x28xf64>
          scf.for %arg9 = %c0 to %c8 step %c1 {
            %14 = arith.muli %arg9, %c4 : index
            %15 = memref.load %arg3[%14, %arg6] : memref<?x28xf64>
            %16 = memref.load %arg3[%14, %11] : memref<?x28xf64>
            %17 = arith.mulf %15, %16 : f64
            %18 = memref.load %arg4[%arg6, %11] : memref<?x28xf64>
            %19 = arith.addf %18, %17 : f64
            memref.store %19, %arg4[%arg6, %11] : memref<?x28xf64>
            %20 = arith.addi %14, %c1 : index
            %21 = memref.load %arg3[%20, %arg6] : memref<?x28xf64>
            %22 = memref.load %arg3[%20, %11] : memref<?x28xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg4[%arg6, %11] : memref<?x28xf64>
            %25 = arith.addf %24, %23 : f64
            memref.store %25, %arg4[%arg6, %11] : memref<?x28xf64>
            %26 = arith.addi %14, %c2 : index
            %27 = memref.load %arg3[%26, %arg6] : memref<?x28xf64>
            %28 = memref.load %arg3[%26, %11] : memref<?x28xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg4[%arg6, %11] : memref<?x28xf64>
            %31 = arith.addf %30, %29 : f64
            memref.store %31, %arg4[%arg6, %11] : memref<?x28xf64>
            %32 = arith.addi %14, %c3 : index
            %33 = memref.load %arg3[%32, %arg6] : memref<?x28xf64>
            %34 = memref.load %arg3[%32, %11] : memref<?x28xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg4[%arg6, %11] : memref<?x28xf64>
            %37 = arith.addf %36, %35 : f64
            memref.store %37, %arg4[%arg6, %11] : memref<?x28xf64>
          }
          %12 = memref.load %arg4[%arg6, %11] : memref<?x28xf64>
          %13 = arith.divf %12, %4 : f64
          memref.store %13, %arg4[%arg6, %11] : memref<?x28xf64>
          memref.store %13, %arg4[%11, %arg6] : memref<?x28xf64>
        }
        async.yield
      }
      %7 = async.add_to_group %token, %5 : !async.token
      %8 = arith.addi %arg7, %c1 : index
      scf.yield %8 : index
    }
    async.await_all %5
    return
  }
}

