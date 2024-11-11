module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c6 = arith.constant 6 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c20 : !async.group
    %1 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %4 = arith.addi %arg8, %arg10 : index
          scf.for %arg11 = %c0 to %c6 step %c1 {
            %7 = arith.muli %arg11, %c4 : index
            %8 = memref.load %arg5[%4, %7] : memref<?x25xf64>
            %9 = arith.mulf %8, %arg4 : f64
            memref.store %9, %arg5[%4, %7] : memref<?x25xf64>
            %10 = arith.addi %7, %c1 : index
            %11 = memref.load %arg5[%4, %10] : memref<?x25xf64>
            %12 = arith.mulf %11, %arg4 : f64
            memref.store %12, %arg5[%4, %10] : memref<?x25xf64>
            %13 = arith.addi %7, %c2 : index
            %14 = memref.load %arg5[%4, %13] : memref<?x25xf64>
            %15 = arith.mulf %14, %arg4 : f64
            memref.store %15, %arg5[%4, %13] : memref<?x25xf64>
            %16 = arith.addi %7, %c3 : index
            %17 = memref.load %arg5[%4, %16] : memref<?x25xf64>
            %18 = arith.mulf %17, %arg4 : f64
            memref.store %18, %arg5[%4, %16] : memref<?x25xf64>
          }
          %5 = memref.load %arg5[%4, %c24] : memref<?x25xf64>
          %6 = arith.mulf %5, %arg4 : f64
          memref.store %6, %arg5[%4, %c24] : memref<?x25xf64>
          scf.for %arg11 = %c0 to %c30 step %c1 {
            %7 = memref.load %arg6[%4, %arg11] : memref<?x30xf64>
            %8 = arith.mulf %arg3, %7 : f64
            %9 = memref.load %arg6[%4, %arg11] : memref<?x30xf64>
            %10 = arith.mulf %arg3, %9 : f64
            %11 = memref.load %arg6[%4, %arg11] : memref<?x30xf64>
            %12 = arith.mulf %arg3, %11 : f64
            %13 = memref.load %arg6[%4, %arg11] : memref<?x30xf64>
            %14 = arith.mulf %arg3, %13 : f64
            scf.for %arg12 = %c0 to %c6 step %c1 {
              %21 = arith.muli %arg12, %c4 : index
              %22 = memref.load %arg7[%arg11, %21] : memref<?x25xf64>
              %23 = arith.mulf %8, %22 : f64
              %24 = memref.load %arg5[%4, %21] : memref<?x25xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg5[%4, %21] : memref<?x25xf64>
              %26 = arith.addi %21, %c1 : index
              %27 = memref.load %arg7[%arg11, %26] : memref<?x25xf64>
              %28 = arith.mulf %10, %27 : f64
              %29 = memref.load %arg5[%4, %26] : memref<?x25xf64>
              %30 = arith.addf %29, %28 : f64
              memref.store %30, %arg5[%4, %26] : memref<?x25xf64>
              %31 = arith.addi %21, %c2 : index
              %32 = memref.load %arg7[%arg11, %31] : memref<?x25xf64>
              %33 = arith.mulf %12, %32 : f64
              %34 = memref.load %arg5[%4, %31] : memref<?x25xf64>
              %35 = arith.addf %34, %33 : f64
              memref.store %35, %arg5[%4, %31] : memref<?x25xf64>
              %36 = arith.addi %21, %c3 : index
              %37 = memref.load %arg7[%arg11, %36] : memref<?x25xf64>
              %38 = arith.mulf %14, %37 : f64
              %39 = memref.load %arg5[%4, %36] : memref<?x25xf64>
              %40 = arith.addf %39, %38 : f64
              memref.store %40, %arg5[%4, %36] : memref<?x25xf64>
            }
            %15 = memref.load %arg6[%4, %arg11] : memref<?x30xf64>
            %16 = arith.mulf %arg3, %15 : f64
            %17 = memref.load %arg7[%arg11, %c24] : memref<?x25xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = memref.load %arg5[%4, %c24] : memref<?x25xf64>
            %20 = arith.addf %19, %18 : f64
            memref.store %20, %arg5[%4, %c24] : memref<?x25xf64>
          }
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

