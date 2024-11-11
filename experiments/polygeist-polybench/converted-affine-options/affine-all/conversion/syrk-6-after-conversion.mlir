module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c5 = arith.constant 5 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c30 : !async.group
    %1 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %6 = arith.addi %arg6, %arg8 : index
          %7 = arith.addi %arg6, %arg8 : index
          %8 = arith.addi %7, %c1 : index
          %9 = arith.cmpi slt, %8, %c0 : index
          %10 = arith.subi %c-1, %8 : index
          %11 = arith.select %9, %10, %8 : index
          %12 = arith.divsi %11, %c4 : index
          %13 = arith.subi %c-1, %12 : index
          %14 = arith.select %9, %13, %12 : index
          scf.for %arg9 = %c0 to %14 step %c1 {
            %27 = arith.muli %arg9, %c4 : index
            %28 = memref.load %arg4[%6, %27] : memref<?x30xf64>
            %29 = arith.mulf %28, %arg3 : f64
            memref.store %29, %arg4[%6, %27] : memref<?x30xf64>
            %30 = arith.addi %27, %c1 : index
            %31 = memref.load %arg4[%6, %30] : memref<?x30xf64>
            %32 = arith.mulf %31, %arg3 : f64
            memref.store %32, %arg4[%6, %30] : memref<?x30xf64>
            %33 = arith.addi %27, %c2 : index
            %34 = memref.load %arg4[%6, %33] : memref<?x30xf64>
            %35 = arith.mulf %34, %arg3 : f64
            memref.store %35, %arg4[%6, %33] : memref<?x30xf64>
            %36 = arith.addi %27, %c3 : index
            %37 = memref.load %arg4[%6, %36] : memref<?x30xf64>
            %38 = arith.mulf %37, %arg3 : f64
            memref.store %38, %arg4[%6, %36] : memref<?x30xf64>
          }
          %15 = arith.addi %arg6, %arg8 : index
          %16 = arith.addi %arg6, %arg8 : index
          %17 = arith.addi %16, %c1 : index
          %18 = arith.cmpi slt, %17, %c0 : index
          %19 = arith.subi %c-1, %17 : index
          %20 = arith.select %18, %19, %17 : index
          %21 = arith.divsi %20, %c4 : index
          %22 = arith.subi %c-1, %21 : index
          %23 = arith.select %18, %22, %21 : index
          %24 = arith.muli %23, %c-4 : index
          %25 = arith.addi %15, %24 : index
          %26 = arith.addi %25, %c1 : index
          scf.for %arg9 = %c0 to %26 step %c1 {
            %27 = arith.addi %6, %c1 : index
            %28 = arith.cmpi slt, %27, %c0 : index
            %29 = arith.subi %c-1, %27 : index
            %30 = arith.select %28, %29, %27 : index
            %31 = arith.divsi %30, %c4 : index
            %32 = arith.subi %c-1, %31 : index
            %33 = arith.select %28, %32, %31 : index
            %34 = arith.muli %33, %c4 : index
            %35 = arith.addi %arg9, %34 : index
            %36 = memref.load %arg4[%6, %35] : memref<?x30xf64>
            %37 = arith.mulf %36, %arg3 : f64
            memref.store %37, %arg4[%6, %35] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %0 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %0
    %2 = async.create_group %c30 : !async.group
    %3 = scf.for %arg6 = %c0 to %c30 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.addi %arg6, %c1 : index
        scf.for %arg8 = %c0 to %6 step %c1 {
          scf.for %arg9 = %c0 to %c5 step %c1 {
            %7 = arith.muli %arg9, %c4 : index
            %8 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
            %9 = memref.load %arg5[%arg6, %7] : memref<?x20xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %11 = memref.load %arg5[%arg8, %7] : memref<?x20xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg4[%arg6, %arg8] : memref<?x30xf64>
            %14 = arith.addi %7, %c1 : index
            %15 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
            %16 = memref.load %arg5[%arg6, %14] : memref<?x20xf64>
            %17 = arith.mulf %arg2, %16 : f64
            %18 = memref.load %arg5[%arg8, %14] : memref<?x20xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %15, %19 : f64
            memref.store %20, %arg4[%arg6, %arg8] : memref<?x30xf64>
            %21 = arith.addi %7, %c2 : index
            %22 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
            %23 = memref.load %arg5[%arg6, %21] : memref<?x20xf64>
            %24 = arith.mulf %arg2, %23 : f64
            %25 = memref.load %arg5[%arg8, %21] : memref<?x20xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %22, %26 : f64
            memref.store %27, %arg4[%arg6, %arg8] : memref<?x30xf64>
            %28 = arith.addi %7, %c3 : index
            %29 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
            %30 = memref.load %arg5[%arg6, %28] : memref<?x20xf64>
            %31 = arith.mulf %arg2, %30 : f64
            %32 = memref.load %arg5[%arg8, %28] : memref<?x20xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg4[%arg6, %arg8] : memref<?x30xf64>
          }
        }
        async.yield
      }
      %4 = async.add_to_group %token, %2 : !async.token
      %5 = arith.addi %arg7, %c1 : index
      scf.yield %5 : index
    }
    async.await_all %2
    return
  }
}

