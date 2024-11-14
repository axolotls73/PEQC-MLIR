module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c1 step %c1_0 {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg5, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg6 = %c0_1 to %c30 step %c1_2 {
        %2 = arith.addi %1, %arg6 : index
        memref.store %cst, %alloca[] : memref<f64>
        %c0_3 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg7 = %c0_3 to %c5 step %c1_4 {
          %c4 = arith.constant 4 : index
          %13 = arith.muli %arg7, %c4 : index
          %14 = memref.load %arg2[%13, %2] : memref<?x30xf64>
          %15 = arith.mulf %14, %14 : f64
          %16 = memref.load %alloca[] : memref<f64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %alloca[] : memref<f64>
          %c1_10 = arith.constant 1 : index
          %18 = arith.addi %13, %c1_10 : index
          %19 = memref.load %arg2[%18, %2] : memref<?x30xf64>
          %20 = arith.mulf %19, %19 : f64
          %21 = memref.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloca[] : memref<f64>
          %c2 = arith.constant 2 : index
          %23 = arith.addi %13, %c2 : index
          %24 = memref.load %arg2[%23, %2] : memref<?x30xf64>
          %25 = arith.mulf %24, %24 : f64
          %26 = memref.load %alloca[] : memref<f64>
          %27 = arith.addf %26, %25 : f64
          memref.store %27, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %28 = arith.addi %13, %c3 : index
          %29 = memref.load %arg2[%28, %2] : memref<?x30xf64>
          %30 = arith.mulf %29, %29 : f64
          %31 = memref.load %alloca[] : memref<f64>
          %32 = arith.addf %31, %30 : f64
          memref.store %32, %alloca[] : memref<f64>
        }
        %3 = memref.load %alloca[] : memref<f64>
        %4 = math.sqrt %3 : f64
        memref.store %4, %arg3[%2, %2] : memref<?x30xf64>
        %5 = memref.load %arg3[%2, %2] : memref<?x30xf64>
        %6 = memref.load %arg3[%2, %2] : memref<?x30xf64>
        %7 = memref.load %arg3[%2, %2] : memref<?x30xf64>
        %8 = memref.load %arg3[%2, %2] : memref<?x30xf64>
        %c0_5 = arith.constant 0 : index
        %c5_6 = arith.constant 5 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c5_6 step %c1_7 {
          %c4 = arith.constant 4 : index
          %13 = arith.muli %arg7, %c4 : index
          %14 = memref.load %arg2[%13, %2] : memref<?x30xf64>
          %15 = arith.divf %14, %5 : f64
          memref.store %15, %arg4[%13, %2] : memref<?x30xf64>
          %c1_10 = arith.constant 1 : index
          %16 = arith.addi %13, %c1_10 : index
          %17 = memref.load %arg2[%16, %2] : memref<?x30xf64>
          %18 = arith.divf %17, %6 : f64
          memref.store %18, %arg4[%16, %2] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %19 = arith.addi %13, %c2 : index
          %20 = memref.load %arg2[%19, %2] : memref<?x30xf64>
          %21 = arith.divf %20, %7 : f64
          memref.store %21, %arg4[%19, %2] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %22 = arith.addi %13, %c3 : index
          %23 = memref.load %arg2[%22, %2] : memref<?x30xf64>
          %24 = arith.divf %23, %8 : f64
          memref.store %24, %arg4[%22, %2] : memref<?x30xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %9 = arith.muli %arg6, %c-1 : index
        %c-32 = arith.constant -32 : index
        %10 = arith.muli %arg5, %c-32 : index
        %11 = arith.addi %9, %10 : index
        %c29 = arith.constant 29 : index
        %12 = arith.addi %11, %c29 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %12 step %c1_9 {
          %13 = arith.addi %2, %arg7 : index
          %c1_10 = arith.constant 1 : index
          %14 = arith.addi %13, %c1_10 : index
          memref.store %cst, %arg3[%2, %14] : memref<?x30xf64>
          %c0_11 = arith.constant 0 : index
          %c5_12 = arith.constant 5 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg8 = %c0_11 to %c5_12 step %c1_13 {
            %c4 = arith.constant 4 : index
            %19 = arith.muli %arg8, %c4 : index
            %20 = memref.load %arg4[%19, %2] : memref<?x30xf64>
            %21 = memref.load %arg2[%19, %14] : memref<?x30xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = memref.load %arg3[%2, %14] : memref<?x30xf64>
            %24 = arith.addf %23, %22 : f64
            memref.store %24, %arg3[%2, %14] : memref<?x30xf64>
            %c1_17 = arith.constant 1 : index
            %25 = arith.addi %19, %c1_17 : index
            %26 = memref.load %arg4[%25, %2] : memref<?x30xf64>
            %27 = memref.load %arg2[%25, %14] : memref<?x30xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = memref.load %arg3[%2, %14] : memref<?x30xf64>
            %30 = arith.addf %29, %28 : f64
            memref.store %30, %arg3[%2, %14] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %31 = arith.addi %19, %c2 : index
            %32 = memref.load %arg4[%31, %2] : memref<?x30xf64>
            %33 = memref.load %arg2[%31, %14] : memref<?x30xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg3[%2, %14] : memref<?x30xf64>
            %36 = arith.addf %35, %34 : f64
            memref.store %36, %arg3[%2, %14] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %37 = arith.addi %19, %c3 : index
            %38 = memref.load %arg4[%37, %2] : memref<?x30xf64>
            %39 = memref.load %arg2[%37, %14] : memref<?x30xf64>
            %40 = arith.mulf %38, %39 : f64
            %41 = memref.load %arg3[%2, %14] : memref<?x30xf64>
            %42 = arith.addf %41, %40 : f64
            memref.store %42, %arg3[%2, %14] : memref<?x30xf64>
          }
          %15 = memref.load %arg3[%2, %14] : memref<?x30xf64>
          %16 = memref.load %arg3[%2, %14] : memref<?x30xf64>
          %17 = memref.load %arg3[%2, %14] : memref<?x30xf64>
          %18 = memref.load %arg3[%2, %14] : memref<?x30xf64>
          %c0_14 = arith.constant 0 : index
          %c5_15 = arith.constant 5 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg8 = %c0_14 to %c5_15 step %c1_16 {
            %c4 = arith.constant 4 : index
            %19 = arith.muli %arg8, %c4 : index
            %20 = memref.load %arg2[%19, %14] : memref<?x30xf64>
            %21 = memref.load %arg4[%19, %2] : memref<?x30xf64>
            %22 = arith.mulf %21, %15 : f64
            %23 = arith.subf %20, %22 : f64
            memref.store %23, %arg2[%19, %14] : memref<?x30xf64>
            %c1_17 = arith.constant 1 : index
            %24 = arith.addi %19, %c1_17 : index
            %25 = memref.load %arg2[%24, %14] : memref<?x30xf64>
            %26 = memref.load %arg4[%24, %2] : memref<?x30xf64>
            %27 = arith.mulf %26, %16 : f64
            %28 = arith.subf %25, %27 : f64
            memref.store %28, %arg2[%24, %14] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %29 = arith.addi %19, %c2 : index
            %30 = memref.load %arg2[%29, %14] : memref<?x30xf64>
            %31 = memref.load %arg4[%29, %2] : memref<?x30xf64>
            %32 = arith.mulf %31, %17 : f64
            %33 = arith.subf %30, %32 : f64
            memref.store %33, %arg2[%29, %14] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %34 = arith.addi %19, %c3 : index
            %35 = memref.load %arg2[%34, %14] : memref<?x30xf64>
            %36 = memref.load %arg4[%34, %2] : memref<?x30xf64>
            %37 = arith.mulf %36, %18 : f64
            %38 = arith.subf %35, %37 : f64
            memref.store %38, %arg2[%34, %14] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

