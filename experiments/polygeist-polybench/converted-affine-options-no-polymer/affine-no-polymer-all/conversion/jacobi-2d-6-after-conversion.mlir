module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %c20 = arith.constant 20 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg6 = %c0 to %c20 step %c1 {
          scf.for %arg7 = %c0 to %c28 step %c1 {
            %4 = arith.addi %arg7, %c1 : index
            scf.for %arg8 = %c0 to %c7 step %c1 {
              %5 = arith.muli %arg8, %c4 : index
              %6 = arith.addi %5, %c1 : index
              %7 = memref.load %arg2[%4, %6] : memref<?x30xf64>
              %8 = arith.addi %6, %c-1 : index
              %9 = memref.load %arg2[%4, %8] : memref<?x30xf64>
              %10 = arith.addf %7, %9 : f64
              %11 = arith.addi %6, %c1 : index
              %12 = memref.load %arg2[%4, %11] : memref<?x30xf64>
              %13 = arith.addf %10, %12 : f64
              %14 = arith.addi %4, %c1 : index
              %15 = memref.load %arg2[%14, %6] : memref<?x30xf64>
              %16 = arith.addf %13, %15 : f64
              %17 = arith.addi %4, %c-1 : index
              %18 = memref.load %arg2[%17, %6] : memref<?x30xf64>
              %19 = arith.addf %16, %18 : f64
              %20 = arith.mulf %19, %cst : f64
              memref.store %20, %arg3[%4, %6] : memref<?x30xf64>
              %21 = arith.addi %6, %c1 : index
              %22 = memref.load %arg2[%4, %21] : memref<?x30xf64>
              %23 = arith.addi %21, %c-1 : index
              %24 = memref.load %arg2[%4, %23] : memref<?x30xf64>
              %25 = arith.addf %22, %24 : f64
              %26 = arith.addi %21, %c1 : index
              %27 = memref.load %arg2[%4, %26] : memref<?x30xf64>
              %28 = arith.addf %25, %27 : f64
              %29 = arith.addi %4, %c1 : index
              %30 = memref.load %arg2[%29, %21] : memref<?x30xf64>
              %31 = arith.addf %28, %30 : f64
              %32 = arith.addi %4, %c-1 : index
              %33 = memref.load %arg2[%32, %21] : memref<?x30xf64>
              %34 = arith.addf %31, %33 : f64
              %35 = arith.mulf %34, %cst : f64
              memref.store %35, %arg3[%4, %21] : memref<?x30xf64>
              %36 = arith.addi %6, %c2 : index
              %37 = memref.load %arg2[%4, %36] : memref<?x30xf64>
              %38 = arith.addi %36, %c-1 : index
              %39 = memref.load %arg2[%4, %38] : memref<?x30xf64>
              %40 = arith.addf %37, %39 : f64
              %41 = arith.addi %36, %c1 : index
              %42 = memref.load %arg2[%4, %41] : memref<?x30xf64>
              %43 = arith.addf %40, %42 : f64
              %44 = arith.addi %4, %c1 : index
              %45 = memref.load %arg2[%44, %36] : memref<?x30xf64>
              %46 = arith.addf %43, %45 : f64
              %47 = arith.addi %4, %c-1 : index
              %48 = memref.load %arg2[%47, %36] : memref<?x30xf64>
              %49 = arith.addf %46, %48 : f64
              %50 = arith.mulf %49, %cst : f64
              memref.store %50, %arg3[%4, %36] : memref<?x30xf64>
              %51 = arith.addi %6, %c3 : index
              %52 = memref.load %arg2[%4, %51] : memref<?x30xf64>
              %53 = arith.addi %51, %c-1 : index
              %54 = memref.load %arg2[%4, %53] : memref<?x30xf64>
              %55 = arith.addf %52, %54 : f64
              %56 = arith.addi %51, %c1 : index
              %57 = memref.load %arg2[%4, %56] : memref<?x30xf64>
              %58 = arith.addf %55, %57 : f64
              %59 = arith.addi %4, %c1 : index
              %60 = memref.load %arg2[%59, %51] : memref<?x30xf64>
              %61 = arith.addf %58, %60 : f64
              %62 = arith.addi %4, %c-1 : index
              %63 = memref.load %arg2[%62, %51] : memref<?x30xf64>
              %64 = arith.addf %61, %63 : f64
              %65 = arith.mulf %64, %cst : f64
              memref.store %65, %arg3[%4, %51] : memref<?x30xf64>
            }
          }
          scf.for %arg7 = %c0 to %c28 step %c1 {
            %4 = arith.addi %arg7, %c1 : index
            scf.for %arg8 = %c0 to %c7 step %c1 {
              %5 = arith.muli %arg8, %c4 : index
              %6 = arith.addi %5, %c1 : index
              %7 = memref.load %arg3[%4, %6] : memref<?x30xf64>
              %8 = arith.addi %6, %c-1 : index
              %9 = memref.load %arg3[%4, %8] : memref<?x30xf64>
              %10 = arith.addf %7, %9 : f64
              %11 = arith.addi %6, %c1 : index
              %12 = memref.load %arg3[%4, %11] : memref<?x30xf64>
              %13 = arith.addf %10, %12 : f64
              %14 = arith.addi %4, %c1 : index
              %15 = memref.load %arg3[%14, %6] : memref<?x30xf64>
              %16 = arith.addf %13, %15 : f64
              %17 = arith.addi %4, %c-1 : index
              %18 = memref.load %arg3[%17, %6] : memref<?x30xf64>
              %19 = arith.addf %16, %18 : f64
              %20 = arith.mulf %19, %cst : f64
              memref.store %20, %arg2[%4, %6] : memref<?x30xf64>
              %21 = arith.addi %6, %c1 : index
              %22 = memref.load %arg3[%4, %21] : memref<?x30xf64>
              %23 = arith.addi %21, %c-1 : index
              %24 = memref.load %arg3[%4, %23] : memref<?x30xf64>
              %25 = arith.addf %22, %24 : f64
              %26 = arith.addi %21, %c1 : index
              %27 = memref.load %arg3[%4, %26] : memref<?x30xf64>
              %28 = arith.addf %25, %27 : f64
              %29 = arith.addi %4, %c1 : index
              %30 = memref.load %arg3[%29, %21] : memref<?x30xf64>
              %31 = arith.addf %28, %30 : f64
              %32 = arith.addi %4, %c-1 : index
              %33 = memref.load %arg3[%32, %21] : memref<?x30xf64>
              %34 = arith.addf %31, %33 : f64
              %35 = arith.mulf %34, %cst : f64
              memref.store %35, %arg2[%4, %21] : memref<?x30xf64>
              %36 = arith.addi %6, %c2 : index
              %37 = memref.load %arg3[%4, %36] : memref<?x30xf64>
              %38 = arith.addi %36, %c-1 : index
              %39 = memref.load %arg3[%4, %38] : memref<?x30xf64>
              %40 = arith.addf %37, %39 : f64
              %41 = arith.addi %36, %c1 : index
              %42 = memref.load %arg3[%4, %41] : memref<?x30xf64>
              %43 = arith.addf %40, %42 : f64
              %44 = arith.addi %4, %c1 : index
              %45 = memref.load %arg3[%44, %36] : memref<?x30xf64>
              %46 = arith.addf %43, %45 : f64
              %47 = arith.addi %4, %c-1 : index
              %48 = memref.load %arg3[%47, %36] : memref<?x30xf64>
              %49 = arith.addf %46, %48 : f64
              %50 = arith.mulf %49, %cst : f64
              memref.store %50, %arg2[%4, %36] : memref<?x30xf64>
              %51 = arith.addi %6, %c3 : index
              %52 = memref.load %arg3[%4, %51] : memref<?x30xf64>
              %53 = arith.addi %51, %c-1 : index
              %54 = memref.load %arg3[%4, %53] : memref<?x30xf64>
              %55 = arith.addf %52, %54 : f64
              %56 = arith.addi %51, %c1 : index
              %57 = memref.load %arg3[%4, %56] : memref<?x30xf64>
              %58 = arith.addf %55, %57 : f64
              %59 = arith.addi %4, %c1 : index
              %60 = memref.load %arg3[%59, %51] : memref<?x30xf64>
              %61 = arith.addf %58, %60 : f64
              %62 = arith.addi %4, %c-1 : index
              %63 = memref.load %arg3[%62, %51] : memref<?x30xf64>
              %64 = arith.addf %61, %63 : f64
              %65 = arith.mulf %64, %cst : f64
              memref.store %65, %arg2[%4, %51] : memref<?x30xf64>
            }
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

