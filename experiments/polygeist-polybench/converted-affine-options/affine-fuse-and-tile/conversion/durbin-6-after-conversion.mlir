module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c39 = arith.constant 39 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %0, %alloca_4[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    memref.store %0, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    scf.for %arg3 = %c0 to %c39 step %c32 {
      %5 = arith.addi %arg3, %c32 : index
      %6 = arith.minsi %5, %c39 : index
      scf.for %arg4 = %arg3 to %6 step %c1 {
        memref.store %cst, %alloca_1[] : memref<f64>
        %7 = memref.load %alloca_1[] : memref<f64>
        %8 = memref.load %arg1[%arg4] : memref<?xf64>
        %9 = memref.load %arg2[%c0] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        %12 = memref.load %alloca_3[] : memref<f64>
        %13 = memref.load %alloca_4[] : memref<f64>
        %14 = arith.mulf %13, %13 : f64
        %15 = arith.subf %12, %14 : f64
        %16 = memref.load %alloca_3[] : memref<f64>
        %17 = arith.mulf %15, %16 : f64
        memref.store %17, %alloca_3[] : memref<f64>
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %24 = memref.load %alloca_1[] : memref<f64>
          %25 = arith.muli %arg5, %c-1 : index
          %26 = arith.addi %arg4, %25 : index
          %27 = arith.addi %26, %c-1 : index
          %28 = memref.load %arg1[%27] : memref<?xf64>
          %29 = arith.addi %arg5, %c1 : index
          %30 = memref.load %arg2[%29] : memref<?xf64>
          %31 = arith.mulf %28, %30 : f64
          %32 = arith.addf %24, %31 : f64
          memref.store %32, %alloca_1[] : memref<f64>
        }
        %18 = arith.cmpi eq, %arg4, %c0 : index
        scf.if %18 {
          %24 = memref.load %arg1[%c1] : memref<?xf64>
          %25 = memref.load %alloca_1[] : memref<f64>
          %26 = arith.addf %24, %25 : f64
          %27 = arith.negf %26 : f64
          %28 = memref.load %alloca_3[] : memref<f64>
          %29 = arith.divf %27, %28 : f64
          memref.store %29, %alloca[%c0] : memref<1xf64>
          %30 = memref.load %arg2[%c0] : memref<?xf64>
          %31 = memref.load %alloca[%c0] : memref<1xf64>
          %32 = memref.load %arg2[%c0] : memref<?xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %30, %33 : f64
          memref.store %34, %alloca_2[%c0] : memref<40xf64>
          %35 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %35, %arg2[%c0] : memref<?xf64>
          %36 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %36, %alloca_5[%c0] : memref<1xf64>
          memref.store %36, %alloca_4[] : memref<f64>
          %37 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %37, %arg2[%c1] : memref<?xf64>
        }
        %19 = arith.addi %arg4, %c-1 : index
        %20 = arith.cmpi sge, %19, %c0 : index
        scf.if %20 {
          %24 = arith.addi %arg4, %c1 : index
          %25 = memref.load %arg1[%24] : memref<?xf64>
          %26 = memref.load %alloca_1[] : memref<f64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.negf %27 : f64
          %29 = memref.load %alloca_3[] : memref<f64>
          %30 = arith.divf %28, %29 : f64
          memref.store %30, %alloca[%c0] : memref<1xf64>
          %31 = memref.load %arg2[%c0] : memref<?xf64>
          %32 = memref.load %alloca[%c0] : memref<1xf64>
          %33 = memref.load %arg2[%arg4] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          memref.store %35, %alloca_2[%c0] : memref<40xf64>
          %36 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %36, %alloca_5[%c0] : memref<1xf64>
          memref.store %36, %alloca_4[] : memref<f64>
          %37 = memref.load %alloca_5[%c0] : memref<1xf64>
          %38 = arith.addi %arg4, %c1 : index
          memref.store %37, %arg2[%38] : memref<?xf64>
        }
        %21 = arith.addi %arg4, %c-1 : index
        scf.for %arg5 = %c0 to %21 step %c1 {
          %24 = arith.addi %arg5, %c1 : index
          %25 = memref.load %arg2[%24] : memref<?xf64>
          %26 = memref.load %alloca[%c0] : memref<1xf64>
          %27 = arith.muli %arg5, %c-1 : index
          %28 = arith.addi %27, %arg4 : index
          %29 = arith.addi %28, %c-1 : index
          %30 = memref.load %arg2[%29] : memref<?xf64>
          %31 = arith.mulf %26, %30 : f64
          %32 = arith.addf %25, %31 : f64
          %33 = arith.addi %arg5, %c1 : index
          memref.store %32, %alloca_2[%33] : memref<40xf64>
        }
        %22 = arith.addi %arg4, %c-1 : index
        %23 = arith.cmpi sge, %22, %c0 : index
        scf.if %23 {
          %24 = memref.load %arg2[%arg4] : memref<?xf64>
          %25 = memref.load %alloca[%c0] : memref<1xf64>
          %26 = memref.load %arg2[%c0] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %alloca_2[%arg4] : memref<40xf64>
          %29 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %29, %arg2[%c0] : memref<?xf64>
        }
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %24 = arith.addi %arg5, %c1 : index
          %25 = memref.load %alloca_2[%24] : memref<40xf64>
          %26 = arith.addi %arg5, %c1 : index
          memref.store %25, %arg2[%26] : memref<?xf64>
        }
      }
    }
    return
  }
}

