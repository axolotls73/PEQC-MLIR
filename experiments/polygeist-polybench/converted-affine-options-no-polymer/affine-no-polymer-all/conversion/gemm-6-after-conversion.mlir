module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c6 = arith.constant 6 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c20 step %c1 {
          %5 = arith.addi %4, %arg10 : index
          scf.for %arg11 = %c0 to %c6 step %c1 {
            %8 = arith.muli %arg11, %c4 : index
            %9 = memref.load %arg5[%5, %8] : memref<?x25xf64>
            %10 = arith.mulf %9, %arg4 : f64
            memref.store %10, %arg5[%5, %8] : memref<?x25xf64>
            %11 = arith.addi %8, %c1 : index
            %12 = memref.load %arg5[%5, %11] : memref<?x25xf64>
            %13 = arith.mulf %12, %arg4 : f64
            memref.store %13, %arg5[%5, %11] : memref<?x25xf64>
            %14 = arith.addi %8, %c2 : index
            %15 = memref.load %arg5[%5, %14] : memref<?x25xf64>
            %16 = arith.mulf %15, %arg4 : f64
            memref.store %16, %arg5[%5, %14] : memref<?x25xf64>
            %17 = arith.addi %8, %c3 : index
            %18 = memref.load %arg5[%5, %17] : memref<?x25xf64>
            %19 = arith.mulf %18, %arg4 : f64
            memref.store %19, %arg5[%5, %17] : memref<?x25xf64>
          }
          %6 = memref.load %arg5[%5, %c24] : memref<?x25xf64>
          %7 = arith.mulf %6, %arg4 : f64
          memref.store %7, %arg5[%5, %c24] : memref<?x25xf64>
          scf.for %arg11 = %c0 to %c30 step %c1 {
            %8 = memref.load %arg6[%5, %arg11] : memref<?x30xf64>
            %9 = arith.mulf %arg3, %8 : f64
            %10 = memref.load %arg6[%5, %arg11] : memref<?x30xf64>
            %11 = arith.mulf %arg3, %10 : f64
            %12 = memref.load %arg6[%5, %arg11] : memref<?x30xf64>
            %13 = arith.mulf %arg3, %12 : f64
            %14 = memref.load %arg6[%5, %arg11] : memref<?x30xf64>
            %15 = arith.mulf %arg3, %14 : f64
            scf.for %arg12 = %c0 to %c6 step %c1 {
              %22 = arith.muli %arg12, %c4 : index
              %23 = memref.load %arg7[%arg11, %22] : memref<?x25xf64>
              %24 = arith.mulf %9, %23 : f64
              %25 = memref.load %arg5[%5, %22] : memref<?x25xf64>
              %26 = arith.addf %25, %24 : f64
              memref.store %26, %arg5[%5, %22] : memref<?x25xf64>
              %27 = arith.addi %22, %c1 : index
              %28 = memref.load %arg7[%arg11, %27] : memref<?x25xf64>
              %29 = arith.mulf %11, %28 : f64
              %30 = memref.load %arg5[%5, %27] : memref<?x25xf64>
              %31 = arith.addf %30, %29 : f64
              memref.store %31, %arg5[%5, %27] : memref<?x25xf64>
              %32 = arith.addi %22, %c2 : index
              %33 = memref.load %arg7[%arg11, %32] : memref<?x25xf64>
              %34 = arith.mulf %13, %33 : f64
              %35 = memref.load %arg5[%5, %32] : memref<?x25xf64>
              %36 = arith.addf %35, %34 : f64
              memref.store %36, %arg5[%5, %32] : memref<?x25xf64>
              %37 = arith.addi %22, %c3 : index
              %38 = memref.load %arg7[%arg11, %37] : memref<?x25xf64>
              %39 = arith.mulf %15, %38 : f64
              %40 = memref.load %arg5[%5, %37] : memref<?x25xf64>
              %41 = arith.addf %40, %39 : f64
              memref.store %41, %arg5[%5, %37] : memref<?x25xf64>
            }
            %16 = memref.load %arg6[%5, %arg11] : memref<?x30xf64>
            %17 = arith.mulf %arg3, %16 : f64
            %18 = memref.load %arg7[%arg11, %c24] : memref<?x25xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = memref.load %arg5[%5, %c24] : memref<?x25xf64>
            %21 = arith.addf %20, %19 : f64
            memref.store %21, %arg5[%5, %c24] : memref<?x25xf64>
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

