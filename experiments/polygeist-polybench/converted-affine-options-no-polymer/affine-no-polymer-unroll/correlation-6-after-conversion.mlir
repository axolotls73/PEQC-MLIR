module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c27 = arith.constant 27 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c32 step %c4 {
        %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg7] : memref<?xf64>
        %6 = arith.addi %arg8, %c1 : index
        %7 = memref.load %arg3[%6, %arg7] : memref<?x28xf64>
        %8 = memref.load %arg5[%arg7] : memref<?xf64>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %arg5[%arg7] : memref<?xf64>
        %10 = arith.addi %arg8, %c2 : index
        %11 = memref.load %arg3[%10, %arg7] : memref<?x28xf64>
        %12 = memref.load %arg5[%arg7] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        memref.store %13, %arg5[%arg7] : memref<?xf64>
        %14 = arith.addi %arg8, %c3 : index
        %15 = memref.load %arg3[%14, %arg7] : memref<?x28xf64>
        %16 = memref.load %arg5[%arg7] : memref<?xf64>
        %17 = arith.addf %16, %15 : f64
        memref.store %17, %arg5[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg7] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c32 step %c4 {
        %6 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %7 = memref.load %arg5[%arg7] : memref<?xf64>
        %8 = arith.subf %6, %7 : f64
        %9 = arith.mulf %8, %8 : f64
        %10 = memref.load %arg6[%arg7] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        memref.store %11, %arg6[%arg7] : memref<?xf64>
        %12 = arith.addi %arg8, %c1 : index
        %13 = memref.load %arg3[%12, %arg7] : memref<?x28xf64>
        %14 = memref.load %arg5[%arg7] : memref<?xf64>
        %15 = arith.subf %13, %14 : f64
        %16 = arith.mulf %15, %15 : f64
        %17 = memref.load %arg6[%arg7] : memref<?xf64>
        %18 = arith.addf %17, %16 : f64
        memref.store %18, %arg6[%arg7] : memref<?xf64>
        %19 = arith.addi %arg8, %c2 : index
        %20 = memref.load %arg3[%19, %arg7] : memref<?x28xf64>
        %21 = memref.load %arg5[%arg7] : memref<?xf64>
        %22 = arith.subf %20, %21 : f64
        %23 = arith.mulf %22, %22 : f64
        %24 = memref.load %arg6[%arg7] : memref<?xf64>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg6[%arg7] : memref<?xf64>
        %26 = arith.addi %arg8, %c3 : index
        %27 = memref.load %arg3[%26, %arg7] : memref<?x28xf64>
        %28 = memref.load %arg5[%arg7] : memref<?xf64>
        %29 = arith.subf %27, %28 : f64
        %30 = arith.mulf %29, %29 : f64
        %31 = memref.load %arg6[%arg7] : memref<?xf64>
        %32 = arith.addf %31, %30 : f64
        memref.store %32, %arg6[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_1 : f64
      %5 = arith.select %4, %cst, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c4 {
        %1 = memref.load %arg5[%arg8] : memref<?xf64>
        %2 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        memref.store %3, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = memref.load %arg6[%arg8] : memref<?xf64>
        %5 = arith.mulf %0, %4 : f64
        %6 = arith.divf %3, %5 : f64
        memref.store %6, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %7 = arith.addi %arg8, %c1 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = memref.load %arg3[%arg7, %7] : memref<?x28xf64>
        %10 = arith.subf %9, %8 : f64
        memref.store %10, %arg3[%arg7, %7] : memref<?x28xf64>
        %11 = memref.load %arg6[%7] : memref<?xf64>
        %12 = arith.mulf %0, %11 : f64
        %13 = arith.divf %10, %12 : f64
        memref.store %13, %arg3[%arg7, %7] : memref<?x28xf64>
        %14 = arith.addi %arg8, %c2 : index
        %15 = memref.load %arg5[%14] : memref<?xf64>
        %16 = memref.load %arg3[%arg7, %14] : memref<?x28xf64>
        %17 = arith.subf %16, %15 : f64
        memref.store %17, %arg3[%arg7, %14] : memref<?x28xf64>
        %18 = memref.load %arg6[%14] : memref<?xf64>
        %19 = arith.mulf %0, %18 : f64
        %20 = arith.divf %17, %19 : f64
        memref.store %20, %arg3[%arg7, %14] : memref<?x28xf64>
        %21 = arith.addi %arg8, %c3 : index
        %22 = memref.load %arg5[%21] : memref<?xf64>
        %23 = memref.load %arg3[%arg7, %21] : memref<?x28xf64>
        %24 = arith.subf %23, %22 : f64
        memref.store %24, %arg3[%arg7, %21] : memref<?x28xf64>
        %25 = memref.load %arg6[%21] : memref<?xf64>
        %26 = arith.mulf %0, %25 : f64
        %27 = arith.divf %24, %26 : f64
        memref.store %27, %arg3[%arg7, %21] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        scf.for %arg9 = %c0 to %c32 step %c4 {
          %3 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %8 = arith.addi %arg9, %c1 : index
          %9 = memref.load %arg3[%8, %arg7] : memref<?x28xf64>
          %10 = memref.load %arg3[%8, %arg8] : memref<?x28xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %14 = arith.addi %arg9, %c2 : index
          %15 = memref.load %arg3[%14, %arg7] : memref<?x28xf64>
          %16 = memref.load %arg3[%14, %arg8] : memref<?x28xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %19 = arith.addf %18, %17 : f64
          memref.store %19, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %20 = arith.addi %arg9, %c3 : index
          %21 = memref.load %arg3[%20, %arg7] : memref<?x28xf64>
          %22 = memref.load %arg3[%20, %arg8] : memref<?x28xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %25 = arith.addf %24, %23 : f64
          memref.store %25, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

