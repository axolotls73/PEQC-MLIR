module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c30 = arith.constant 30 : index
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %10 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %11 = arith.muli %arg9, %c4 : index
        %12 = arith.addi %10, %11 : index
        memref.store %cst, %arg7[%12] : memref<?xf64>
        %13 = arith.addi %12, %c1 : index
        memref.store %cst, %arg7[%13] : memref<?xf64>
        %14 = arith.addi %12, %c2 : index
        memref.store %cst, %arg7[%14] : memref<?xf64>
        %15 = arith.addi %12, %c3 : index
        memref.store %cst, %arg7[%15] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.addi %arg8, %c28 : index
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %13 = arith.addi %12, %arg10 : index
          memref.store %cst, %arg7[%13] : memref<?xf64>
        }
        async.yield
      }
      %10 = async.add_to_group %token, %0 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %12 = arith.addi %arg8, %arg10 : index
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %13 = arith.muli %arg11, %c4 : index
            %14 = memref.load %arg4[%12, %13] : memref<?x30xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = memref.load %arg7[%12] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            memref.store %18, %arg7[%12] : memref<?xf64>
            %19 = arith.addi %13, %c1 : index
            %20 = memref.load %arg4[%12, %19] : memref<?x30xf64>
            %21 = memref.load %arg6[%19] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = memref.load %arg7[%12] : memref<?xf64>
            %24 = arith.addf %22, %23 : f64
            memref.store %24, %arg7[%12] : memref<?xf64>
            %25 = arith.addi %13, %c2 : index
            %26 = memref.load %arg4[%12, %25] : memref<?x30xf64>
            %27 = memref.load %arg6[%25] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = memref.load %arg7[%12] : memref<?xf64>
            %30 = arith.addf %28, %29 : f64
            memref.store %30, %arg7[%12] : memref<?xf64>
            %31 = arith.addi %13, %c3 : index
            %32 = memref.load %arg4[%12, %31] : memref<?x30xf64>
            %33 = memref.load %arg6[%31] : memref<?xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg7[%12] : memref<?xf64>
            %36 = arith.addf %34, %35 : f64
            memref.store %36, %arg7[%12] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %13 = arith.addi %arg11, %c28 : index
            %14 = memref.load %arg4[%12, %13] : memref<?x30xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = memref.load %arg7[%12] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            memref.store %18, %arg7[%12] : memref<?xf64>
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %2 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %2
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %10 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %11 = arith.muli %arg9, %c4 : index
        %12 = arith.addi %10, %11 : index
        memref.store %cst, %arg5[%12] : memref<?xf64>
        %13 = arith.addi %12, %c1 : index
        memref.store %cst, %arg5[%13] : memref<?xf64>
        %14 = arith.addi %12, %c2 : index
        memref.store %cst, %arg5[%14] : memref<?xf64>
        %15 = arith.addi %12, %c3 : index
        memref.store %cst, %arg5[%15] : memref<?xf64>
      }
    }
    %4 = async.create_group %c2 : !async.group
    %5 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.addi %arg8, %c28 : index
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %13 = arith.addi %12, %arg10 : index
          memref.store %cst, %arg5[%13] : memref<?xf64>
        }
        async.yield
      }
      %10 = async.add_to_group %token, %4 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %4
    %6 = async.create_group %c30 : !async.group
    %7 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %12 = arith.addi %arg8, %arg10 : index
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %13 = arith.muli %arg11, %c4 : index
            %14 = memref.load %arg3[%12, %13] : memref<?x30xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = memref.load %arg5[%12] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            memref.store %18, %arg5[%12] : memref<?xf64>
            %19 = arith.addi %13, %c1 : index
            %20 = memref.load %arg3[%12, %19] : memref<?x30xf64>
            %21 = memref.load %arg6[%19] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = memref.load %arg5[%12] : memref<?xf64>
            %24 = arith.addf %22, %23 : f64
            memref.store %24, %arg5[%12] : memref<?xf64>
            %25 = arith.addi %13, %c2 : index
            %26 = memref.load %arg3[%12, %25] : memref<?x30xf64>
            %27 = memref.load %arg6[%25] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = memref.load %arg5[%12] : memref<?xf64>
            %30 = arith.addf %28, %29 : f64
            memref.store %30, %arg5[%12] : memref<?xf64>
            %31 = arith.addi %13, %c3 : index
            %32 = memref.load %arg3[%12, %31] : memref<?x30xf64>
            %33 = memref.load %arg6[%31] : memref<?xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg5[%12] : memref<?xf64>
            %36 = arith.addf %34, %35 : f64
            memref.store %36, %arg5[%12] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %13 = arith.addi %arg11, %c28 : index
            %14 = memref.load %arg3[%12, %13] : memref<?x30xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = memref.load %arg5[%12] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            memref.store %18, %arg5[%12] : memref<?xf64>
          }
        }
        async.yield
      }
      %10 = async.add_to_group %token, %6 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %6
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %10 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %11 = arith.muli %arg9, %c4 : index
        %12 = arith.addi %10, %11 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = arith.mulf %arg1, %13 : f64
        %15 = memref.load %arg7[%12] : memref<?xf64>
        %16 = arith.mulf %arg2, %15 : f64
        %17 = arith.addf %14, %16 : f64
        memref.store %17, %arg7[%12] : memref<?xf64>
        %18 = arith.addi %12, %c1 : index
        %19 = memref.load %arg5[%18] : memref<?xf64>
        %20 = arith.mulf %arg1, %19 : f64
        %21 = memref.load %arg7[%18] : memref<?xf64>
        %22 = arith.mulf %arg2, %21 : f64
        %23 = arith.addf %20, %22 : f64
        memref.store %23, %arg7[%18] : memref<?xf64>
        %24 = arith.addi %12, %c2 : index
        %25 = memref.load %arg5[%24] : memref<?xf64>
        %26 = arith.mulf %arg1, %25 : f64
        %27 = memref.load %arg7[%24] : memref<?xf64>
        %28 = arith.mulf %arg2, %27 : f64
        %29 = arith.addf %26, %28 : f64
        memref.store %29, %arg7[%24] : memref<?xf64>
        %30 = arith.addi %12, %c3 : index
        %31 = memref.load %arg5[%30] : memref<?xf64>
        %32 = arith.mulf %arg1, %31 : f64
        %33 = memref.load %arg7[%30] : memref<?xf64>
        %34 = arith.mulf %arg2, %33 : f64
        %35 = arith.addf %32, %34 : f64
        memref.store %35, %arg7[%30] : memref<?xf64>
      }
    }
    %8 = async.create_group %c2 : !async.group
    %9 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %12 = arith.addi %arg8, %c28 : index
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %13 = arith.addi %12, %arg10 : index
          %14 = memref.load %arg5[%13] : memref<?xf64>
          %15 = arith.mulf %arg1, %14 : f64
          %16 = memref.load %arg7[%13] : memref<?xf64>
          %17 = arith.mulf %arg2, %16 : f64
          %18 = arith.addf %15, %17 : f64
          memref.store %18, %arg7[%13] : memref<?xf64>
        }
        async.yield
      }
      %10 = async.add_to_group %token, %8 : !async.token
      %11 = arith.addi %arg9, %c1 : index
      scf.yield %11 : index
    }
    async.await_all %8
    return
  }
}

