module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c30 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.parallel (%arg6) = (%c0_0) to (%c1_1) step (%c1_2) {
        %1 = arith.addi %arg5, %arg6 : index
        memref.store %cst, %alloca[] : memref<f64>
        %c0_3 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg7 = %c0_3 to %c5 step %c1_4 {
          %c4 = arith.constant 4 : index
          %12 = arith.muli %arg7, %c4 : index
          %13 = memref.load %arg2[%12, %1] : memref<?x30xf64>
          %14 = arith.mulf %13, %13 : f64
          %15 = memref.load %alloca[] : memref<f64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %alloca[] : memref<f64>
          %c1_11 = arith.constant 1 : index
          %17 = arith.addi %12, %c1_11 : index
          %18 = memref.load %arg2[%17, %1] : memref<?x30xf64>
          %19 = arith.mulf %18, %18 : f64
          %20 = memref.load %alloca[] : memref<f64>
          %21 = arith.addf %20, %19 : f64
          memref.store %21, %alloca[] : memref<f64>
          %c2 = arith.constant 2 : index
          %22 = arith.addi %12, %c2 : index
          %23 = memref.load %arg2[%22, %1] : memref<?x30xf64>
          %24 = arith.mulf %23, %23 : f64
          %25 = memref.load %alloca[] : memref<f64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %27 = arith.addi %12, %c3 : index
          %28 = memref.load %arg2[%27, %1] : memref<?x30xf64>
          %29 = arith.mulf %28, %28 : f64
          %30 = memref.load %alloca[] : memref<f64>
          %31 = arith.addf %30, %29 : f64
          memref.store %31, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        %3 = math.sqrt %2 : f64
        memref.store %3, %arg3[%1, %1] : memref<?x30xf64>
        %4 = memref.load %arg3[%1, %1] : memref<?x30xf64>
        %5 = memref.load %arg3[%1, %1] : memref<?x30xf64>
        %6 = memref.load %arg3[%1, %1] : memref<?x30xf64>
        %7 = memref.load %arg3[%1, %1] : memref<?x30xf64>
        %c0_5 = arith.constant 0 : index
        %c5_6 = arith.constant 5 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c5_6 step %c1_7 {
          %c4 = arith.constant 4 : index
          %12 = arith.muli %arg7, %c4 : index
          %13 = memref.load %arg2[%12, %1] : memref<?x30xf64>
          %14 = arith.divf %13, %4 : f64
          memref.store %14, %arg4[%12, %1] : memref<?x30xf64>
          %c1_11 = arith.constant 1 : index
          %15 = arith.addi %12, %c1_11 : index
          %16 = memref.load %arg2[%15, %1] : memref<?x30xf64>
          %17 = arith.divf %16, %5 : f64
          memref.store %17, %arg4[%15, %1] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %18 = arith.addi %12, %c2 : index
          %19 = memref.load %arg2[%18, %1] : memref<?x30xf64>
          %20 = arith.divf %19, %6 : f64
          memref.store %20, %arg4[%18, %1] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %21 = arith.addi %12, %c3 : index
          %22 = memref.load %arg2[%21, %1] : memref<?x30xf64>
          %23 = arith.divf %22, %7 : f64
          memref.store %23, %arg4[%21, %1] : memref<?x30xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %8 = arith.muli %arg5, %c-1 : index
        %c-1_9 = arith.constant -1 : index
        %9 = arith.muli %arg6, %c-1_9 : index
        %10 = arith.addi %8, %9 : index
        %c29 = arith.constant 29 : index
        %11 = arith.addi %10, %c29 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %11 step %c1_10 {
          %12 = arith.addi %1, %arg7 : index
          %c1_11 = arith.constant 1 : index
          %13 = arith.addi %12, %c1_11 : index
          memref.store %cst, %arg3[%1, %13] : memref<?x30xf64>
          %c0_12 = arith.constant 0 : index
          %c5_13 = arith.constant 5 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg8 = %c0_12 to %c5_13 step %c1_14 {
            %c4 = arith.constant 4 : index
            %18 = arith.muli %arg8, %c4 : index
            %19 = memref.load %arg4[%18, %1] : memref<?x30xf64>
            %20 = memref.load %arg2[%18, %13] : memref<?x30xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = memref.load %arg3[%1, %13] : memref<?x30xf64>
            %23 = arith.addf %22, %21 : f64
            memref.store %23, %arg3[%1, %13] : memref<?x30xf64>
            %c1_18 = arith.constant 1 : index
            %24 = arith.addi %18, %c1_18 : index
            %25 = memref.load %arg4[%24, %1] : memref<?x30xf64>
            %26 = memref.load %arg2[%24, %13] : memref<?x30xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = memref.load %arg3[%1, %13] : memref<?x30xf64>
            %29 = arith.addf %28, %27 : f64
            memref.store %29, %arg3[%1, %13] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %30 = arith.addi %18, %c2 : index
            %31 = memref.load %arg4[%30, %1] : memref<?x30xf64>
            %32 = memref.load %arg2[%30, %13] : memref<?x30xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %arg3[%1, %13] : memref<?x30xf64>
            %35 = arith.addf %34, %33 : f64
            memref.store %35, %arg3[%1, %13] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %36 = arith.addi %18, %c3 : index
            %37 = memref.load %arg4[%36, %1] : memref<?x30xf64>
            %38 = memref.load %arg2[%36, %13] : memref<?x30xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = memref.load %arg3[%1, %13] : memref<?x30xf64>
            %41 = arith.addf %40, %39 : f64
            memref.store %41, %arg3[%1, %13] : memref<?x30xf64>
          }
          %14 = memref.load %arg3[%1, %13] : memref<?x30xf64>
          %15 = memref.load %arg3[%1, %13] : memref<?x30xf64>
          %16 = memref.load %arg3[%1, %13] : memref<?x30xf64>
          %17 = memref.load %arg3[%1, %13] : memref<?x30xf64>
          %c0_15 = arith.constant 0 : index
          %c5_16 = arith.constant 5 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg8 = %c0_15 to %c5_16 step %c1_17 {
            %c4 = arith.constant 4 : index
            %18 = arith.muli %arg8, %c4 : index
            %19 = memref.load %arg2[%18, %13] : memref<?x30xf64>
            %20 = memref.load %arg4[%18, %1] : memref<?x30xf64>
            %21 = arith.mulf %20, %14 : f64
            %22 = arith.subf %19, %21 : f64
            memref.store %22, %arg2[%18, %13] : memref<?x30xf64>
            %c1_18 = arith.constant 1 : index
            %23 = arith.addi %18, %c1_18 : index
            %24 = memref.load %arg2[%23, %13] : memref<?x30xf64>
            %25 = memref.load %arg4[%23, %1] : memref<?x30xf64>
            %26 = arith.mulf %25, %15 : f64
            %27 = arith.subf %24, %26 : f64
            memref.store %27, %arg2[%23, %13] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %28 = arith.addi %18, %c2 : index
            %29 = memref.load %arg2[%28, %13] : memref<?x30xf64>
            %30 = memref.load %arg4[%28, %1] : memref<?x30xf64>
            %31 = arith.mulf %30, %16 : f64
            %32 = arith.subf %29, %31 : f64
            memref.store %32, %arg2[%28, %13] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %33 = arith.addi %18, %c3 : index
            %34 = memref.load %arg2[%33, %13] : memref<?x30xf64>
            %35 = memref.load %arg4[%33, %1] : memref<?x30xf64>
            %36 = arith.mulf %35, %17 : f64
            %37 = arith.subf %34, %36 : f64
            memref.store %37, %arg2[%33, %13] : memref<?x30xf64>
          }
        }
        scf.reduce 
      }
    }
    return
  }
}

