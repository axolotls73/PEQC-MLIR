module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c29 = arith.constant 29 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c1 = arith.constant 1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c1 {
      %1 = async.create_group %c1 : !async.group
      %2 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
        %token = async.execute {
          %5 = arith.addi %arg5, %arg6 : index
          memref.store %cst, %alloca[] : memref<f64>
          scf.for %arg8 = %c0 to %c5 step %c1 {
            %16 = arith.muli %arg8, %c4 : index
            %17 = memref.load %arg2[%16, %5] : memref<?x30xf64>
            %18 = arith.mulf %17, %17 : f64
            %19 = memref.load %alloca[] : memref<f64>
            %20 = arith.addf %19, %18 : f64
            memref.store %20, %alloca[] : memref<f64>
            %21 = arith.addi %16, %c1 : index
            %22 = memref.load %arg2[%21, %5] : memref<?x30xf64>
            %23 = arith.mulf %22, %22 : f64
            %24 = memref.load %alloca[] : memref<f64>
            %25 = arith.addf %24, %23 : f64
            memref.store %25, %alloca[] : memref<f64>
            %26 = arith.addi %16, %c2 : index
            %27 = memref.load %arg2[%26, %5] : memref<?x30xf64>
            %28 = arith.mulf %27, %27 : f64
            %29 = memref.load %alloca[] : memref<f64>
            %30 = arith.addf %29, %28 : f64
            memref.store %30, %alloca[] : memref<f64>
            %31 = arith.addi %16, %c3 : index
            %32 = memref.load %arg2[%31, %5] : memref<?x30xf64>
            %33 = arith.mulf %32, %32 : f64
            %34 = memref.load %alloca[] : memref<f64>
            %35 = arith.addf %34, %33 : f64
            memref.store %35, %alloca[] : memref<f64>
          }
          %6 = memref.load %alloca[] : memref<f64>
          %7 = math.sqrt %6 : f64
          memref.store %7, %arg3[%5, %5] : memref<?x30xf64>
          %8 = memref.load %arg3[%5, %5] : memref<?x30xf64>
          %9 = memref.load %arg3[%5, %5] : memref<?x30xf64>
          %10 = memref.load %arg3[%5, %5] : memref<?x30xf64>
          %11 = memref.load %arg3[%5, %5] : memref<?x30xf64>
          scf.for %arg8 = %c0 to %c5 step %c1 {
            %16 = arith.muli %arg8, %c4 : index
            %17 = memref.load %arg2[%16, %5] : memref<?x30xf64>
            %18 = arith.divf %17, %8 : f64
            memref.store %18, %arg4[%16, %5] : memref<?x30xf64>
            %19 = arith.addi %16, %c1 : index
            %20 = memref.load %arg2[%19, %5] : memref<?x30xf64>
            %21 = arith.divf %20, %9 : f64
            memref.store %21, %arg4[%19, %5] : memref<?x30xf64>
            %22 = arith.addi %16, %c2 : index
            %23 = memref.load %arg2[%22, %5] : memref<?x30xf64>
            %24 = arith.divf %23, %10 : f64
            memref.store %24, %arg4[%22, %5] : memref<?x30xf64>
            %25 = arith.addi %16, %c3 : index
            %26 = memref.load %arg2[%25, %5] : memref<?x30xf64>
            %27 = arith.divf %26, %11 : f64
            memref.store %27, %arg4[%25, %5] : memref<?x30xf64>
          }
          %12 = arith.muli %arg5, %c-1 : index
          %13 = arith.muli %arg6, %c-1 : index
          %14 = arith.addi %12, %13 : index
          %15 = arith.addi %14, %c29 : index
          scf.for %arg8 = %c0 to %15 step %c1 {
            %16 = arith.addi %5, %arg8 : index
            %17 = arith.addi %16, %c1 : index
            memref.store %cst, %arg3[%5, %17] : memref<?x30xf64>
            scf.for %arg9 = %c0 to %c5 step %c1 {
              %22 = arith.muli %arg9, %c4 : index
              %23 = memref.load %arg4[%22, %5] : memref<?x30xf64>
              %24 = memref.load %arg2[%22, %17] : memref<?x30xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = memref.load %arg3[%5, %17] : memref<?x30xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg3[%5, %17] : memref<?x30xf64>
              %28 = arith.addi %22, %c1 : index
              %29 = memref.load %arg4[%28, %5] : memref<?x30xf64>
              %30 = memref.load %arg2[%28, %17] : memref<?x30xf64>
              %31 = arith.mulf %29, %30 : f64
              %32 = memref.load %arg3[%5, %17] : memref<?x30xf64>
              %33 = arith.addf %32, %31 : f64
              memref.store %33, %arg3[%5, %17] : memref<?x30xf64>
              %34 = arith.addi %22, %c2 : index
              %35 = memref.load %arg4[%34, %5] : memref<?x30xf64>
              %36 = memref.load %arg2[%34, %17] : memref<?x30xf64>
              %37 = arith.mulf %35, %36 : f64
              %38 = memref.load %arg3[%5, %17] : memref<?x30xf64>
              %39 = arith.addf %38, %37 : f64
              memref.store %39, %arg3[%5, %17] : memref<?x30xf64>
              %40 = arith.addi %22, %c3 : index
              %41 = memref.load %arg4[%40, %5] : memref<?x30xf64>
              %42 = memref.load %arg2[%40, %17] : memref<?x30xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %arg3[%5, %17] : memref<?x30xf64>
              %45 = arith.addf %44, %43 : f64
              memref.store %45, %arg3[%5, %17] : memref<?x30xf64>
            }
            %18 = memref.load %arg3[%5, %17] : memref<?x30xf64>
            %19 = memref.load %arg3[%5, %17] : memref<?x30xf64>
            %20 = memref.load %arg3[%5, %17] : memref<?x30xf64>
            %21 = memref.load %arg3[%5, %17] : memref<?x30xf64>
            scf.for %arg9 = %c0 to %c5 step %c1 {
              %22 = arith.muli %arg9, %c4 : index
              %23 = memref.load %arg2[%22, %17] : memref<?x30xf64>
              %24 = memref.load %arg4[%22, %5] : memref<?x30xf64>
              %25 = arith.mulf %24, %18 : f64
              %26 = arith.subf %23, %25 : f64
              memref.store %26, %arg2[%22, %17] : memref<?x30xf64>
              %27 = arith.addi %22, %c1 : index
              %28 = memref.load %arg2[%27, %17] : memref<?x30xf64>
              %29 = memref.load %arg4[%27, %5] : memref<?x30xf64>
              %30 = arith.mulf %29, %19 : f64
              %31 = arith.subf %28, %30 : f64
              memref.store %31, %arg2[%27, %17] : memref<?x30xf64>
              %32 = arith.addi %22, %c2 : index
              %33 = memref.load %arg2[%32, %17] : memref<?x30xf64>
              %34 = memref.load %arg4[%32, %5] : memref<?x30xf64>
              %35 = arith.mulf %34, %20 : f64
              %36 = arith.subf %33, %35 : f64
              memref.store %36, %arg2[%32, %17] : memref<?x30xf64>
              %37 = arith.addi %22, %c3 : index
              %38 = memref.load %arg2[%37, %17] : memref<?x30xf64>
              %39 = memref.load %arg4[%37, %5] : memref<?x30xf64>
              %40 = arith.mulf %39, %21 : f64
              %41 = arith.subf %38, %40 : f64
              memref.store %41, %arg2[%37, %17] : memref<?x30xf64>
            }
          }
          async.yield
        }
        %3 = async.add_to_group %token, %1 : !async.token
        %4 = arith.addi %arg7, %c1 : index
        scf.yield %4 : index
      }
      async.await_all %1
    }
    return
  }
}

