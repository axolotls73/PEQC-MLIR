module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %5 = arith.addi %4, %arg10 : index
          memref.store %cst, %arg5[%5] : memref<?xf64>
          memref.store %cst, %arg7[%5] : memref<?xf64>
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %11 = arith.muli %arg11, %c4 : index
            %12 = memref.load %arg3[%5, %11] : memref<?x30xf64>
            %13 = memref.load %arg6[%11] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = memref.load %arg5[%5] : memref<?xf64>
            %16 = arith.addf %14, %15 : f64
            memref.store %16, %arg5[%5] : memref<?xf64>
            %17 = memref.load %arg4[%5, %11] : memref<?x30xf64>
            %18 = memref.load %arg6[%11] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = memref.load %arg7[%5] : memref<?xf64>
            %21 = arith.addf %19, %20 : f64
            memref.store %21, %arg7[%5] : memref<?xf64>
            %22 = arith.addi %11, %c1 : index
            %23 = memref.load %arg3[%5, %22] : memref<?x30xf64>
            %24 = memref.load %arg6[%22] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = memref.load %arg5[%5] : memref<?xf64>
            %27 = arith.addf %25, %26 : f64
            memref.store %27, %arg5[%5] : memref<?xf64>
            %28 = memref.load %arg4[%5, %22] : memref<?x30xf64>
            %29 = memref.load %arg6[%22] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %arg7[%5] : memref<?xf64>
            %32 = arith.addf %30, %31 : f64
            memref.store %32, %arg7[%5] : memref<?xf64>
            %33 = arith.addi %11, %c2 : index
            %34 = memref.load %arg3[%5, %33] : memref<?x30xf64>
            %35 = memref.load %arg6[%33] : memref<?xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %arg5[%5] : memref<?xf64>
            %38 = arith.addf %36, %37 : f64
            memref.store %38, %arg5[%5] : memref<?xf64>
            %39 = memref.load %arg4[%5, %33] : memref<?x30xf64>
            %40 = memref.load %arg6[%33] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %arg7[%5] : memref<?xf64>
            %43 = arith.addf %41, %42 : f64
            memref.store %43, %arg7[%5] : memref<?xf64>
            %44 = arith.addi %11, %c3 : index
            %45 = memref.load %arg3[%5, %44] : memref<?x30xf64>
            %46 = memref.load %arg6[%44] : memref<?xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = memref.load %arg5[%5] : memref<?xf64>
            %49 = arith.addf %47, %48 : f64
            memref.store %49, %arg5[%5] : memref<?xf64>
            %50 = memref.load %arg4[%5, %44] : memref<?x30xf64>
            %51 = memref.load %arg6[%44] : memref<?xf64>
            %52 = arith.mulf %50, %51 : f64
            %53 = memref.load %arg7[%5] : memref<?xf64>
            %54 = arith.addf %52, %53 : f64
            memref.store %54, %arg7[%5] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %11 = arith.addi %arg11, %c28 : index
            %12 = memref.load %arg3[%5, %11] : memref<?x30xf64>
            %13 = memref.load %arg6[%11] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = memref.load %arg5[%5] : memref<?xf64>
            %16 = arith.addf %14, %15 : f64
            memref.store %16, %arg5[%5] : memref<?xf64>
            %17 = memref.load %arg4[%5, %11] : memref<?x30xf64>
            %18 = memref.load %arg6[%11] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = memref.load %arg7[%5] : memref<?xf64>
            %21 = arith.addf %19, %20 : f64
            memref.store %21, %arg7[%5] : memref<?xf64>
          }
          %6 = memref.load %arg5[%5] : memref<?xf64>
          %7 = arith.mulf %arg1, %6 : f64
          %8 = memref.load %arg7[%5] : memref<?xf64>
          %9 = arith.mulf %arg2, %8 : f64
          %10 = arith.addf %7, %9 : f64
          memref.store %10, %arg7[%5] : memref<?xf64>
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg9, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

