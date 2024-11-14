module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-32 = arith.constant -32 : index
    %c36 = arith.constant 36 : index
    %c32 = arith.constant 32 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c9 = arith.constant 9 : index
    %c128 = arith.constant 128 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg7, %c128 : index
        scf.for %arg9 = %c0 to %c9 step %c1 {
          %7 = arith.muli %arg9, %c4 : index
          %8 = arith.addi %6, %7 : index
          memref.store %cst, %arg3[%8] : memref<?xf64>
          %9 = arith.addi %8, %c1 : index
          memref.store %cst, %arg3[%9] : memref<?xf64>
          %10 = arith.addi %8, %c2 : index
          memref.store %cst, %arg3[%10] : memref<?xf64>
          %11 = arith.addi %8, %c3 : index
          memref.store %cst, %arg3[%11] : memref<?xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg8, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg7 = %c0 to %c1 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg7, %c32 : index
        %7 = arith.addi %6, %c36 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %8 = arith.addi %7, %arg9 : index
          memref.store %cst, %arg3[%8] : memref<?xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg8, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %4 = arith.muli %arg7, %c32 : index
      %5 = arith.muli %arg7, %c-32 : index
      %6 = arith.addi %5, %c42 : index
      %7 = arith.minsi %6, %c32 : index
      scf.for %arg8 = %c0 to %7 step %c1 {
        %8 = arith.addi %4, %arg8 : index
        memref.store %cst, %arg4[%8] : memref<?xf64>
        %9 = memref.load %arg6[%8] : memref<?xf64>
        %10 = memref.load %arg6[%8] : memref<?xf64>
        %11 = memref.load %arg6[%8] : memref<?xf64>
        %12 = memref.load %arg6[%8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c9 step %c1 {
          %14 = arith.muli %arg9, %c4 : index
          %15 = memref.load %arg3[%14] : memref<?xf64>
          %16 = memref.load %arg2[%8, %14] : memref<?x38xf64>
          %17 = arith.mulf %9, %16 : f64
          %18 = arith.addf %15, %17 : f64
          memref.store %18, %arg3[%14] : memref<?xf64>
          %19 = memref.load %arg4[%8] : memref<?xf64>
          %20 = memref.load %arg2[%8, %14] : memref<?x38xf64>
          %21 = memref.load %arg5[%14] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          memref.store %23, %arg4[%8] : memref<?xf64>
          %24 = arith.addi %14, %c1 : index
          %25 = memref.load %arg3[%24] : memref<?xf64>
          %26 = memref.load %arg2[%8, %24] : memref<?x38xf64>
          %27 = arith.mulf %10, %26 : f64
          %28 = arith.addf %25, %27 : f64
          memref.store %28, %arg3[%24] : memref<?xf64>
          %29 = memref.load %arg4[%8] : memref<?xf64>
          %30 = memref.load %arg2[%8, %24] : memref<?x38xf64>
          %31 = memref.load %arg5[%24] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = arith.addf %29, %32 : f64
          memref.store %33, %arg4[%8] : memref<?xf64>
          %34 = arith.addi %14, %c2 : index
          %35 = memref.load %arg3[%34] : memref<?xf64>
          %36 = memref.load %arg2[%8, %34] : memref<?x38xf64>
          %37 = arith.mulf %11, %36 : f64
          %38 = arith.addf %35, %37 : f64
          memref.store %38, %arg3[%34] : memref<?xf64>
          %39 = memref.load %arg4[%8] : memref<?xf64>
          %40 = memref.load %arg2[%8, %34] : memref<?x38xf64>
          %41 = memref.load %arg5[%34] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = arith.addf %39, %42 : f64
          memref.store %43, %arg4[%8] : memref<?xf64>
          %44 = arith.addi %14, %c3 : index
          %45 = memref.load %arg3[%44] : memref<?xf64>
          %46 = memref.load %arg2[%8, %44] : memref<?x38xf64>
          %47 = arith.mulf %12, %46 : f64
          %48 = arith.addf %45, %47 : f64
          memref.store %48, %arg3[%44] : memref<?xf64>
          %49 = memref.load %arg4[%8] : memref<?xf64>
          %50 = memref.load %arg2[%8, %44] : memref<?x38xf64>
          %51 = memref.load %arg5[%44] : memref<?xf64>
          %52 = arith.mulf %50, %51 : f64
          %53 = arith.addf %49, %52 : f64
          memref.store %53, %arg4[%8] : memref<?xf64>
        }
        %13 = memref.load %arg6[%8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %14 = arith.addi %arg9, %c36 : index
          %15 = memref.load %arg3[%14] : memref<?xf64>
          %16 = memref.load %arg2[%8, %14] : memref<?x38xf64>
          %17 = arith.mulf %13, %16 : f64
          %18 = arith.addf %15, %17 : f64
          memref.store %18, %arg3[%14] : memref<?xf64>
          %19 = memref.load %arg4[%8] : memref<?xf64>
          %20 = memref.load %arg2[%8, %14] : memref<?x38xf64>
          %21 = memref.load %arg5[%14] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          memref.store %23, %arg4[%8] : memref<?xf64>
        }
      }
    }
    return
  }
}

