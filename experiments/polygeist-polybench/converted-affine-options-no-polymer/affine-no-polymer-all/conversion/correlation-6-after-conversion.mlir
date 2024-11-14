module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c27 = arith.constant 27 : index
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
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c28 step %c1 {
          %12 = arith.addi %11, %arg9 : index
          memref.store %cst_0, %arg5[%12] : memref<?xf64>
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %15 = arith.muli %arg10, %c4 : index
            %16 = memref.load %arg3[%15, %12] : memref<?x28xf64>
            %17 = memref.load %arg5[%12] : memref<?xf64>
            %18 = arith.addf %17, %16 : f64
            memref.store %18, %arg5[%12] : memref<?xf64>
            %19 = arith.addi %15, %c1 : index
            %20 = memref.load %arg3[%19, %12] : memref<?x28xf64>
            %21 = memref.load %arg5[%12] : memref<?xf64>
            %22 = arith.addf %21, %20 : f64
            memref.store %22, %arg5[%12] : memref<?xf64>
            %23 = arith.addi %15, %c2 : index
            %24 = memref.load %arg3[%23, %12] : memref<?x28xf64>
            %25 = memref.load %arg5[%12] : memref<?xf64>
            %26 = arith.addf %25, %24 : f64
            memref.store %26, %arg5[%12] : memref<?xf64>
            %27 = arith.addi %15, %c3 : index
            %28 = memref.load %arg3[%27, %12] : memref<?x28xf64>
            %29 = memref.load %arg5[%12] : memref<?xf64>
            %30 = arith.addf %29, %28 : f64
            memref.store %30, %arg5[%12] : memref<?xf64>
          }
          %13 = memref.load %arg5[%12] : memref<?xf64>
          %14 = arith.divf %13, %arg2 : f64
          memref.store %14, %arg5[%12] : memref<?xf64>
        }
        async.yield
      }
      %9 = async.add_to_group %token, %0 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c28 step %c1 {
          %12 = arith.addi %11, %arg9 : index
          memref.store %cst_0, %arg6[%12] : memref<?xf64>
          %13 = memref.load %arg5[%12] : memref<?xf64>
          %14 = memref.load %arg5[%12] : memref<?xf64>
          %15 = memref.load %arg5[%12] : memref<?xf64>
          %16 = memref.load %arg5[%12] : memref<?xf64>
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %22 = arith.muli %arg10, %c4 : index
            %23 = memref.load %arg3[%22, %12] : memref<?x28xf64>
            %24 = arith.subf %23, %13 : f64
            %25 = arith.mulf %24, %24 : f64
            %26 = memref.load %arg6[%12] : memref<?xf64>
            %27 = arith.addf %26, %25 : f64
            memref.store %27, %arg6[%12] : memref<?xf64>
            %28 = arith.addi %22, %c1 : index
            %29 = memref.load %arg3[%28, %12] : memref<?x28xf64>
            %30 = arith.subf %29, %14 : f64
            %31 = arith.mulf %30, %30 : f64
            %32 = memref.load %arg6[%12] : memref<?xf64>
            %33 = arith.addf %32, %31 : f64
            memref.store %33, %arg6[%12] : memref<?xf64>
            %34 = arith.addi %22, %c2 : index
            %35 = memref.load %arg3[%34, %12] : memref<?x28xf64>
            %36 = arith.subf %35, %15 : f64
            %37 = arith.mulf %36, %36 : f64
            %38 = memref.load %arg6[%12] : memref<?xf64>
            %39 = arith.addf %38, %37 : f64
            memref.store %39, %arg6[%12] : memref<?xf64>
            %40 = arith.addi %22, %c3 : index
            %41 = memref.load %arg3[%40, %12] : memref<?x28xf64>
            %42 = arith.subf %41, %16 : f64
            %43 = arith.mulf %42, %42 : f64
            %44 = memref.load %arg6[%12] : memref<?xf64>
            %45 = arith.addf %44, %43 : f64
            memref.store %45, %arg6[%12] : memref<?xf64>
          }
          %17 = memref.load %arg6[%12] : memref<?xf64>
          %18 = arith.divf %17, %arg2 : f64
          %19 = math.sqrt %18 : f64
          %20 = arith.cmpf ole, %19, %cst_1 : f64
          %21 = arith.select %20, %cst, %19 : f64
          memref.store %21, %arg6[%12] : memref<?xf64>
        }
        async.yield
      }
      %9 = async.add_to_group %token, %2 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %2
    %4 = math.sqrt %arg2 : f64
    %5 = async.create_group %c1 : !async.group
    %6 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %12 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %13 = arith.addi %11, %arg10 : index
            scf.for %arg11 = %c0 to %c7 step %c1 {
              %14 = arith.muli %arg11, %c4 : index
              %15 = arith.addi %12, %14 : index
              %16 = memref.load %arg5[%15] : memref<?xf64>
              %17 = memref.load %arg3[%13, %15] : memref<?x28xf64>
              %18 = arith.subf %17, %16 : f64
              memref.store %18, %arg3[%13, %15] : memref<?x28xf64>
              %19 = memref.load %arg6[%15] : memref<?xf64>
              %20 = arith.mulf %4, %19 : f64
              %21 = arith.divf %18, %20 : f64
              memref.store %21, %arg3[%13, %15] : memref<?x28xf64>
              %22 = arith.addi %15, %c1 : index
              %23 = memref.load %arg5[%22] : memref<?xf64>
              %24 = memref.load %arg3[%13, %22] : memref<?x28xf64>
              %25 = arith.subf %24, %23 : f64
              memref.store %25, %arg3[%13, %22] : memref<?x28xf64>
              %26 = memref.load %arg6[%22] : memref<?xf64>
              %27 = arith.mulf %4, %26 : f64
              %28 = arith.divf %25, %27 : f64
              memref.store %28, %arg3[%13, %22] : memref<?x28xf64>
              %29 = arith.addi %15, %c2 : index
              %30 = memref.load %arg5[%29] : memref<?xf64>
              %31 = memref.load %arg3[%13, %29] : memref<?x28xf64>
              %32 = arith.subf %31, %30 : f64
              memref.store %32, %arg3[%13, %29] : memref<?x28xf64>
              %33 = memref.load %arg6[%29] : memref<?xf64>
              %34 = arith.mulf %4, %33 : f64
              %35 = arith.divf %32, %34 : f64
              memref.store %35, %arg3[%13, %29] : memref<?x28xf64>
              %36 = arith.addi %15, %c3 : index
              %37 = memref.load %arg5[%36] : memref<?xf64>
              %38 = memref.load %arg3[%13, %36] : memref<?x28xf64>
              %39 = arith.subf %38, %37 : f64
              memref.store %39, %arg3[%13, %36] : memref<?x28xf64>
              %40 = memref.load %arg6[%36] : memref<?xf64>
              %41 = arith.mulf %4, %40 : f64
              %42 = arith.divf %39, %41 : f64
              memref.store %42, %arg3[%13, %36] : memref<?x28xf64>
            }
          }
        }
        async.yield
      }
      %9 = async.add_to_group %token, %5 : !async.token
      %10 = arith.addi %arg8, %c1 : index
      scf.yield %10 : index
    }
    async.await_all %5
    %7 = async.create_group %c1 : !async.group
    %8 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %11 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c27 step %c1 {
          %12 = arith.addi %11, %arg9 : index
          memref.store %cst, %arg4[%12, %12] : memref<?x28xf64>
          %13 = arith.muli %arg9, %c-1 : index
          %14 = arith.muli %arg7, %c-32 : index
          %15 = arith.addi %13, %14 : index
          %16 = arith.addi %15, %c27 : index
          scf.for %arg10 = %c0 to %16 step %c1 {
            %17 = arith.addi %12, %arg10 : index
            %18 = arith.addi %17, %c1 : index
            memref.store %cst_0, %arg4[%12, %18] : memref<?x28xf64>
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %20 = arith.muli %arg11, %c4 : index
              %21 = memref.load %arg3[%20, %12] : memref<?x28xf64>
              %22 = memref.load %arg3[%20, %18] : memref<?x28xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = memref.load %arg4[%12, %18] : memref<?x28xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg4[%12, %18] : memref<?x28xf64>
              %26 = arith.addi %20, %c1 : index
              %27 = memref.load %arg3[%26, %12] : memref<?x28xf64>
              %28 = memref.load %arg3[%26, %18] : memref<?x28xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = memref.load %arg4[%12, %18] : memref<?x28xf64>
              %31 = arith.addf %30, %29 : f64
              memref.store %31, %arg4[%12, %18] : memref<?x28xf64>
              %32 = arith.addi %20, %c2 : index
              %33 = memref.load %arg3[%32, %12] : memref<?x28xf64>
              %34 = memref.load %arg3[%32, %18] : memref<?x28xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = memref.load %arg4[%12, %18] : memref<?x28xf64>
              %37 = arith.addf %36, %35 : f64
              memref.store %37, %arg4[%12, %18] : memref<?x28xf64>
              %38 = arith.addi %20, %c3 : index
              %39 = memref.load %arg3[%38, %12] : memref<?x28xf64>
              %40 = memref.load %arg3[%38, %18] : memref<?x28xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = memref.load %arg4[%12, %18] : memref<?x28xf64>
              %43 = arith.addf %42, %41 : f64
              memref.store %43, %arg4[%12, %18] : memref<?x28xf64>
            }
            %19 = memref.load %arg4[%12, %18] : memref<?x28xf64>
            memref.store %19, %arg4[%18, %12] : memref<?x28xf64>
          }
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

