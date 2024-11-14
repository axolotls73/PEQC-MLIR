module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c10 = arith.constant 10 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %4 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %5 = arith.muli %arg8, %c32 : index
          scf.for %arg9 = %c0 to %c10 step %c1 {
            %6 = arith.addi %4, %arg9 : index
            scf.for %arg10 = %c0 to %c8 step %c1 {
              %7 = arith.addi %5, %arg10 : index
              scf.for %arg11 = %c0 to %c12 step %c1 {
                memref.store %cst, %arg5[%arg11] : memref<?xf64>
                scf.for %arg12 = %c0 to %c3 step %c1 {
                  %8 = arith.muli %arg12, %c4 : index
                  %9 = memref.load %arg3[%6, %7, %8] : memref<?x8x12xf64>
                  %10 = memref.load %arg4[%8, %arg11] : memref<?x12xf64>
                  %11 = arith.mulf %9, %10 : f64
                  %12 = memref.load %arg5[%arg11] : memref<?xf64>
                  %13 = arith.addf %12, %11 : f64
                  memref.store %13, %arg5[%arg11] : memref<?xf64>
                  %14 = arith.addi %8, %c1 : index
                  %15 = memref.load %arg3[%6, %7, %14] : memref<?x8x12xf64>
                  %16 = memref.load %arg4[%14, %arg11] : memref<?x12xf64>
                  %17 = arith.mulf %15, %16 : f64
                  %18 = memref.load %arg5[%arg11] : memref<?xf64>
                  %19 = arith.addf %18, %17 : f64
                  memref.store %19, %arg5[%arg11] : memref<?xf64>
                  %20 = arith.addi %8, %c2 : index
                  %21 = memref.load %arg3[%6, %7, %20] : memref<?x8x12xf64>
                  %22 = memref.load %arg4[%20, %arg11] : memref<?x12xf64>
                  %23 = arith.mulf %21, %22 : f64
                  %24 = memref.load %arg5[%arg11] : memref<?xf64>
                  %25 = arith.addf %24, %23 : f64
                  memref.store %25, %arg5[%arg11] : memref<?xf64>
                  %26 = arith.addi %8, %c3 : index
                  %27 = memref.load %arg3[%6, %7, %26] : memref<?x8x12xf64>
                  %28 = memref.load %arg4[%26, %arg11] : memref<?x12xf64>
                  %29 = arith.mulf %27, %28 : f64
                  %30 = memref.load %arg5[%arg11] : memref<?xf64>
                  %31 = arith.addf %30, %29 : f64
                  memref.store %31, %arg5[%arg11] : memref<?xf64>
                }
              }
              scf.for %arg11 = %c0 to %c3 step %c1 {
                %8 = arith.muli %arg11, %c4 : index
                %9 = memref.load %arg5[%8] : memref<?xf64>
                memref.store %9, %arg3[%6, %7, %8] : memref<?x8x12xf64>
                %10 = arith.addi %8, %c1 : index
                %11 = memref.load %arg5[%10] : memref<?xf64>
                memref.store %11, %arg3[%6, %7, %10] : memref<?x8x12xf64>
                %12 = arith.addi %8, %c2 : index
                %13 = memref.load %arg5[%12] : memref<?xf64>
                memref.store %13, %arg3[%6, %7, %12] : memref<?x8x12xf64>
                %14 = arith.addi %8, %c3 : index
                %15 = memref.load %arg5[%14] : memref<?xf64>
                memref.store %15, %arg3[%6, %7, %14] : memref<?x8x12xf64>
              }
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

