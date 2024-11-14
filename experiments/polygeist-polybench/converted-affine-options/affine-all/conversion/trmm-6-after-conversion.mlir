module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %2 = arith.muli %arg5, %c-1 : index
      %3 = arith.addi %2, %c19 : index
      scf.for %arg6 = %c0 to %3 step %c1 {
        %4 = arith.addi %arg5, %arg6 : index
        %5 = arith.addi %4, %c1 : index
        %6 = async.create_group %c7 : !async.group
        %7 = scf.for %arg7 = %c0 to %c7 step %c1 iter_args(%arg8 = %c0) -> (index) {
          %token = async.execute {
            %12 = arith.muli %arg7, %c4 : index
            %13 = memref.load %arg4[%arg5, %12] : memref<?x30xf64>
            %14 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
            %15 = memref.load %arg4[%5, %12] : memref<?x30xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg4[%arg5, %12] : memref<?x30xf64>
            %18 = arith.addi %12, %c1 : index
            %19 = memref.load %arg4[%arg5, %18] : memref<?x30xf64>
            %20 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
            %21 = memref.load %arg4[%5, %18] : memref<?x30xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %19, %22 : f64
            memref.store %23, %arg4[%arg5, %18] : memref<?x30xf64>
            %24 = arith.addi %12, %c2 : index
            %25 = memref.load %arg4[%arg5, %24] : memref<?x30xf64>
            %26 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
            %27 = memref.load %arg4[%5, %24] : memref<?x30xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %25, %28 : f64
            memref.store %29, %arg4[%arg5, %24] : memref<?x30xf64>
            %30 = arith.addi %12, %c3 : index
            %31 = memref.load %arg4[%arg5, %30] : memref<?x30xf64>
            %32 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
            %33 = memref.load %arg4[%5, %30] : memref<?x30xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = arith.addf %31, %34 : f64
            memref.store %35, %arg4[%arg5, %30] : memref<?x30xf64>
            async.yield
          }
          %10 = async.add_to_group %token, %6 : !async.token
          %11 = arith.addi %arg8, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %6
        %8 = async.create_group %c2 : !async.group
        %9 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
          %token = async.execute {
            %12 = arith.addi %arg7, %c28 : index
            %13 = memref.load %arg4[%arg5, %12] : memref<?x30xf64>
            %14 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
            %15 = memref.load %arg4[%5, %12] : memref<?x30xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg4[%arg5, %12] : memref<?x30xf64>
            async.yield
          }
          %10 = async.add_to_group %token, %8 : !async.token
          %11 = arith.addi %arg8, %c1 : index
          scf.yield %11 : index
        }
        async.await_all %8
      }
    }
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg5, %c32 : index
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %5 = arith.addi %4, %arg7 : index
          scf.for %arg8 = %c0 to %c7 step %c1 {
            %6 = arith.muli %arg8, %c4 : index
            %7 = memref.load %arg4[%5, %6] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            memref.store %8, %arg4[%5, %6] : memref<?x30xf64>
            %9 = arith.addi %6, %c1 : index
            %10 = memref.load %arg4[%5, %9] : memref<?x30xf64>
            %11 = arith.mulf %arg2, %10 : f64
            memref.store %11, %arg4[%5, %9] : memref<?x30xf64>
            %12 = arith.addi %6, %c2 : index
            %13 = memref.load %arg4[%5, %12] : memref<?x30xf64>
            %14 = arith.mulf %arg2, %13 : f64
            memref.store %14, %arg4[%5, %12] : memref<?x30xf64>
            %15 = arith.addi %6, %c3 : index
            %16 = memref.load %arg4[%5, %15] : memref<?x30xf64>
            %17 = arith.mulf %arg2, %16 : f64
            memref.store %17, %arg4[%5, %15] : memref<?x30xf64>
          }
          scf.for %arg8 = %c0 to %c2 step %c1 {
            %6 = arith.addi %arg8, %c28 : index
            %7 = memref.load %arg4[%5, %6] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            memref.store %8, %arg4[%5, %6] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg6, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

