module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c36 = arith.constant 36 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c9 = arith.constant 9 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c9 step %c1 {
      %2 = arith.muli %arg7, %c4 : index
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %3 = arith.muli %arg8, %c4 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst, %arg3[%4] : memref<?xf64>
        %5 = arith.addi %4, %c1 : index
        memref.store %cst, %arg3[%5] : memref<?xf64>
        %6 = arith.addi %4, %c2 : index
        memref.store %cst, %arg3[%6] : memref<?xf64>
        %7 = arith.addi %4, %c3 : index
        memref.store %cst, %arg3[%7] : memref<?xf64>
      }
    }
    %0 = async.create_group %c2 : !async.group
    %1 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.addi %arg7, %c36 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %5 = arith.addi %4, %arg9 : index
          memref.store %cst, %arg3[%5] : memref<?xf64>
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg8, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    scf.for %arg7 = %c0 to %c42 step %c1 {
      %2 = async.create_group %c1 : !async.group
      %3 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %6 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %arg4[%6] : memref<?xf64>
          %7 = memref.load %arg6[%6] : memref<?xf64>
          %8 = memref.load %arg6[%6] : memref<?xf64>
          %9 = memref.load %arg6[%6] : memref<?xf64>
          %10 = memref.load %arg6[%6] : memref<?xf64>
          scf.for %arg10 = %c0 to %c9 step %c1 {
            %12 = arith.muli %arg10, %c4 : index
            %13 = memref.load %arg3[%12] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x38xf64>
            %15 = arith.mulf %7, %14 : f64
            %16 = arith.addf %13, %15 : f64
            memref.store %16, %arg3[%12] : memref<?xf64>
            %17 = memref.load %arg4[%6] : memref<?xf64>
            %18 = memref.load %arg2[%6, %12] : memref<?x38xf64>
            %19 = memref.load %arg5[%12] : memref<?xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = arith.addf %17, %20 : f64
            memref.store %21, %arg4[%6] : memref<?xf64>
            %22 = arith.addi %12, %c1 : index
            %23 = memref.load %arg3[%22] : memref<?xf64>
            %24 = memref.load %arg2[%6, %22] : memref<?x38xf64>
            %25 = arith.mulf %8, %24 : f64
            %26 = arith.addf %23, %25 : f64
            memref.store %26, %arg3[%22] : memref<?xf64>
            %27 = memref.load %arg4[%6] : memref<?xf64>
            %28 = memref.load %arg2[%6, %22] : memref<?x38xf64>
            %29 = memref.load %arg5[%22] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = arith.addf %27, %30 : f64
            memref.store %31, %arg4[%6] : memref<?xf64>
            %32 = arith.addi %12, %c2 : index
            %33 = memref.load %arg3[%32] : memref<?xf64>
            %34 = memref.load %arg2[%6, %32] : memref<?x38xf64>
            %35 = arith.mulf %9, %34 : f64
            %36 = arith.addf %33, %35 : f64
            memref.store %36, %arg3[%32] : memref<?xf64>
            %37 = memref.load %arg4[%6] : memref<?xf64>
            %38 = memref.load %arg2[%6, %32] : memref<?x38xf64>
            %39 = memref.load %arg5[%32] : memref<?xf64>
            %40 = arith.mulf %38, %39 : f64
            %41 = arith.addf %37, %40 : f64
            memref.store %41, %arg4[%6] : memref<?xf64>
            %42 = arith.addi %12, %c3 : index
            %43 = memref.load %arg3[%42] : memref<?xf64>
            %44 = memref.load %arg2[%6, %42] : memref<?x38xf64>
            %45 = arith.mulf %10, %44 : f64
            %46 = arith.addf %43, %45 : f64
            memref.store %46, %arg3[%42] : memref<?xf64>
            %47 = memref.load %arg4[%6] : memref<?xf64>
            %48 = memref.load %arg2[%6, %42] : memref<?x38xf64>
            %49 = memref.load %arg5[%42] : memref<?xf64>
            %50 = arith.mulf %48, %49 : f64
            %51 = arith.addf %47, %50 : f64
            memref.store %51, %arg4[%6] : memref<?xf64>
          }
          %11 = memref.load %arg6[%6] : memref<?xf64>
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %12 = arith.addi %arg10, %c36 : index
            %13 = memref.load %arg3[%12] : memref<?xf64>
            %14 = memref.load %arg2[%6, %12] : memref<?x38xf64>
            %15 = arith.mulf %11, %14 : f64
            %16 = arith.addf %13, %15 : f64
            memref.store %16, %arg3[%12] : memref<?xf64>
            %17 = memref.load %arg4[%6] : memref<?xf64>
            %18 = memref.load %arg2[%6, %12] : memref<?x38xf64>
            %19 = memref.load %arg5[%12] : memref<?xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = arith.addf %17, %20 : f64
            memref.store %21, %arg4[%6] : memref<?xf64>
          }
          async.yield
        }
        %4 = async.add_to_group %token, %2 : !async.token
        %5 = arith.addi %arg9, %c1 : index
        scf.yield %5 : index
      }
      async.await_all %2
    }
    return
  }
}

