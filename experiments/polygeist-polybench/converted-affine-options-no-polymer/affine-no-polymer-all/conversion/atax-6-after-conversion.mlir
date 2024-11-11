module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c40 = arith.constant 40 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %2 = arith.muli %arg6, %c4 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
        %5 = arith.addi %4, %c1 : index
        memref.store %cst, %arg4[%5] : memref<?xf64>
        %6 = arith.addi %4, %c2 : index
        memref.store %cst, %arg4[%6] : memref<?xf64>
        %7 = arith.addi %4, %c3 : index
        memref.store %cst, %arg4[%7] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg6 = %c0 to %c2 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.addi %arg6, %c40 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %5 = arith.addi %4, %arg8 : index
          memref.store %cst, %arg4[%5] : memref<?xf64>
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg6 = %c0 to %c38 step %c1 {
      %2 = async.create_group %c1 : !async.group
      %3 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
        %token = async.execute {
          %6 = arith.addi %arg6, %arg7 : index
          memref.store %cst, %arg5[%6] : memref<?xf64>
          scf.for %arg9 = %c0 to %c10 step %c1 {
            %12 = arith.muli %arg9, %c4 : index
            %13 = memref.load %arg5[%6] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x42xf64>
            %15 = memref.load %arg3[%12] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg5[%6] : memref<?xf64>
            %18 = arith.addi %12, %c1 : index
            %19 = memref.load %arg5[%6] : memref<?xf64>
            %20 = memref.load %arg2[%6, %18] : memref<?x42xf64>
            %21 = memref.load %arg3[%18] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %19, %22 : f64
            memref.store %23, %arg5[%6] : memref<?xf64>
            %24 = arith.addi %12, %c2 : index
            %25 = memref.load %arg5[%6] : memref<?xf64>
            %26 = memref.load %arg2[%6, %24] : memref<?x42xf64>
            %27 = memref.load %arg3[%24] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %25, %28 : f64
            memref.store %29, %arg5[%6] : memref<?xf64>
            %30 = arith.addi %12, %c3 : index
            %31 = memref.load %arg5[%6] : memref<?xf64>
            %32 = memref.load %arg2[%6, %30] : memref<?x42xf64>
            %33 = memref.load %arg3[%30] : memref<?xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = arith.addf %31, %34 : f64
            memref.store %35, %arg5[%6] : memref<?xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %12 = arith.addi %arg9, %c40 : index
            %13 = memref.load %arg5[%6] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x42xf64>
            %15 = memref.load %arg3[%12] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg5[%6] : memref<?xf64>
          }
          %7 = memref.load %arg5[%6] : memref<?xf64>
          %8 = memref.load %arg5[%6] : memref<?xf64>
          %9 = memref.load %arg5[%6] : memref<?xf64>
          %10 = memref.load %arg5[%6] : memref<?xf64>
          scf.for %arg9 = %c0 to %c10 step %c1 {
            %12 = arith.muli %arg9, %c4 : index
            %13 = memref.load %arg4[%12] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x42xf64>
            %15 = arith.mulf %14, %7 : f64
            %16 = arith.addf %13, %15 : f64
            memref.store %16, %arg4[%12] : memref<?xf64>
            %17 = arith.addi %12, %c1 : index
            %18 = memref.load %arg4[%17] : memref<?xf64>
            %19 = memref.load %arg2[%6, %17] : memref<?x42xf64>
            %20 = arith.mulf %19, %8 : f64
            %21 = arith.addf %18, %20 : f64
            memref.store %21, %arg4[%17] : memref<?xf64>
            %22 = arith.addi %12, %c2 : index
            %23 = memref.load %arg4[%22] : memref<?xf64>
            %24 = memref.load %arg2[%6, %22] : memref<?x42xf64>
            %25 = arith.mulf %24, %9 : f64
            %26 = arith.addf %23, %25 : f64
            memref.store %26, %arg4[%22] : memref<?xf64>
            %27 = arith.addi %12, %c3 : index
            %28 = memref.load %arg4[%27] : memref<?xf64>
            %29 = memref.load %arg2[%6, %27] : memref<?x42xf64>
            %30 = arith.mulf %29, %10 : f64
            %31 = arith.addf %28, %30 : f64
            memref.store %31, %arg4[%27] : memref<?xf64>
          }
          %11 = memref.load %arg5[%6] : memref<?xf64>
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %12 = arith.addi %arg9, %c40 : index
            %13 = memref.load %arg4[%12] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x42xf64>
            %15 = arith.mulf %14, %11 : f64
            %16 = arith.addf %13, %15 : f64
            memref.store %16, %arg4[%12] : memref<?xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg8, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

