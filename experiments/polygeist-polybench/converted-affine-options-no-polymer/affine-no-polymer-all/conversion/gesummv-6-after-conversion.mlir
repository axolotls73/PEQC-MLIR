module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg8 = %c0 to %c30 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %4 = arith.addi %arg8, %arg10 : index
          memref.store %cst, %arg5[%4] : memref<?xf64>
          memref.store %cst, %arg7[%4] : memref<?xf64>
          scf.for %arg11 = %c0 to %c7 step %c1 {
            %10 = arith.muli %arg11, %c4 : index
            %11 = memref.load %arg3[%4, %10] : memref<?x30xf64>
            %12 = memref.load %arg6[%10] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = memref.load %arg5[%4] : memref<?xf64>
            %15 = arith.addf %13, %14 : f64
            memref.store %15, %arg5[%4] : memref<?xf64>
            %16 = memref.load %arg4[%4, %10] : memref<?x30xf64>
            %17 = memref.load %arg6[%10] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = memref.load %arg7[%4] : memref<?xf64>
            %20 = arith.addf %18, %19 : f64
            memref.store %20, %arg7[%4] : memref<?xf64>
            %21 = arith.addi %10, %c1 : index
            %22 = memref.load %arg3[%4, %21] : memref<?x30xf64>
            %23 = memref.load %arg6[%21] : memref<?xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = memref.load %arg5[%4] : memref<?xf64>
            %26 = arith.addf %24, %25 : f64
            memref.store %26, %arg5[%4] : memref<?xf64>
            %27 = memref.load %arg4[%4, %21] : memref<?x30xf64>
            %28 = memref.load %arg6[%21] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg7[%4] : memref<?xf64>
            %31 = arith.addf %29, %30 : f64
            memref.store %31, %arg7[%4] : memref<?xf64>
            %32 = arith.addi %10, %c2 : index
            %33 = memref.load %arg3[%4, %32] : memref<?x30xf64>
            %34 = memref.load %arg6[%32] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg5[%4] : memref<?xf64>
            %37 = arith.addf %35, %36 : f64
            memref.store %37, %arg5[%4] : memref<?xf64>
            %38 = memref.load %arg4[%4, %32] : memref<?x30xf64>
            %39 = memref.load %arg6[%32] : memref<?xf64>
            %40 = arith.mulf %38, %39 : f64
            %41 = memref.load %arg7[%4] : memref<?xf64>
            %42 = arith.addf %40, %41 : f64
            memref.store %42, %arg7[%4] : memref<?xf64>
            %43 = arith.addi %10, %c3 : index
            %44 = memref.load %arg3[%4, %43] : memref<?x30xf64>
            %45 = memref.load %arg6[%43] : memref<?xf64>
            %46 = arith.mulf %44, %45 : f64
            %47 = memref.load %arg5[%4] : memref<?xf64>
            %48 = arith.addf %46, %47 : f64
            memref.store %48, %arg5[%4] : memref<?xf64>
            %49 = memref.load %arg4[%4, %43] : memref<?x30xf64>
            %50 = memref.load %arg6[%43] : memref<?xf64>
            %51 = arith.mulf %49, %50 : f64
            %52 = memref.load %arg7[%4] : memref<?xf64>
            %53 = arith.addf %51, %52 : f64
            memref.store %53, %arg7[%4] : memref<?xf64>
          }
          scf.for %arg11 = %c0 to %c2 step %c1 {
            %10 = arith.addi %arg11, %c28 : index
            %11 = memref.load %arg3[%4, %10] : memref<?x30xf64>
            %12 = memref.load %arg6[%10] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = memref.load %arg5[%4] : memref<?xf64>
            %15 = arith.addf %13, %14 : f64
            memref.store %15, %arg5[%4] : memref<?xf64>
            %16 = memref.load %arg4[%4, %10] : memref<?x30xf64>
            %17 = memref.load %arg6[%10] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = memref.load %arg7[%4] : memref<?xf64>
            %20 = arith.addf %18, %19 : f64
            memref.store %20, %arg7[%4] : memref<?xf64>
          }
          %5 = memref.load %arg5[%4] : memref<?xf64>
          %6 = arith.mulf %arg1, %5 : f64
          %7 = memref.load %arg7[%4] : memref<?xf64>
          %8 = arith.mulf %arg2, %7 : f64
          %9 = arith.addf %6, %8 : f64
          memref.store %9, %arg7[%4] : memref<?xf64>
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

