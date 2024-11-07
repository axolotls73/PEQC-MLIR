module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %0 = async.create_group %c1 : !async.group
      %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
        %token = async.execute {
          %4 = async.create_group %c7 : !async.group
          %5 = scf.for %arg7 = %c0 to %c7 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = arith.muli %arg7, %c4 : index
              %11 = arith.addi %10, %c1 : index
              %12 = arith.addi %11, %c-1 : index
              %13 = memref.load %arg2[%12] : memref<?xf64>
              %14 = memref.load %arg2[%11] : memref<?xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = arith.addi %11, %c1 : index
              %17 = memref.load %arg2[%16] : memref<?xf64>
              %18 = arith.addf %15, %17 : f64
              %19 = arith.mulf %18, %cst : f64
              memref.store %19, %arg3[%11] : memref<?xf64>
              %20 = arith.addi %11, %c1 : index
              %21 = arith.addi %20, %c-1 : index
              %22 = memref.load %arg2[%21] : memref<?xf64>
              %23 = memref.load %arg2[%20] : memref<?xf64>
              %24 = arith.addf %22, %23 : f64
              %25 = arith.addi %20, %c1 : index
              %26 = memref.load %arg2[%25] : memref<?xf64>
              %27 = arith.addf %24, %26 : f64
              %28 = arith.mulf %27, %cst : f64
              memref.store %28, %arg3[%20] : memref<?xf64>
              %29 = arith.addi %11, %c2 : index
              %30 = arith.addi %29, %c-1 : index
              %31 = memref.load %arg2[%30] : memref<?xf64>
              %32 = memref.load %arg2[%29] : memref<?xf64>
              %33 = arith.addf %31, %32 : f64
              %34 = arith.addi %29, %c1 : index
              %35 = memref.load %arg2[%34] : memref<?xf64>
              %36 = arith.addf %33, %35 : f64
              %37 = arith.mulf %36, %cst : f64
              memref.store %37, %arg3[%29] : memref<?xf64>
              %38 = arith.addi %11, %c3 : index
              %39 = arith.addi %38, %c-1 : index
              %40 = memref.load %arg2[%39] : memref<?xf64>
              %41 = memref.load %arg2[%38] : memref<?xf64>
              %42 = arith.addf %40, %41 : f64
              %43 = arith.addi %38, %c1 : index
              %44 = memref.load %arg2[%43] : memref<?xf64>
              %45 = arith.addf %42, %44 : f64
              %46 = arith.mulf %45, %cst : f64
              memref.store %46, %arg3[%38] : memref<?xf64>
              async.yield
            }
            %8 = async.add_to_group %token_0, %4 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %4
          %6 = async.create_group %c7 : !async.group
          %7 = scf.for %arg7 = %c0 to %c7 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %token_0 = async.execute {
              %10 = arith.muli %arg7, %c4 : index
              %11 = arith.addi %10, %c1 : index
              %12 = arith.addi %11, %c-1 : index
              %13 = memref.load %arg3[%12] : memref<?xf64>
              %14 = memref.load %arg3[%11] : memref<?xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = arith.addi %11, %c1 : index
              %17 = memref.load %arg3[%16] : memref<?xf64>
              %18 = arith.addf %15, %17 : f64
              %19 = arith.mulf %18, %cst : f64
              memref.store %19, %arg2[%11] : memref<?xf64>
              %20 = arith.addi %11, %c1 : index
              %21 = arith.addi %20, %c-1 : index
              %22 = memref.load %arg3[%21] : memref<?xf64>
              %23 = memref.load %arg3[%20] : memref<?xf64>
              %24 = arith.addf %22, %23 : f64
              %25 = arith.addi %20, %c1 : index
              %26 = memref.load %arg3[%25] : memref<?xf64>
              %27 = arith.addf %24, %26 : f64
              %28 = arith.mulf %27, %cst : f64
              memref.store %28, %arg2[%20] : memref<?xf64>
              %29 = arith.addi %11, %c2 : index
              %30 = arith.addi %29, %c-1 : index
              %31 = memref.load %arg3[%30] : memref<?xf64>
              %32 = memref.load %arg3[%29] : memref<?xf64>
              %33 = arith.addf %31, %32 : f64
              %34 = arith.addi %29, %c1 : index
              %35 = memref.load %arg3[%34] : memref<?xf64>
              %36 = arith.addf %33, %35 : f64
              %37 = arith.mulf %36, %cst : f64
              memref.store %37, %arg2[%29] : memref<?xf64>
              %38 = arith.addi %11, %c3 : index
              %39 = arith.addi %38, %c-1 : index
              %40 = memref.load %arg3[%39] : memref<?xf64>
              %41 = memref.load %arg3[%38] : memref<?xf64>
              %42 = arith.addf %40, %41 : f64
              %43 = arith.addi %38, %c1 : index
              %44 = memref.load %arg3[%43] : memref<?xf64>
              %45 = arith.addf %42, %44 : f64
              %46 = arith.mulf %45, %cst : f64
              memref.store %46, %arg2[%38] : memref<?xf64>
              async.yield
            }
            %8 = async.add_to_group %token_0, %6 : !async.token
            %9 = arith.addi %arg8, %c1 : index
            scf.yield %9 : index
          }
          async.await_all %6
          async.yield
        }
        %2 = async.add_to_group %token, %0 : !async.token
        %3 = arith.addi %arg6, %c1 : index
        scf.yield %3 : index
      }
      async.await_all %0
    }
    return
  }
}

