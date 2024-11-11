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
          %6 = arith.addi %arg8, %arg10 : index
          scf.for %arg11 = %c0 to %c6 step %c1 {
            %9 = arith.muli %arg11, %c4 : index
            %10 = memref.load %arg5[%6, %9] : memref<?x25xf64>
            %11 = arith.mulf %10, %arg4 : f64
            memref.store %11, %arg5[%6, %9] : memref<?x25xf64>
            %12 = arith.addi %9, %c1 : index
            %13 = memref.load %arg5[%6, %12] : memref<?x25xf64>
            %14 = arith.mulf %13, %arg4 : f64
            memref.store %14, %arg5[%6, %12] : memref<?x25xf64>
            %15 = arith.addi %9, %c2 : index
            %16 = memref.load %arg5[%6, %15] : memref<?x25xf64>
            %17 = arith.mulf %16, %arg4 : f64
            memref.store %17, %arg5[%6, %15] : memref<?x25xf64>
            %18 = arith.addi %9, %c3 : index
            %19 = memref.load %arg5[%6, %18] : memref<?x25xf64>
            %20 = arith.mulf %19, %arg4 : f64
            memref.store %20, %arg5[%6, %18] : memref<?x25xf64>
          }
          %7 = memref.load %arg5[%6, %c24] : memref<?x25xf64>
          %8 = arith.mulf %7, %arg4 : f64
          memref.store %8, %arg5[%6, %c24] : memref<?x25xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg9, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c20 : !async.group
    %3 = scf.for %arg8 = %c0 to %c20 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg10 = %c0 to %c30 step %c1 {
          scf.for %arg11 = %c0 to %c1 step %c1 {
            %6 = arith.addi %arg8, %arg11 : index
            scf.for %arg12 = %c0 to %c1 step %c1 {
              %7 = arith.addi %arg10, %arg12 : index
              %8 = memref.load %arg6[%6, %7] : memref<?x30xf64>
              %9 = arith.mulf %arg3, %8 : f64
              %10 = memref.load %arg6[%6, %7] : memref<?x30xf64>
              %11 = arith.mulf %arg3, %10 : f64
              %12 = memref.load %arg6[%6, %7] : memref<?x30xf64>
              %13 = arith.mulf %arg3, %12 : f64
              %14 = memref.load %arg6[%6, %7] : memref<?x30xf64>
              %15 = arith.mulf %arg3, %14 : f64
              scf.for %arg13 = %c0 to %c6 step %c1 {
                %22 = arith.muli %arg13, %c4 : index
                %23 = memref.load %arg5[%6, %22] : memref<?x25xf64>
                %24 = memref.load %arg7[%7, %22] : memref<?x25xf64>
                %25 = arith.mulf %9, %24 : f64
                %26 = arith.addf %23, %25 : f64
                memref.store %26, %arg5[%6, %22] : memref<?x25xf64>
                %27 = arith.addi %22, %c1 : index
                %28 = memref.load %arg5[%6, %27] : memref<?x25xf64>
                %29 = memref.load %arg7[%7, %27] : memref<?x25xf64>
                %30 = arith.mulf %11, %29 : f64
                %31 = arith.addf %28, %30 : f64
                memref.store %31, %arg5[%6, %27] : memref<?x25xf64>
                %32 = arith.addi %22, %c2 : index
                %33 = memref.load %arg5[%6, %32] : memref<?x25xf64>
                %34 = memref.load %arg7[%7, %32] : memref<?x25xf64>
                %35 = arith.mulf %13, %34 : f64
                %36 = arith.addf %33, %35 : f64
                memref.store %36, %arg5[%6, %32] : memref<?x25xf64>
                %37 = arith.addi %22, %c3 : index
                %38 = memref.load %arg5[%6, %37] : memref<?x25xf64>
                %39 = memref.load %arg7[%7, %37] : memref<?x25xf64>
                %40 = arith.mulf %15, %39 : f64
                %41 = arith.addf %38, %40 : f64
                memref.store %41, %arg5[%6, %37] : memref<?x25xf64>
              }
              %16 = memref.load %arg5[%6, %c24] : memref<?x25xf64>
              %17 = memref.load %arg6[%6, %7] : memref<?x30xf64>
              %18 = arith.mulf %arg3, %17 : f64
              %19 = memref.load %arg7[%7, %c24] : memref<?x25xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %16, %20 : f64
              memref.store %21, %arg5[%6, %c24] : memref<?x25xf64>
            }
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg9, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

