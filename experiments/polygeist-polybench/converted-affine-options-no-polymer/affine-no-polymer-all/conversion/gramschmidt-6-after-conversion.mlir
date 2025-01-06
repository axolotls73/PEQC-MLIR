module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c29 = arith.constant 29 : index
    %c-32 = arith.constant -32 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %1 = async.create_group %c1 : !async.group
    %2 = scf.for %arg5 = %c0 to %c1 step %c1 iter_args(%arg6 = %c0) -> (index) {
      %token = async.execute {
        %5 = arith.muli %arg5, %c32 : index
        scf.for %arg7 = %c0 to %c30 step %c1 {
          %6 = arith.addi %5, %arg7 : index
          memref.store %cst, %alloca[] : memref<f64>
          scf.for %arg8 = %c0 to %c5 step %c1 {
            %17 = arith.muli %arg8, %c4 : index
            %18 = memref.load %arg2[%17, %6] : memref<?x30xf64>
            %19 = arith.mulf %18, %18 : f64
            %20 = memref.load %alloca[] : memref<f64>
            %21 = arith.addf %20, %19 : f64
            memref.store %21, %alloca[] : memref<f64>
            %22 = arith.addi %17, %c1 : index
            %23 = memref.load %arg2[%22, %6] : memref<?x30xf64>
            %24 = arith.mulf %23, %23 : f64
            %25 = memref.load %alloca[] : memref<f64>
            %26 = arith.addf %25, %24 : f64
            memref.store %26, %alloca[] : memref<f64>
            %27 = arith.addi %17, %c2 : index
            %28 = memref.load %arg2[%27, %6] : memref<?x30xf64>
            %29 = arith.mulf %28, %28 : f64
            %30 = memref.load %alloca[] : memref<f64>
            %31 = arith.addf %30, %29 : f64
            memref.store %31, %alloca[] : memref<f64>
            %32 = arith.addi %17, %c3 : index
            %33 = memref.load %arg2[%32, %6] : memref<?x30xf64>
            %34 = arith.mulf %33, %33 : f64
            %35 = memref.load %alloca[] : memref<f64>
            %36 = arith.addf %35, %34 : f64
            memref.store %36, %alloca[] : memref<f64>
          }
          %7 = memref.load %alloca[] : memref<f64>
          %8 = math.sqrt %7 : f64
          memref.store %8, %arg3[%6, %6] : memref<?x30xf64>
          %9 = memref.load %arg3[%6, %6] : memref<?x30xf64>
          %10 = memref.load %arg3[%6, %6] : memref<?x30xf64>
          %11 = memref.load %arg3[%6, %6] : memref<?x30xf64>
          %12 = memref.load %arg3[%6, %6] : memref<?x30xf64>
          scf.for %arg8 = %c0 to %c5 step %c1 {
            %17 = arith.muli %arg8, %c4 : index
            %18 = memref.load %arg2[%17, %6] : memref<?x30xf64>
            %19 = arith.divf %18, %9 : f64
            memref.store %19, %arg4[%17, %6] : memref<?x30xf64>
            %20 = arith.addi %17, %c1 : index
            %21 = memref.load %arg2[%20, %6] : memref<?x30xf64>
            %22 = arith.divf %21, %10 : f64
            memref.store %22, %arg4[%20, %6] : memref<?x30xf64>
            %23 = arith.addi %17, %c2 : index
            %24 = memref.load %arg2[%23, %6] : memref<?x30xf64>
            %25 = arith.divf %24, %11 : f64
            memref.store %25, %arg4[%23, %6] : memref<?x30xf64>
            %26 = arith.addi %17, %c3 : index
            %27 = memref.load %arg2[%26, %6] : memref<?x30xf64>
            %28 = arith.divf %27, %12 : f64
            memref.store %28, %arg4[%26, %6] : memref<?x30xf64>
          }
          %13 = arith.muli %arg7, %c-1 : index
          %14 = arith.muli %arg5, %c-32 : index
          %15 = arith.addi %13, %14 : index
          %16 = arith.addi %15, %c29 : index
          scf.for %arg8 = %c0 to %16 step %c1 {
            %17 = arith.addi %6, %arg8 : index
            %18 = arith.addi %17, %c1 : index
            memref.store %cst, %arg3[%6, %18] : memref<?x30xf64>
            scf.for %arg9 = %c0 to %c5 step %c1 {
              %23 = arith.muli %arg9, %c4 : index
              %24 = memref.load %arg4[%23, %6] : memref<?x30xf64>
              %25 = memref.load %arg2[%23, %18] : memref<?x30xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = memref.load %arg3[%6, %18] : memref<?x30xf64>
              %28 = arith.addf %27, %26 : f64
              memref.store %28, %arg3[%6, %18] : memref<?x30xf64>
              %29 = arith.addi %23, %c1 : index
              %30 = memref.load %arg4[%29, %6] : memref<?x30xf64>
              %31 = memref.load %arg2[%29, %18] : memref<?x30xf64>
              %32 = arith.mulf %30, %31 : f64
              %33 = memref.load %arg3[%6, %18] : memref<?x30xf64>
              %34 = arith.addf %33, %32 : f64
              memref.store %34, %arg3[%6, %18] : memref<?x30xf64>
              %35 = arith.addi %23, %c2 : index
              %36 = memref.load %arg4[%35, %6] : memref<?x30xf64>
              %37 = memref.load %arg2[%35, %18] : memref<?x30xf64>
              %38 = arith.mulf %36, %37 : f64
              %39 = memref.load %arg3[%6, %18] : memref<?x30xf64>
              %40 = arith.addf %39, %38 : f64
              memref.store %40, %arg3[%6, %18] : memref<?x30xf64>
              %41 = arith.addi %23, %c3 : index
              %42 = memref.load %arg4[%41, %6] : memref<?x30xf64>
              %43 = memref.load %arg2[%41, %18] : memref<?x30xf64>
              %44 = arith.mulf %42, %43 : f64
              %45 = memref.load %arg3[%6, %18] : memref<?x30xf64>
              %46 = arith.addf %45, %44 : f64
              memref.store %46, %arg3[%6, %18] : memref<?x30xf64>
            }
            %19 = memref.load %arg3[%6, %18] : memref<?x30xf64>
            %20 = memref.load %arg3[%6, %18] : memref<?x30xf64>
            %21 = memref.load %arg3[%6, %18] : memref<?x30xf64>
            %22 = memref.load %arg3[%6, %18] : memref<?x30xf64>
            scf.for %arg9 = %c0 to %c5 step %c1 {
              %23 = arith.muli %arg9, %c4 : index
              %24 = memref.load %arg2[%23, %18] : memref<?x30xf64>
              %25 = memref.load %arg4[%23, %6] : memref<?x30xf64>
              %26 = arith.mulf %25, %19 : f64
              %27 = arith.subf %24, %26 : f64
              memref.store %27, %arg2[%23, %18] : memref<?x30xf64>
              %28 = arith.addi %23, %c1 : index
              %29 = memref.load %arg2[%28, %18] : memref<?x30xf64>
              %30 = memref.load %arg4[%28, %6] : memref<?x30xf64>
              %31 = arith.mulf %30, %20 : f64
              %32 = arith.subf %29, %31 : f64
              memref.store %32, %arg2[%28, %18] : memref<?x30xf64>
              %33 = arith.addi %23, %c2 : index
              %34 = memref.load %arg2[%33, %18] : memref<?x30xf64>
              %35 = memref.load %arg4[%33, %6] : memref<?x30xf64>
              %36 = arith.mulf %35, %21 : f64
              %37 = arith.subf %34, %36 : f64
              memref.store %37, %arg2[%33, %18] : memref<?x30xf64>
              %38 = arith.addi %23, %c3 : index
              %39 = memref.load %arg2[%38, %18] : memref<?x30xf64>
              %40 = memref.load %arg4[%38, %6] : memref<?x30xf64>
              %41 = arith.mulf %40, %22 : f64
              %42 = arith.subf %39, %41 : f64
              memref.store %42, %arg2[%38, %18] : memref<?x30xf64>
            }
          }
        }
        async.yield
      }
      %3 = async.add_to_group %token, %1 : !async.token
      %4 = arith.addi %arg6, %c1 : index
      scf.yield %4 : index
    }
    async.await_all %1
    return
  }
}

