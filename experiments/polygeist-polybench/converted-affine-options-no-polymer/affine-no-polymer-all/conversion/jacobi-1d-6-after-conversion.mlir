module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c20 = arith.constant 20 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg6 = %c0 to %c20 step %c1 {
          scf.for %arg7 = %c0 to %c7 step %c1 {
            %4 = arith.muli %arg7, %c4 : index
            %5 = arith.addi %4, %c1 : index
            %6 = arith.addi %5, %c-1 : index
            %7 = memref.load %arg2[%6] : memref<?xf64>
            %8 = memref.load %arg2[%5] : memref<?xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = arith.addi %5, %c1 : index
            %11 = memref.load %arg2[%10] : memref<?xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.mulf %12, %cst : f64
            memref.store %13, %arg3[%5] : memref<?xf64>
            %14 = arith.addi %5, %c1 : index
            %15 = arith.addi %14, %c-1 : index
            %16 = memref.load %arg2[%15] : memref<?xf64>
            %17 = memref.load %arg2[%14] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            %19 = arith.addi %14, %c1 : index
            %20 = memref.load %arg2[%19] : memref<?xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.mulf %21, %cst : f64
            memref.store %22, %arg3[%14] : memref<?xf64>
            %23 = arith.addi %5, %c2 : index
            %24 = arith.addi %23, %c-1 : index
            %25 = memref.load %arg2[%24] : memref<?xf64>
            %26 = memref.load %arg2[%23] : memref<?xf64>
            %27 = arith.addf %25, %26 : f64
            %28 = arith.addi %23, %c1 : index
            %29 = memref.load %arg2[%28] : memref<?xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %30, %cst : f64
            memref.store %31, %arg3[%23] : memref<?xf64>
            %32 = arith.addi %5, %c3 : index
            %33 = arith.addi %32, %c-1 : index
            %34 = memref.load %arg2[%33] : memref<?xf64>
            %35 = memref.load %arg2[%32] : memref<?xf64>
            %36 = arith.addf %34, %35 : f64
            %37 = arith.addi %32, %c1 : index
            %38 = memref.load %arg2[%37] : memref<?xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = arith.mulf %39, %cst : f64
            memref.store %40, %arg3[%32] : memref<?xf64>
          }
          scf.for %arg7 = %c0 to %c7 step %c1 {
            %4 = arith.muli %arg7, %c4 : index
            %5 = arith.addi %4, %c1 : index
            %6 = arith.addi %5, %c-1 : index
            %7 = memref.load %arg3[%6] : memref<?xf64>
            %8 = memref.load %arg3[%5] : memref<?xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = arith.addi %5, %c1 : index
            %11 = memref.load %arg3[%10] : memref<?xf64>
            %12 = arith.addf %9, %11 : f64
            %13 = arith.mulf %12, %cst : f64
            memref.store %13, %arg2[%5] : memref<?xf64>
            %14 = arith.addi %5, %c1 : index
            %15 = arith.addi %14, %c-1 : index
            %16 = memref.load %arg3[%15] : memref<?xf64>
            %17 = memref.load %arg3[%14] : memref<?xf64>
            %18 = arith.addf %16, %17 : f64
            %19 = arith.addi %14, %c1 : index
            %20 = memref.load %arg3[%19] : memref<?xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.mulf %21, %cst : f64
            memref.store %22, %arg2[%14] : memref<?xf64>
            %23 = arith.addi %5, %c2 : index
            %24 = arith.addi %23, %c-1 : index
            %25 = memref.load %arg3[%24] : memref<?xf64>
            %26 = memref.load %arg3[%23] : memref<?xf64>
            %27 = arith.addf %25, %26 : f64
            %28 = arith.addi %23, %c1 : index
            %29 = memref.load %arg3[%28] : memref<?xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %30, %cst : f64
            memref.store %31, %arg2[%23] : memref<?xf64>
            %32 = arith.addi %5, %c3 : index
            %33 = arith.addi %32, %c-1 : index
            %34 = memref.load %arg3[%33] : memref<?xf64>
            %35 = memref.load %arg3[%32] : memref<?xf64>
            %36 = arith.addf %34, %35 : f64
            %37 = arith.addi %32, %c1 : index
            %38 = memref.load %arg3[%37] : memref<?xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = arith.mulf %39, %cst : f64
            memref.store %40, %arg2[%32] : memref<?xf64>
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg5, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

