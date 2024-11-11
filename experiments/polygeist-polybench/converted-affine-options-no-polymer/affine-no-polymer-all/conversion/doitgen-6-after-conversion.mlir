module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        %0 = async.create_group %c1 : !async.group
        %1 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
          %token = async.execute {
            %4 = arith.addi %arg6, %arg8 : index
            scf.for %arg10 = %c0 to %c1 step %c1 {
              %5 = arith.addi %arg7, %arg10 : index
              scf.for %arg11 = %c0 to %c12 step %c1 {
                memref.store %cst, %arg5[%arg11] : memref<?xf64>
                scf.for %arg12 = %c0 to %c3 step %c1 {
                  %6 = arith.muli %arg12, %c4 : index
                  %7 = memref.load %arg3[%4, %5, %6] : memref<?x8x12xf64>
                  %8 = memref.load %arg4[%6, %arg11] : memref<?x12xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = memref.load %arg5[%arg11] : memref<?xf64>
                  %11 = arith.addf %10, %9 : f64
                  memref.store %11, %arg5[%arg11] : memref<?xf64>
                  %12 = arith.addi %6, %c1 : index
                  %13 = memref.load %arg3[%4, %5, %12] : memref<?x8x12xf64>
                  %14 = memref.load %arg4[%12, %arg11] : memref<?x12xf64>
                  %15 = arith.mulf %13, %14 : f64
                  %16 = memref.load %arg5[%arg11] : memref<?xf64>
                  %17 = arith.addf %16, %15 : f64
                  memref.store %17, %arg5[%arg11] : memref<?xf64>
                  %18 = arith.addi %6, %c2 : index
                  %19 = memref.load %arg3[%4, %5, %18] : memref<?x8x12xf64>
                  %20 = memref.load %arg4[%18, %arg11] : memref<?x12xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = memref.load %arg5[%arg11] : memref<?xf64>
                  %23 = arith.addf %22, %21 : f64
                  memref.store %23, %arg5[%arg11] : memref<?xf64>
                  %24 = arith.addi %6, %c3 : index
                  %25 = memref.load %arg3[%4, %5, %24] : memref<?x8x12xf64>
                  %26 = memref.load %arg4[%24, %arg11] : memref<?x12xf64>
                  %27 = arith.mulf %25, %26 : f64
                  %28 = memref.load %arg5[%arg11] : memref<?xf64>
                  %29 = arith.addf %28, %27 : f64
                  memref.store %29, %arg5[%arg11] : memref<?xf64>
                }
              }
              scf.for %arg11 = %c0 to %c3 step %c1 {
                %6 = arith.muli %arg11, %c4 : index
                %7 = memref.load %arg5[%6] : memref<?xf64>
                memref.store %7, %arg3[%4, %5, %6] : memref<?x8x12xf64>
                %8 = arith.addi %6, %c1 : index
                %9 = memref.load %arg5[%8] : memref<?xf64>
                memref.store %9, %arg3[%4, %5, %8] : memref<?x8x12xf64>
                %10 = arith.addi %6, %c2 : index
                %11 = memref.load %arg5[%10] : memref<?xf64>
                memref.store %11, %arg3[%4, %5, %10] : memref<?x8x12xf64>
                %12 = arith.addi %6, %c3 : index
                %13 = memref.load %arg5[%12] : memref<?xf64>
                memref.store %13, %arg3[%4, %5, %12] : memref<?x8x12xf64>
              }
            }
            async.yield
          }
          %2 = async.add_to_group %token, %0 : !async.token
          %3 = arith.addi %arg9, %c1 : index
          scf.yield %3 : index
        }
        async.await_all %0
      }
    }
    return
  }
}

