module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c30 = arith.constant 30 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c128 = arith.constant 128 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c128 : index
        scf.for %arg10 = %c0 to %c7 step %c1 {
          %19 = arith.muli %arg10, %c4 : index
          %20 = arith.addi %18, %19 : index
          memref.store %cst, %arg7[%20] : memref<?xf64>
          %21 = arith.addi %20, %c1 : index
          memref.store %cst, %arg7[%21] : memref<?xf64>
          %22 = arith.addi %20, %c2 : index
          memref.store %cst, %arg7[%22] : memref<?xf64>
          %23 = arith.addi %20, %c3 : index
          memref.store %cst, %arg7[%23] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %0 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c32 : index
        %19 = arith.addi %18, %c28 : index
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %20 = arith.addi %19, %arg10 : index
          memref.store %cst, %arg7[%20] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %2 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %2
    %4 = async.create_group %c1 : !async.group
    %5 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %19 = arith.addi %18, %arg10 : index
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %20 = arith.muli %arg11, %c4 : index
            %21 = memref.load %arg4[%19, %20] : memref<?x30xf64>
            %22 = memref.load %arg6[%20] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg7[%19] : memref<?xf64>
            %25 = arith.addf %23, %24 : f64
            memref.store %25, %arg7[%19] : memref<?xf64>
            %26 = arith.addi %20, %c1 : index
            %27 = memref.load %arg4[%19, %26] : memref<?x30xf64>
            %28 = memref.load %arg6[%26] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg7[%19] : memref<?xf64>
            %31 = arith.addf %29, %30 : f64
            memref.store %31, %arg7[%19] : memref<?xf64>
            %32 = arith.addi %20, %c2 : index
            %33 = memref.load %arg4[%19, %32] : memref<?x30xf64>
            %34 = memref.load %arg6[%32] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg7[%19] : memref<?xf64>
            %37 = arith.addf %35, %36 : f64
            memref.store %37, %arg7[%19] : memref<?xf64>
            %38 = arith.addi %20, %c3 : index
            %39 = memref.load %arg4[%19, %38] : memref<?x30xf64>
            %40 = memref.load %arg6[%38] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %arg7[%19] : memref<?xf64>
            %43 = arith.addf %41, %42 : f64
            memref.store %43, %arg7[%19] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %20 = arith.addi %arg11, %c28 : index
            %21 = memref.load %arg4[%19, %20] : memref<?x30xf64>
            %22 = memref.load %arg6[%20] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg7[%19] : memref<?xf64>
            %25 = arith.addf %23, %24 : f64
            memref.store %25, %arg7[%19] : memref<?xf64>
          }
        }
        async.yield
      }
      %16 = async.add_to_group %token, %4 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %4
    %6 = async.create_group %c1 : !async.group
    %7 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c128 : index
        scf.for %arg10 = %c0 to %c7 step %c1 {
          %19 = arith.muli %arg10, %c4 : index
          %20 = arith.addi %18, %19 : index
          memref.store %cst, %arg5[%20] : memref<?xf64>
          %21 = arith.addi %20, %c1 : index
          memref.store %cst, %arg5[%21] : memref<?xf64>
          %22 = arith.addi %20, %c2 : index
          memref.store %cst, %arg5[%22] : memref<?xf64>
          %23 = arith.addi %20, %c3 : index
          memref.store %cst, %arg5[%23] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %6 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %6
    %8 = async.create_group %c1 : !async.group
    %9 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c32 : index
        %19 = arith.addi %18, %c28 : index
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %20 = arith.addi %19, %arg10 : index
          memref.store %cst, %arg5[%20] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %8 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %8
    %10 = async.create_group %c1 : !async.group
    %11 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %19 = arith.addi %18, %arg10 : index
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %20 = arith.muli %arg11, %c4 : index
            %21 = memref.load %arg3[%19, %20] : memref<?x30xf64>
            %22 = memref.load %arg6[%20] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg5[%19] : memref<?xf64>
            %25 = arith.addf %23, %24 : f64
            memref.store %25, %arg5[%19] : memref<?xf64>
            %26 = arith.addi %20, %c1 : index
            %27 = memref.load %arg3[%19, %26] : memref<?x30xf64>
            %28 = memref.load %arg6[%26] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg5[%19] : memref<?xf64>
            %31 = arith.addf %29, %30 : f64
            memref.store %31, %arg5[%19] : memref<?xf64>
            %32 = arith.addi %20, %c2 : index
            %33 = memref.load %arg3[%19, %32] : memref<?x30xf64>
            %34 = memref.load %arg6[%32] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg5[%19] : memref<?xf64>
            %37 = arith.addf %35, %36 : f64
            memref.store %37, %arg5[%19] : memref<?xf64>
            %38 = arith.addi %20, %c3 : index
            %39 = memref.load %arg3[%19, %38] : memref<?x30xf64>
            %40 = memref.load %arg6[%38] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %arg5[%19] : memref<?xf64>
            %43 = arith.addf %41, %42 : f64
            memref.store %43, %arg5[%19] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %20 = arith.addi %arg11, %c28 : index
            %21 = memref.load %arg3[%19, %20] : memref<?x30xf64>
            %22 = memref.load %arg6[%20] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg5[%19] : memref<?xf64>
            %25 = arith.addf %23, %24 : f64
            memref.store %25, %arg5[%19] : memref<?xf64>
          }
        }
        async.yield
      }
      %16 = async.add_to_group %token, %10 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %10
    %12 = async.create_group %c1 : !async.group
    %13 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c128 : index
        scf.for %arg10 = %c0 to %c7 step %c1 {
          %19 = arith.muli %arg10, %c4 : index
          %20 = arith.addi %18, %19 : index
          %21 = memref.load %arg5[%20] : memref<?xf64>
          %22 = arith.mulf %arg1, %21 : f64
          %23 = memref.load %arg7[%20] : memref<?xf64>
          %24 = arith.mulf %arg2, %23 : f64
          %25 = arith.addf %22, %24 : f64
          memref.store %25, %arg7[%20] : memref<?xf64>
          %26 = arith.addi %20, %c1 : index
          %27 = memref.load %arg5[%26] : memref<?xf64>
          %28 = arith.mulf %arg1, %27 : f64
          %29 = memref.load %arg7[%26] : memref<?xf64>
          %30 = arith.mulf %arg2, %29 : f64
          %31 = arith.addf %28, %30 : f64
          memref.store %31, %arg7[%26] : memref<?xf64>
          %32 = arith.addi %20, %c2 : index
          %33 = memref.load %arg5[%32] : memref<?xf64>
          %34 = arith.mulf %arg1, %33 : f64
          %35 = memref.load %arg7[%32] : memref<?xf64>
          %36 = arith.mulf %arg2, %35 : f64
          %37 = arith.addf %34, %36 : f64
          memref.store %37, %arg7[%32] : memref<?xf64>
          %38 = arith.addi %20, %c3 : index
          %39 = memref.load %arg5[%38] : memref<?xf64>
          %40 = arith.mulf %arg1, %39 : f64
          %41 = memref.load %arg7[%38] : memref<?xf64>
          %42 = arith.mulf %arg2, %41 : f64
          %43 = arith.addf %40, %42 : f64
          memref.store %43, %arg7[%38] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %12 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %12
    %14 = async.create_group %c1 : !async.group
    %15 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %18 = arith.muli %arg8, %c32 : index
        %19 = arith.addi %18, %c28 : index
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %20 = arith.addi %19, %arg10 : index
          %21 = memref.load %arg5[%20] : memref<?xf64>
          %22 = arith.mulf %arg1, %21 : f64
          %23 = memref.load %arg7[%20] : memref<?xf64>
          %24 = arith.mulf %arg2, %23 : f64
          %25 = arith.addf %22, %24 : f64
          memref.store %25, %arg7[%20] : memref<?xf64>
        }
        async.yield
      }
      %16 = async.add_to_group %token, %14 : !async.token
      %17 = arith.addi %arg9, %c1 : index
      scf.yield %17 : index
    }
    async.await_all %14
    return
  }
}

