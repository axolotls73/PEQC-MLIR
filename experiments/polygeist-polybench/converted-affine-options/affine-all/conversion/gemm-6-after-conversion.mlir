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
        %6 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c20 step %c1 {
          %7 = arith.addi %6, %arg10 : index
          scf.for %arg11 = %c0 to %c6 step %c1 {
            %10 = arith.muli %arg11, %c4 : index
            %11 = memref.load %arg5[%7, %10] : memref<?x25xf64>
            %12 = arith.mulf %11, %arg4 : f64
            memref.store %12, %arg5[%7, %10] : memref<?x25xf64>
            %13 = arith.addi %10, %c1 : index
            %14 = memref.load %arg5[%7, %13] : memref<?x25xf64>
            %15 = arith.mulf %14, %arg4 : f64
            memref.store %15, %arg5[%7, %13] : memref<?x25xf64>
            %16 = arith.addi %10, %c2 : index
            %17 = memref.load %arg5[%7, %16] : memref<?x25xf64>
            %18 = arith.mulf %17, %arg4 : f64
            memref.store %18, %arg5[%7, %16] : memref<?x25xf64>
            %19 = arith.addi %10, %c3 : index
            %20 = memref.load %arg5[%7, %19] : memref<?x25xf64>
            %21 = arith.mulf %20, %arg4 : f64
            memref.store %21, %arg5[%7, %19] : memref<?x25xf64>
          }
          %8 = memref.load %arg5[%7, %c24] : memref<?x25xf64>
          %9 = arith.mulf %8, %arg4 : f64
          memref.store %9, %arg5[%7, %c24] : memref<?x25xf64>
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg9, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c1 : !async.group
    %3 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg8, %c32 : index
        scf.for %arg10 = %c0 to %c1 step %c1 {
          %7 = arith.muli %arg10, %c32 : index
          scf.for %arg11 = %c0 to %c20 step %c1 {
            %8 = arith.addi %6, %arg11 : index
            scf.for %arg12 = %c0 to %c30 step %c1 {
              %9 = arith.addi %7, %arg12 : index
              %10 = memref.load %arg6[%8, %9] : memref<?x30xf64>
              %11 = arith.mulf %arg3, %10 : f64
              %12 = memref.load %arg6[%8, %9] : memref<?x30xf64>
              %13 = arith.mulf %arg3, %12 : f64
              %14 = memref.load %arg6[%8, %9] : memref<?x30xf64>
              %15 = arith.mulf %arg3, %14 : f64
              %16 = memref.load %arg6[%8, %9] : memref<?x30xf64>
              %17 = arith.mulf %arg3, %16 : f64
              scf.for %arg13 = %c0 to %c6 step %c1 {
                %24 = arith.muli %arg13, %c4 : index
                %25 = memref.load %arg5[%8, %24] : memref<?x25xf64>
                %26 = memref.load %arg7[%9, %24] : memref<?x25xf64>
                %27 = arith.mulf %11, %26 : f64
                %28 = arith.addf %25, %27 : f64
                memref.store %28, %arg5[%8, %24] : memref<?x25xf64>
                %29 = arith.addi %24, %c1 : index
                %30 = memref.load %arg5[%8, %29] : memref<?x25xf64>
                %31 = memref.load %arg7[%9, %29] : memref<?x25xf64>
                %32 = arith.mulf %13, %31 : f64
                %33 = arith.addf %30, %32 : f64
                memref.store %33, %arg5[%8, %29] : memref<?x25xf64>
                %34 = arith.addi %24, %c2 : index
                %35 = memref.load %arg5[%8, %34] : memref<?x25xf64>
                %36 = memref.load %arg7[%9, %34] : memref<?x25xf64>
                %37 = arith.mulf %15, %36 : f64
                %38 = arith.addf %35, %37 : f64
                memref.store %38, %arg5[%8, %34] : memref<?x25xf64>
                %39 = arith.addi %24, %c3 : index
                %40 = memref.load %arg5[%8, %39] : memref<?x25xf64>
                %41 = memref.load %arg7[%9, %39] : memref<?x25xf64>
                %42 = arith.mulf %17, %41 : f64
                %43 = arith.addf %40, %42 : f64
                memref.store %43, %arg5[%8, %39] : memref<?x25xf64>
              }
              %18 = memref.load %arg5[%8, %c24] : memref<?x25xf64>
              %19 = memref.load %arg6[%8, %9] : memref<?x30xf64>
              %20 = arith.mulf %arg3, %19 : f64
              %21 = memref.load %arg7[%9, %c24] : memref<?x25xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = arith.addf %18, %22 : f64
              memref.store %23, %arg5[%8, %c24] : memref<?x25xf64>
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

