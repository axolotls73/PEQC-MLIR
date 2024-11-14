module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c5 = arith.constant 5 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        %6 = arith.muli %arg6, %c32 : index
        scf.for %arg8 = %c0 to %c30 step %c1 {
          %7 = arith.addi %6, %arg8 : index
          %8 = arith.muli %arg6, %c32 : index
          %9 = arith.addi %arg8, %8 : index
          %10 = arith.addi %9, %c1 : index
          %11 = arith.cmpi slt, %10, %c0 : index
          %12 = arith.subi %c-1, %10 : index
          %13 = arith.select %11, %12, %10 : index
          %14 = arith.divsi %13, %c4 : index
          %15 = arith.subi %c-1, %14 : index
          %16 = arith.select %11, %15, %14 : index
          scf.for %arg9 = %c0 to %16 step %c1 {
            %31 = arith.muli %arg9, %c4 : index
            %32 = memref.load %arg4[%7, %31] : memref<?x30xf64>
            %33 = arith.mulf %32, %arg3 : f64
            memref.store %33, %arg4[%7, %31] : memref<?x30xf64>
            %34 = arith.addi %31, %c1 : index
            %35 = memref.load %arg4[%7, %34] : memref<?x30xf64>
            %36 = arith.mulf %35, %arg3 : f64
            memref.store %36, %arg4[%7, %34] : memref<?x30xf64>
            %37 = arith.addi %31, %c2 : index
            %38 = memref.load %arg4[%7, %37] : memref<?x30xf64>
            %39 = arith.mulf %38, %arg3 : f64
            memref.store %39, %arg4[%7, %37] : memref<?x30xf64>
            %40 = arith.addi %31, %c3 : index
            %41 = memref.load %arg4[%7, %40] : memref<?x30xf64>
            %42 = arith.mulf %41, %arg3 : f64
            memref.store %42, %arg4[%7, %40] : memref<?x30xf64>
          }
          %17 = arith.muli %arg6, %c32 : index
          %18 = arith.addi %arg8, %17 : index
          %19 = arith.muli %arg6, %c32 : index
          %20 = arith.addi %arg8, %19 : index
          %21 = arith.addi %20, %c1 : index
          %22 = arith.cmpi slt, %21, %c0 : index
          %23 = arith.subi %c-1, %21 : index
          %24 = arith.select %22, %23, %21 : index
          %25 = arith.divsi %24, %c4 : index
          %26 = arith.subi %c-1, %25 : index
          %27 = arith.select %22, %26, %25 : index
          %28 = arith.muli %27, %c-4 : index
          %29 = arith.addi %18, %28 : index
          %30 = arith.addi %29, %c1 : index
          scf.for %arg9 = %c0 to %30 step %c1 {
            %31 = arith.addi %7, %c1 : index
            %32 = arith.cmpi slt, %31, %c0 : index
            %33 = arith.subi %c-1, %31 : index
            %34 = arith.select %32, %33, %31 : index
            %35 = arith.divsi %34, %c4 : index
            %36 = arith.subi %c-1, %35 : index
            %37 = arith.select %32, %36, %35 : index
            %38 = arith.muli %37, %c4 : index
            %39 = arith.addi %arg9, %38 : index
            %40 = memref.load %arg4[%7, %39] : memref<?x30xf64>
            %41 = arith.mulf %40, %arg3 : f64
            memref.store %41, %arg4[%7, %39] : memref<?x30xf64>
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

